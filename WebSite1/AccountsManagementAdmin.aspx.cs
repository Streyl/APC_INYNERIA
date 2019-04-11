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
        if (DropDownList1.SelectedItem.Text == "Login")
        {
            GridView3.DataBind();
    
        }

        if (DropDownList1.SelectedItem.Text == "Name")
        {
            GridView3.DataSourceID = tbLogin.Text;
            GridView3.DataBind();
        }
        if (DropDownList1.SelectedItem.Text == "Surname")
        {
            GridView3.DataSource = BaseDB.users.Where(u => u.surname.StartsWith(tbLogin.Text));
            GridView3.DataBind();
        }

        if (DropDownList1.SelectedItem.Text == "Status")
        {
            GridView3.DataSource = BaseDB.users.Where(u => u.accountStatus.Equals(tbLogin.Text));
            GridView3.DataBind();
        }

        if (DropDownList1.SelectedItem.Text == "Level")
        {
            GridView3.DataSource = BaseDB.users.Where(u => u.level.Equals(tbLogin.Text));
            GridView3.DataBind();
        }
    }
    

}
