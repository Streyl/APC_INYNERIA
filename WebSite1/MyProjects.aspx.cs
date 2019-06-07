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
                TreeViewProjects.Nodes.Clear();
                if(db.projects.Any(x => x.creatorID == userID))
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
                else
                {
                    pContent.Visible = false;
                    
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

            cblUsers.Items.Clear();

            foreach (user u in db.users)
            {
                ListItem liUser = new ListItem(u.name_lastname, u.id.ToString());

                if (db.taskAssignments.Any(x => x.userID == u.id && x.taskID == Convert.ToInt32(lbTaskID.Text) && x.active == true))
                {
                    liUser.Selected = true;
                }
                else
                {
                    liUser.Selected = false;
                }
                cblUsers.Items.Add(liUser);
            }
        }
    }

    protected void btProjectSave_Click(object sender, EventArgs e)
    {
        if (lbProjectID.Text != "")
        {
            project p = db.projects.Single(x => x.id == Convert.ToInt32(lbProjectID.Text));

            DateTime dDate;
            DateTime dDate1;
            DateTime dDate2;

            bool validation = true;

            if (DateTime.TryParse(tbProjectCreationDate.Text, out dDate))
            {
                String.Format("{0:d/MM/yyyy}", dDate);
            }
            else { validation = false; }

            if (DateTime.TryParse(tbProjectStartDate.Text, out dDate1))
            {
                String.Format("{0:d/MM/yyyy}", dDate1);
            }
            else { validation = false; }

            if (DateTime.TryParse(tbProjectEndDate.Text, out dDate2))
            {
                String.Format("{0:d/MM/yyyy}", dDate2);
            }
            else { validation = false; }


            if (dDate > dDate1) { validation = false; }
            if (dDate1 > dDate2) { validation = false; }
            if (dDate2 < dDate) { validation = false; }

            if (tbProjectName.Text == null || tbProjectName.Text == "") { validation = false; }
            if (tbProjectStatus.Text == null || tbProjectStatus.Text == "") { validation = false; }
            //if (tbProjectDescription.Text == null) { validation = false; }
            //if (tbProjectRemarks.Text == null) { validation = false; }


            if (validation==true)
            {
                p.name = tbProjectName.Text;
                p.creatorID = Convert.ToInt32(ddProjectCreator.SelectedValue);
                p.creationDate = dDate;
                p.startDate = dDate;
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
                tbProjectStatus.Text = p.status;
            }

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

            bool validation = true;

            if (tbTaskName.Text == null || tbTaskName.Text == "") { validation = false; }
            if (tbTaskStatus.Text == null || tbTaskStatus.Text == "") { validation = false; }

            if(validation==true)
            {
                t.name = tbTaskName.Text;
                t.leaderID = Convert.ToInt32(ddTaskLeader.SelectedValue);
                t.status = tbTaskStatus.Text;
                t.description = tbTaskDescription.Text;

                foreach (ListItem liUser in cblUsers.Items)
                {
                    if(db.taskAssignments.Any(x => x.userID == Convert.ToInt32(liUser.Value) && x.taskID == Convert.ToInt32(lbTaskID.Text)))
                    {
                        taskAssignment tA = db.taskAssignments.First(x => x.userID == Convert.ToInt32(liUser.Value) && x.taskID == Convert.ToInt32(lbTaskID.Text));

                        if (liUser.Selected == true) { tA.active = true; }
                        else { tA.active = false; }

                    }
                    else
                    {
                        bool active;
                        if (liUser.Selected == true) {active = true; }
                        else { active = false; }


                        taskAssignment tA = new taskAssignment
                        {
                            userID = Convert.ToInt32(liUser.Value),
                            taskID = Convert.ToInt32(lbTaskID.Text),
                            active = active
                        };

                        db.taskAssignments.InsertOnSubmit(tA);
                    }


                }

                lbTaskSaveSucces.Text = "Editing was succesful!";

                db.SubmitChanges();
            }
            else
            {
                lbTaskSaveSucces.Text = "Incorrect data!";
                tbTaskStatus.Text = t.status;
                tbTaskDescription.Text = t.description;
            }


        }
        else
        {
            lbTaskSaveSucces.Text = "Incorrect data!";

        }
    }
}