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
    //string connectionString = @"D:\Учись\Inzyneria opragromowania\APC_INYNERIA-master (1)\APC_INYNERIA-master\WebSite1\App_Data\DB.mdf";


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void AddNewUser()
    {
        using (LinqDataClassesDataContext objDataContext = new LinqDataClassesDataContext())
        {
            user objUser = new user();
            // fields to be insert
            //objUser.id++;
            objUser.name = tbName.Text;
            objUser.surname = tbSurname.Text;
            objUser.login = tbLogin.Text;
            objUser.password = tbPassword.Text;
            objUser.accountStatus = 1;
            objUser.level = 1;
            objDataContext.users.InsertOnSubmit(objUser);
            // executes the commands to implement the changes to the database
            objDataContext.SubmitChanges();
        };
    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {
        if (tbLogin.Text == "" || tbPassword.Text == "")
            lbErrorMessage.Text = "U have to fill this";
        else if (tbPassword.Text != tbConfirmPassword.Text)
            lbErrorMessage.Text = "Passwords do not match";
        else
        {
            //using (SqlConnection sqlCon = new SqlConnection(connectionString))
            //{
            //    sqlCon.Open();
            //    SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlCon);
            //    sqlCmd.CommandType = CommandType.StoredProcedure;
            //    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(hfid.Value == "" ? "0" : hfid.Value));
            //    sqlCmd.Parameters.AddWithValue("@name", tbName.Text.Trim());
            //    sqlCmd.Parameters.AddWithValue("@surname", tbSurname.Text.Trim());
            //    sqlCmd.Parameters.AddWithValue("@login", tbLogin.Text.Trim());
            //    sqlCmd.Parameters.AddWithValue("@password", tbPassword.Text.Trim());
            //    sqlCmd.ExecuteNonQuery();
            AddNewUser();
        }
        Response.Redirect("default.aspx");
    }
}
