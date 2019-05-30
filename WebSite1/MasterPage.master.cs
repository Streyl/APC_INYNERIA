using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserLogIn"] != null)
        {
            
            bUpperMenuLogout.Text = "Logout";
            MainContent.Visible = true;
            NotLogInContent.Visible = false;
            bUpperMenuRegistration.Visible = false;
            pnlLeftMenu.Visible = true;
        }
        else
        {
           bUpperMenuLogout.Text = "Log In";
            MainContent.Visible = false;
            NotLogInContent.Visible = true;
            pnlLeftMenu.Visible = false;
            bUpperMenuAdminManageUsers.Visible = false;
        }
        int ra = 1;
         ra = Convert.ToInt32(Session["Level"]);
        if(ra==0 && Session["UserLogIn"]!=null)
        {
            bUpperMenuAdminManageUsers.Visible = true;
            bUpperMenuAdminProjectManage.Visible = true;

        }
        else
        {
            bUpperMenuAdminManageUsers.Visible = false;
            bUpperMenuAdminProjectManage.Visible = false;
        }
      
    }


    protected void bLogout_Click(object sender, EventArgs e)
    {
        if (Session["UserLogIn"] != null)
        {
            Session["UserLogIn"] = null;
            bUpperMenuLogout.Text = "Log In";
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }

    protected void bRegistration_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Registration.aspx");
    }

    protected void bProjectCreation_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProjectCreation.aspx");
    }

    protected void bMyProjects_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyProjects.aspx");
    }

    protected void bDefault_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void bAdminManageUsers_Click(object sender, EventArgs e)
    {
        Response.Redirect("AccountsManagementAdmin.aspx");
    }
    protected void bAdminManageProject_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminProjectTaskManagement.aspx");
    }

    protected void bDefault_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void bContact_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contact.aspx");
    }
}
