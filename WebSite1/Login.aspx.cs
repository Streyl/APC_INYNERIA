using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    LinqDataClassesDataContext BaseDB = new LinqDataClassesDataContext();
    public static bool isLogIn;

    bool IsUserExist(string userLogin, string userPassword, out user logged)//if user is already log in is true
    {
        bool isLoginExist = false;
        var q = from p in BaseDB.users
                where p.login == tbLogin.Text
                && p.accountStatus == 1 // account is active? Check whats mean number in account status
                select p;
        if (q.Count() == 1)
        {
            isLoginExist = true;
        }
        else
        {
            isLoginExist = false;
        }


        if (tbLogin.Text != "" && tbPassword.Text != "" && isLoginExist==true)
        {
            string savedPasswordHash = BaseDB.users.Where(x => x.login == tbLogin.Text).Select(x => x.password).Single();
            byte[] hashBytes = Convert.FromBase64String(savedPasswordHash);
            PasswordHash hash = new PasswordHash(hashBytes);

            if (hash.Verify(tbPassword.Text))
            {
                logged = BaseDB.users.Where(x => x.login == tbLogin.Text).First();
                return true;
            }
            else
            {
                logged = null;
                return false;
            }
        }
        else
        {
            logged = null;
            return false;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        object o = Session["User"]; 
    }

    protected void bConfirm_Click(object sender, EventArgs e)
    {
        user logged;
        if (IsUserExist(tbLogin.Text, tbPassword.Text, out logged))
        {
            Session["UserLogIn"] = tbLogin.Text;
            Session["User"] = logged;
            Session["Level"] = logged.level;
            Response.Redirect("default.aspx");   
        }
        else
        {
            lblWrongSignIn.Visible = true;
            tbLogin.Text = "";
            tbPassword.Text = "";
        }
    }
}
