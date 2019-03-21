using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Clear();
        }
        else
        {
            //Clear();
        }
    }
    private void AddNewUser()
    {
        using (LinqDataClassesDataContext objDataContext = new LinqDataClassesDataContext())
        {
            //foreach ()
           // {
                user objUser = new user();
                // fields to be insert
                //objUser.id=+0;
                objUser.name = tbName.Text;
                objUser.surname = tbSurname.Text;
                objUser.login = tbLogin.Text;
                objUser.password = tbPassword.Text;
                objUser.accountStatus = 1;
                objUser.level = 1;
                objDataContext.users.InsertOnSubmit(objUser);
                // executes the commands to implement the changes to the database
                objDataContext.SubmitChanges();
           // }
        };
    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {
        if(tbLogin.Text == "" || tbPassword.Text == "")
        {
            lbErrorMessage.Text = "U have to fill Login and Password columns";
            Clear();
            
        }
        else if (tbPassword.Text != tbConfirmPassword.Text)
        {
            lbErrorMessage.Text = "Passwords does not match";
            Clear();
        }
        else
        {
            AddNewUser();
            Response.Redirect("login.aspx");
        }
    }

    void Clear()
    {
        tbName.Text = tbSurname.Text = tbLogin.Text = tbPassword.Text = tbConfirmPassword.Text = "";
    }
}
//Problems:
//Doesnt adds id right;
//mandatory fields to fill and matched passwords
//