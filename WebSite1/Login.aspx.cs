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


    bool IsUserExist(string userLogin, string userPassword)//if user is already log in is true
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
    }

   

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

  

    protected void bConfirm_Click(object sender, EventArgs e)
    {
        if (IsUserExist(tbLogin.Text, tbPassword.Text))
        {
            Session["UserLogIn"] = tbLogin.Text;
            Response.Redirect("default.aspx"); 
        }
        else
        {

            lblWrongSignIn.Visible = true;
        }

    }



    protected void tbPassword_TextChanged(object sender, EventArgs e)
    {

    }

    protected void bLogout_Click(object sender, EventArgs e)
    {
      
    }
}
