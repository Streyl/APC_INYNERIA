using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    LinqDataClassesDataContext BaseDB = new LinqDataClassesDataContext();
    private bool isLogIn;
    bool isUserExist(string userLogin, string userPassword)//if user is already log in is true
    {
        var q = from p in BaseDB.users
                where p.login == tbLogin.Text
                && p.password == tbPassword.Text
                select p;
        if(q.Any())
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

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void bConfirm_Click(object sender, EventArgs e)
    {
        if(isUserExist(tbLogin.Text,tbPassword.Text))
        {
            isLogIn = true;

            Response.Redirect("default.aspx");
        }
        else
        {
            isLogIn = false;
            lblWrongSignIn.Visible = true;
        }
    }
}