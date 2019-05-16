using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminProjectTaskManagement : System.Web.UI.Page
{
    LinqDataClassesDataContext dbb = new LinqDataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
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
               // LinqDataSource1.Where = string.Format("accountStatus.Equals(\"{0}\") ", tbLogin.Text);   
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



    
}

///Problem when deleting task which is connected to subtask 
///same problem when deleting project which has task 