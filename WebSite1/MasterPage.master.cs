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
            
            bLogout.Text = "Logout";
            MainContent.Visible = true;
            NotLogInContent.Visible = false;
            bRegistration.Visible = false;
            pnlLeftMenu.Visible = true;
        }
        else
        {
           bLogout.Text = "Log In";
            MainContent.Visible = false;
            NotLogInContent.Visible = true;
            pnlLeftMenu.Visible = false;
            bAdminManageUsers.Visible = false;
        }
        int ra = 1;
         ra = Convert.ToInt32(Session["Level"]);
        if(ra==0 && Session["UserLogIn"]!=null)
        {
            bAdminManageUsers.Visible = true;
        }
        else
        {
            bAdminManageUsers.Visible = false;
        }
      
    }


    protected void bLogout_Click(object sender, EventArgs e)
    {
        if (Session["UserLogIn"] != null)
        {
            Session["UserLogIn"] = null;
            bLogout.Text = "Log In";
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
}
