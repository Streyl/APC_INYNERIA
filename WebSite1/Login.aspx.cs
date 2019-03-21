using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{


    LinqDataClassesDataContext BaseDB = new LinqDataClassesDataContext();
    public static bool isLogIn;
    bool isUserExist(string userLogin, string userPassword)//if user is already log in is true
    {
        var q = from p in BaseDB.users
                where p.login == tbLogin.Text
                && p.password == tbPassword.Text
                && p.accountStatus == 1 // account is active? Check whats mean number in account status
                select p;
        if (q.Any())
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (isLogIn)
        {
            pnlLogIn.Visible = false;
            bLogout.Text = "Logout";
        }
        else
        {
            pnlLogIn.Visible = true;
            bLogout.Text = "Not Log In";
        }
    }

   

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

  

    protected void bConfirm_Click(object sender, EventArgs e)
    {
        if (isUserExist(tbLogin.Text, tbPassword.Text))
        {
            isLogIn = true;

            //Response.Redirect("default.aspx"); //change only for see how Login.aspx page look when someone is sign in now 
        }
        else
        {
            isLogIn = false;
            lblWrongSignIn.Visible = true;
        }
        //If User is log in he dosnt see Panel to LogIn 
        if (isLogIn)
        {
            pnlLogIn.Visible = false;
            bLogout.Text = "Logout";
        }
        else
        {
            pnlLogIn.Visible = true;
            bLogout.Text = "Not Log In";
        }
    }



    protected void tbPassword_TextChanged(object sender, EventArgs e)
    {

    }

    protected void bLogout_Click(object sender, EventArgs e)
    {
        if (isLogIn)
        {
            isLogIn = false;
        }
    }
}
