using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminProjectTaskManagement : System.Web.UI.Page
{
    LinqDataClassesDataContext dbb = new LinqDataClassesDataContext();

    private void DeleteProject(int projectID)
    {
        foreach (task t in dbb.tasks.Where(t => t.projectID == projectID))
        {
            foreach (taskAssignment tA in dbb.taskAssignments.Where(tA => tA.taskID == t.id))
            {
                dbb.taskAssignments.DeleteOnSubmit(tA);
            }

            t.parentID = null;
            dbb.tasks.DeleteOnSubmit(t);
        }

        dbb.projects.DeleteOnSubmit(dbb.projects.Where(p => p.id == projectID).First());
        dbb.SubmitChanges();
        GridView1.DataBind();
    }


    private void DeleteTask(int taskID)
    {
        task mainTask = dbb.tasks.Where(t => t.id == taskID).First();
        foreach (taskAssignment tA in dbb.taskAssignments.Where(tA => tA.taskID == mainTask.id))
        {
            dbb.taskAssignments.DeleteOnSubmit(tA);
        }

        foreach (task t in dbb.tasks.Where(t => t.parentID == taskID))
        {
            foreach (taskAssignment tA in dbb.taskAssignments.Where(tA => tA.taskID == t.id))
            {
                dbb.taskAssignments.DeleteOnSubmit(tA);
            }

            t.parentID = null;
            dbb.tasks.DeleteOnSubmit(t);
        }


        dbb.tasks.DeleteOnSubmit(dbb.tasks.Where(t => t.id == taskID).First());
        dbb.SubmitChanges();
        gridviewTask.DataBind();
    }



protected void Page_Load(object sender, EventArgs e)
    {
        //GridView1.Attributes.Add("style", "word-break:break-all; word-wrap:break-word");

        if (!IsPostBack)
        {
            ddlChooseProject.DataTextField = "name_project";
            ddlChooseProject.DataValueField = "id";
            ddlChooseProject.DataSource = dbb.projects;

            
            ddlChooseProject.DataBind();
            
        }
    }

    protected void ChooseFunction_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ChooseFunction.Text == "Project")
        {
            pnlProjectGridView.Visible = true;
            pnlTaskGridView.Visible = false;
        }
        if (ChooseFunction.Text == "Task")
        {
            pnlProjectGridView.Visible = false;
            pnlTaskGridView.Visible = true;
        }
    }

    protected void ddlChoose_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void cbChooseProject_CheckedChanged(object sender, EventArgs e)
    {
        if(cbChooseProject.Checked==true)
        {
            ddlChooseProject.Enabled = true;
        }
        else
        {
            ddlChooseProject.Enabled = false;
        }
    }

    protected void tbSearchProject_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnSearchProject_Click(object sender, EventArgs e)
    {
        if (tbSearchProject.Text != "")
        {
            if (ddlSearchProject.SelectedItem.Text == "Name")
            {
                LinqDataSource1.Where = string.Format("name.Contains(\"{0}\") ", tbSearchProject.Text);
            }
            if(ddlSearchProject.SelectedItem.Text=="Status")
            {
                LinqDataSource1.Where = string.Format("status.Contains(\"{0}\") ", tbSearchProject.Text);
            }
            if(ddlSearchProject.SelectedItem.Text=="CreatorID")
            {
                LinqDataSource1.Where=string.Format("creatorID.Equals(\"{0}\") ", tbSearchProject.Text);
            }
              
        }
    }

    protected void btnSearchTask_Click(object sender, EventArgs e)
    {
        if (tbSearchTask.Text != "" && cbChooseProject.Checked==false)
        {
            if (ddlSearchTask.SelectedItem.Text == "Name")
            {
                LinqDataSource2.Where = string.Format("name.Contains(\"{0}\") ", tbSearchTask.Text);
            }
            if (ddlSearchTask.SelectedItem.Text == "Status")
            {
                LinqDataSource2.Where = string.Format("status.Contains(\"{0}\") ", tbSearchTask.Text);
            }
            if (ddlSearchTask.SelectedItem.Text == "LeaderID")
            {
                LinqDataSource2.Where = string.Format("leaderID.Equals(\"{0}\") ", tbSearchTask.Text);
            }
           
        }
       else  if(cbChooseProject.Checked==true && tbSearchTask.Text =="")
        {
                 LinqDataSource2.Where = string.Format("projectID.Equals(\"{0}\") ", ddlChooseProject.SelectedValue);
        }
        else if (cbChooseProject.Checked == true && tbSearchTask.Text != "")
        {
            if (ddlSearchTask.SelectedItem.Text == "Name")
            {
                LinqDataSource2.Where = string.Format("name.Contains(\"{0}\") && projectID.Equals(\"{1}\") ", tbSearchTask.Text, ddlChooseProject.SelectedValue);
            }
            if (ddlSearchTask.SelectedItem.Text == "Status")
            {
                LinqDataSource2.Where = string.Format("status.Contains(\"{0}\") && projectID.Equals(\"{1}\") ", tbSearchTask.Text, ddlChooseProject.SelectedValue);
            }
            if (ddlSearchTask.SelectedItem.Text == "LeaderID")
            {
                LinqDataSource2.Where = string.Format("leaderID.Equals(\"{0}\") && projectID.Equals(\"{1}\") ", tbSearchTask.Text , ddlChooseProject.SelectedValue);
            }
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
        int projectID = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[2].Text);
        DeleteProject(projectID);
    }

    protected void gridviewTask_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
        int taskID = Convert.ToInt32(gridviewTask.Rows[e.RowIndex].Cells[2].Text);
        DeleteTask(taskID);
    }
}

///Problem when deleting task which is connected to subtask 
///same problem when deleting project which has task 