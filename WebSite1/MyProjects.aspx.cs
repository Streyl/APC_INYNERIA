using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class MyProjects : System.Web.UI.Page
{
    LinqDataClassesDataContext db = new LinqDataClassesDataContext();

    private void TextBoxAutosize(TextBox t)
    {
        int charRows = 0;
        string tbCOntent;
        int chars = 0;
        tbCOntent = t.Text;
        t.Columns = 22;
        chars = tbCOntent.Length;
        charRows = chars / t.Columns;
        int remaining = chars - charRows * t.Columns;
        if (remaining == 0)
        {
            t.Rows = charRows;
            t.TextMode = TextBoxMode.MultiLine;
        }
        else
        {
            t.Rows = charRows + 1;
            t.TextMode = TextBoxMode.MultiLine;
        }
    }

    private void FindSubtasks(TreeNode parentNode, int parentID)
    {
        foreach (task t in db.tasks.Where(t => t.parentID == parentID))
        {
            TreeNode childNode = new TreeNode(t.name) { Value = t.id.ToString() };

            parentNode.ChildNodes.Add(childNode);

            FindSubtasks(childNode, t.id);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserLogIn"] != null)
        {
            var userID = (from u in db.users
                          where u.login == (string)Session["UserLogIn"]
                          select u.id).First();

            if (!IsPostBack)
            {
                foreach (project p in db.projects.Where(p => p.creatorID == userID))
                {
                    TreeNode projectNode = new TreeNode(p.name) { Value = p.id.ToString() };

                    TreeViewProjects.Nodes.Add(projectNode);

                    foreach (task t in db.tasks.Where(t => t.projectID == p.id && t.parentID == null))
                    {
                        TreeNode childNode = new TreeNode(t.name) { Value = t.id.ToString() };

                        projectNode.ChildNodes.Add(childNode);

                        FindSubtasks(childNode, t.id);
                    }
                }
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void TreeViewProjects_SelectedNodeChanged(object sender, EventArgs e)
    {
        int ID = System.Convert.ToInt32(TreeViewProjects.SelectedNode.Value);

        ddProjectCreator.DataSource = db.users;
        ddProjectCreator.DataBind();
        if (TreeViewProjects.SelectedNode.Depth == 0)
        {
            ddProjectCreator.DataSource = db.users;
            ddProjectCreator.DataBind();
            project pr = db.projects.Where(p => p.id == ID).Select(p => p).First();

            user ur = db.users.Where(u => u.id == pr.creatorID).Select(u => u).First();

            tbProjectName.Text = pr.name;
            lbProjectID.Text = pr.id.ToString();

            ddProjectCreator.SelectedValue = ur.id.ToString();

            tbProjectCreationDate.Text = pr.creationDate.ToShortDateString();
            tbProjectStartDate.Text = pr.startDate.ToShortDateString();
            tbProjectEndDate.Text = pr.endDate.ToShortDateString();
            tbProjectStatus.Text = pr.status;
            tbProjectDescription.Text = pr.description;
            tbProjectRemarks.Text = pr.remarks;

            TextBoxAutosize(tbProjectDescription);
            TextBoxAutosize(tbProjectRemarks);
        }
        else if (TreeViewProjects.SelectedNode.Depth != 0)
        {

            ddTaskLeader.DataSource = db.users;
            ddTaskLeader.DataBind();
            task tk = db.tasks.Where(t => t.id == ID).Select(t => t).First();

            user ur = db.users.Where(u => u.id == tk.leaderID).Select(u => u).First();

            tbTaskName.Text = tk.name;
            lbTaskID.Text = tk.id.ToString();

            ddTaskLeader.SelectedValue = ur.id.ToString();

            tbTaskStatus.Text = tk.status;
            tbTaskDescription.Text = tk.description;

            TextBoxAutosize(tbTaskDescription);
        }
    }

    protected void btProjectSave_Click(object sender, EventArgs e)
    {
        if (lbProjectID.Text != "")
        {
            project p = db.projects.Single(x => x.id == Convert.ToInt32(lbProjectID.Text));

            p.name = tbProjectName.Text;

            p.creatorID = Convert.ToInt32(ddProjectCreator.SelectedValue);

            DateTime dDate;

            if (DateTime.TryParse(tbProjectCreationDate.Text, out dDate))
            {
                String.Format("{0:d/MM/yyyy}", dDate);
            }
            else { /*exception code*/ }

            p.creationDate = dDate;

            if (DateTime.TryParse(tbProjectStartDate.Text, out dDate))
            {
                String.Format("{0:d/MM/yyyy}", dDate);
            }
            else { /*exception code*/ }

            p.startDate = dDate;

            if (DateTime.TryParse(tbProjectEndDate.Text, out dDate))
            {
                String.Format("{0:d/MM/yyyy}", dDate);
            }
            else { /*exception code*/ }

            p.endDate = dDate;

            p.status = tbProjectStatus.Text;
            p.description = tbProjectDescription.Text;
            p.remarks = tbProjectRemarks.Text;

            lbProjectSaveSucces.Text = "Editing was succesful!";

            db.SubmitChanges();
        }
        else
        {
            lbProjectSaveSucces.Text = "Incorrect data!";
        }
    }

    protected void btTaskSave_Click(object sender, EventArgs e)
    {
        if (lbTaskID.Text != "")
        {
            task t = db.tasks.Single(x => x.id == Convert.ToInt32(lbTaskID.Text));
            t.name = tbTaskName.Text;
            t.leaderID = Convert.ToInt32(ddTaskLeader.SelectedValue);
            t.status = tbTaskStatus.Text;
            t.description = tbTaskDescription.Text;

            lbTaskSaveSucces.Text = "Editing was succesful!";

            db.SubmitChanges();
        }
        else
        {
            lbTaskSaveSucces.Text = "Incorrect data!";
        }
    }
}