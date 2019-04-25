using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserConfiguration : System.Web.UI.Page
{
    LinqDataClassesDataContext BaseDB = new LinqDataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        tbChangeName.Text = (Session["User"] as user).name;//BaseDB.[user].[name].Text;
        tbChangeSirname.Text = (Session["User"] as user).surname;
        tbChangeLogin.Text = (Session["User"] as user).login;
        tbChangePassword.Text = (Session["User"] as user).password;
    }

    protected void bSubmitChange_Click(object sender, EventArgs e)
    {
        //user User = new user
        //{
        //    name = tbChangeName.Text,
        //    sirname = tbChangeSirname.Text,
        //    login = tbChangeLogin.Text,
        //    password = tbChangePassword.Text,
        //};
        //BaseDB.users.InsertOnSubmit(User);
        BaseDB.SubmitChanges();
    }
}