using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Clear(0);
        }
    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {
        //==================================



        if (tbLogin.Text == "" || tbPassword.Text == "" || tbName.Text == "" || tbSurname.Text == "" || tbConfirmPassword.Text== "")
        {
            lbErrorMessage.Text = "Your have to fill all fields";
            Clear(0);

        }
        else if(!Regex.IsMatch(tbPassword.Text, "[A-Z]"))
        {
            lbErrorMessage.Text = "Your have to add at least 1 [A-Z] letter";
            Clear(1);
        }
        else if(tbPassword.Text.Length<6 || tbPassword.Text.Length >32)
        {
            lbErrorMessage.Text = "Your Password too short or too long";
            Clear(1);
        }
        else if (tbPassword.Text != tbConfirmPassword.Text)
        {
            lbErrorMessage.Text = "Passwords doesn't match";
            Clear(1);
        }
        else if(tbLogin.Text.Length >16)
        {
            lbErrorMessage.Text = "Login is too long";
            Clear(2);
        }
        else
        {
            LinqDataClassesDataContext db = new LinqDataClassesDataContext();

            user User = new user
            {
                name = tbName.Text,
                surname = tbSurname.Text,
                login = tbLogin.Text,
                password = tbPassword.Text,
                accountStatus = 1,
                level = 1
            };
            db.users.InsertOnSubmit(User);
            db.SubmitChanges();

            Response.Redirect("login.aspx");
        }
    }

    void Clear(int v)
    {
        if(v==0)
        {
            tbName.Text = tbSurname.Text = tbLogin.Text = tbPassword.Text = tbConfirmPassword.Text = "";
        }
        else if(v==1)
        {
            tbPassword.Text = tbConfirmPassword.Text = "";
        }
        else if(v==2)
        {
            tbLogin.Text = "";
        }
        
    }
}
//Problems
//Doesnt adds id right;
