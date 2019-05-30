﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{


    LinqDataClassesDataContext BaseDB = new LinqDataClassesDataContext();
    public static bool isLogIn;

    bool IsUserExist(string userLogin, string userPassword, out user logged)//if user is already log in is true
    {
        
        var q = from p in BaseDB.users
                where p.login == tbLogin.Text
                && p.password == tbPassword.Text
                && p.accountStatus == 1 // account is active? Check whats mean number in account status
                select p;
        if (q.Count() == 1)
        {
            logged = q.First();
            return true;
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
        }

    }

    

}
