using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AccountsManagementAdmin : System.Web.UI.Page
{
    LinqDataClassesDataContext BaseDB = new LinqDataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

        // GridView3.DataSource = BaseDB.users;//laczenie sie z baza 
        // GridView2.DataBind();
       
    }
    private void load()
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (tbLogin.Text != "")
        {
            if (DropDownList1.SelectedItem.Text == "Login")
            {
                LinqDataSource1.Where = string.Format("login.Contains(\"{0}\") ", tbLogin.Text);
            }

            if (DropDownList1.SelectedItem.Text == "Name")
            {
                LinqDataSource1.Where = string.Format("name.Contains(\"{0}\") ", tbLogin.Text);
            }
            if (DropDownList1.SelectedItem.Text == "Surname")
            {
                LinqDataSource1.Where = string.Format("surname.Contains(\"{0}\") ", tbLogin.Text);
            }

            if (DropDownList1.SelectedItem.Text == "Status")
            {
               
                LinqDataSource1.Where = string.Format("accountStatus.Equals(\"{0}\") ", tbLogin.Text);
            }

            if (DropDownList1.SelectedItem.Text == "Level")
            {
                LinqDataSource1.Where = string.Format("level.Equals(\"{0}\") ", tbLogin.Text);
            }

        }
    }




    
    
}
