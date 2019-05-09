using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MyProjects : System.Web.UI.Page
{
    LinqDataClassesDataContext db = new LinqDataClassesDataContext();

    private void FindSubtasks(TreeNode parentNode, int parentID)
    {
        if(db.tasks.Any(t => t.parentID == parentID))
        {

        }
        else
        {
            foreach (task t in db.tasks.Where(t => t.parentID == parentID))
            {
                TreeNode childNode = new TreeNode(t.name) { Value = t.id.ToString() };
                parentNode.ChildNodes.Add(childNode);

                FindSubtasks(childNode, t.id);
            }
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        var userID = (from u in db.users
                      where u.login == (string)Session["UserLogIn"]
                      select u.id).First();

        TreeViewProjects.Nodes.Clear();

        foreach(project p in db.projects.Where(p => p.creatorID == userID))
        {
            TreeNode projectNode = new TreeNode(p.name) { Value = p.id.ToString() };
            TreeViewProjects.Nodes.Add(projectNode);

            foreach (task t in db.tasks.Where(t => t.projectID == p.id && t.parentID == null))
            {
                TreeNode childNode = new TreeNode(t.name) { Value = t.id.ToString() };
                projectNode.ChildNodes.Add(childNode);

                FindSubtasks(childNode, t.id);
            }


            //foreach(task t in db.tasks)
            //{
            //    if(t.projectID == p.id)
            //    {
            //        TreeNode task = new TreeNode(t.name) { Value = t.id.ToString() };
            //        projectNode.ChildNodes.Add(task);
            //    }
            //}
        }



        //var userProjects = from p in db.projects select p.name;
        //lbUserProjects.DataValueField = "name";
        //lbUserProjects.DataSource = db.projects;
        //lbUserProjects.DataBind();
    }

    protected void TreeViewProjects_SelectedNodeChanged(object sender, EventArgs e)
    {
        int projectID = System.Convert.ToInt32(TreeViewProjects.SelectedNode.Value);


        //project pr = from projects in db
        //        where p.id == projectID
        //        select p;

        project pr = db.projects.Where(p => p.id == projectID).Select(p => p).First();


        lbProjectName.Text = pr.name;
        lbProjectCreator.Text = pr.creatorID.ToString();
        lbCreationDate.Text = pr.creationDate.ToString();
        lbStartDate.Text = pr.startDate.ToString();
        lbEndDate.Text = pr.endDate.ToString();
        lbStatus.Text = pr.status;
        lbDescription.Text = pr.description;
        lbRemarks.Text = pr.remarks;
       
    }
}