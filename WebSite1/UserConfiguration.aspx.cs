using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserConfiguration : System.Web.UI.Page
{
    LinqDataClassesDataContext BaseDB = new LinqDataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbChangeName.Text = (Session["User"] as user).name;
            tbChangeSirname.Text = (Session["User"] as user).surname;
            lbErrorMessageUP.Visible = false;
            lbErrorMessageDown.Visible = false;

        }
    }

    protected void bSubmitChange_Click(object sender, EventArgs e)
    {
        if(tbOldPassword.Text!= (Session["User"] as user).password)
        {
            lbErrorMessageDown.Visible = true;
            lbErrorMessageDown.ForeColor = System.Drawing.Color.Red;

            lbErrorMessageDown.Text = "Wrong Old Password";
        }
        else
        {
            if(Regex.IsMatch(tbNewPassword.Text, "[A-Z]"))
            {
                if(tbNewPassword.Text.Length < 6 || tbNewPassword.Text.Length > 32)
                {
                    lbErrorMessageDown.Visible = true;
                    lbErrorMessageDown.ForeColor = System.Drawing.Color.Red;

                    lbErrorMessageDown.Text = "New password is to short or to long";
                }
                else
                {
                    if(tbNewPassword.Text!=tbConfirmPassword.Text)
                    {
                        lbErrorMessageDown.Visible = true;
                        lbErrorMessageDown.ForeColor = System.Drawing.Color.Red;

                        lbErrorMessageDown.Text = "New password doesn't match conformation";
                    }
                    else
                    {
                        user uu = BaseDB.users.Single(u => u.id == (Session["User"] as user).id);
                        uu.password = tbConfirmPassword.Text;
                        lbErrorMessageDown.Visible = true;
                        lbErrorMessageDown.ForeColor = System.Drawing.Color.Green;
                        lbErrorMessageDown.Text = "Done";
                        BaseDB.SubmitChanges();
                        Session["User"] = uu;
                    }
                }

            }
            else
            {
                lbErrorMessageDown.Visible = true;
                lbErrorMessageDown.ForeColor = System.Drawing.Color.Red;
                lbErrorMessageDown.Text = "You should add at least 1 capital letter";
            }
        }
        
    }

    protected void bSubmitNameSirname_Click(object sender, EventArgs e)
    {
        if (tbChangeName.Text == "")
        {
            tbChangeName.Text = (Session["User"] as user).name;
            lbErrorMessageUP.Visible = true;
            lbErrorMessageUP.ForeColor = System.Drawing.Color.Red;
            lbErrorMessageUP.Text = "Problem with you'r Name, please Change it and try again.";
        }
        else if (tbChangeSirname.Text == "")
        {
            tbChangeSirname.Text = (Session["User"] as user).surname;
            lbErrorMessageUP.Visible = true;
            lbErrorMessageUP.ForeColor = System.Drawing.Color.Red;
            lbErrorMessageUP.Text = "Problem with you'r Sirname, please Change it and try again.";
        }
        else if(tbChangeName.Text == "" || tbChangeSirname.Text == "")
        {
            tbChangeName.Text = (Session["User"] as user).name;
            tbChangeSirname.Text = (Session["User"] as user).surname;
            lbErrorMessageUP.Visible = true;
            lbErrorMessageUP.ForeColor = System.Drawing.Color.Red;
            lbErrorMessageUP.Text = "Problem with you'r Name or Sirname, please Change it and try again.";
        }
        else
        {
                user uu = BaseDB.users.Single(u => u.id == (Session["User"] as user).id);

                uu.name = tbChangeName.Text;
                uu.surname = tbChangeSirname.Text;
                lbErrorMessageUP.Visible = true;
                lbErrorMessageUP.ForeColor = System.Drawing.Color.Green;
                lbErrorMessageUP.Text = "Done";

                 BaseDB.SubmitChanges();

                Session["User"] = uu;
        }

    }
}