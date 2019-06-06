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
            tbChangeSurname.Text = (Session["User"] as user).surname;
            lbErrorMessageUP.Visible = false;
            lbErrorMessageDown.Visible = false;

        }
    }

    protected void bSubmitChange_Click(object sender, EventArgs e)
    {
        string savedPasswordHash = BaseDB.users.Where(x => x.login == (Session["User"] as user).login).Select(x => x.password).Single();
        byte[] hashBytes = Convert.FromBase64String(savedPasswordHash);
        PasswordHash hash = new PasswordHash(hashBytes);


        if (hash.Verify(tbOldPassword.Text) != true)
        {
            lbErrorMessageDown.Visible = true;
            lbErrorMessageDown.ForeColor = System.Drawing.Color.Red;

            lbErrorMessageDown.Text = "Wrong Old Password";
        }
        else
        {
            if (Regex.IsMatch(tbNewPassword.Text, "[A-Z]"))
            {
                if (tbNewPassword.Text.Length < 6 || tbNewPassword.Text.Length > 32)
                {
                    lbErrorMessageDown.Visible = true;
                    lbErrorMessageDown.ForeColor = System.Drawing.Color.Red;

                    lbErrorMessageDown.Text = "New password is to short or to long";
                }
                else
                {
                    if (tbNewPassword.Text != tbConfirmPassword.Text)
                    {
                        lbErrorMessageDown.Visible = true;
                        lbErrorMessageDown.ForeColor = System.Drawing.Color.Red;

                        lbErrorMessageDown.Text = "New passwords don't match";
                    }
                    else
                    {
                        PasswordHash hash_new = new PasswordHash(tbNewPassword.Text);
                        byte[] hashBytes_new = hash_new.ToArray();
                        string password_new = Convert.ToBase64String(hashBytes_new);

                        user uu = BaseDB.users.Single(u => u.id == (Session["User"] as user).id);
                        uu.password = password_new;

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
        if (tbChangeName.Text == "" || tbChangeName.Text.Length > 50)
        {
            tbChangeName.Text = (Session["User"] as user).name;
            tbChangeSurname.Text = (Session["User"] as user).surname;
            lbErrorMessageUP.Visible = true;
            lbErrorMessageUP.ForeColor = System.Drawing.Color.Red;
            lbErrorMessageUP.Text = "Problem with your name, please change it and try again. MAX 50 charachters";
        }
        else if (tbChangeSurname.Text == "" || tbChangeSurname.Text.Length > 50)
        {
            tbChangeName.Text = (Session["User"] as user).name;
            tbChangeSurname.Text = (Session["User"] as user).surname;
            lbErrorMessageUP.Visible = true;
            lbErrorMessageUP.ForeColor = System.Drawing.Color.Red;
            lbErrorMessageUP.Text = "Problem with your surname, please change it and try again. MAX 50 charachters";
        }
        else if (tbChangeName.Text == "" && tbChangeSurname.Text == "")
        {
            tbChangeName.Text = (Session["User"] as user).name;
            tbChangeSurname.Text = (Session["User"] as user).surname;
            lbErrorMessageUP.Visible = true;
            lbErrorMessageUP.ForeColor = System.Drawing.Color.Red;
            lbErrorMessageUP.Text = "Problem with your name or surname, please change it and try again.";
        }
        else
        {
            user uu = BaseDB.users.Single(u => u.id == (Session["User"] as user).id);

            uu.name = tbChangeName.Text;
            uu.surname = tbChangeSurname.Text;
            lbErrorMessageUP.Visible = true;
            lbErrorMessageUP.ForeColor = System.Drawing.Color.Green;
            lbErrorMessageUP.Text = "Done";

            BaseDB.SubmitChanges();

            Session["User"] = uu;
        }

    }
}