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

       GridView2.DataSource = BaseDB.users;//laczenie sie z baza 
      // GridView2.DataBind();
    }
    private void load()
    {

    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       
       // tbLogin.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text;
        //tbName.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;
        //tbSurname.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        //tbLevel.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text;
        //tbStatus.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[6].Text;
        //utworzyc objekt ktory bedzie przechowywał te dany i z niego przypisac zmiany do sql 
        //stowrzyc nowy grid i nie tworzyć automatycznie tylko to co jest w pageload 

    }
    /* void GridView1_RowDeleted(Object sender, GridViewDeletedEventArgs e)
     {

         LinqDataSource1.EnableDelete=true;
            foreach (user u in BaseDB.users)
         {
             BaseDB.users.DeleteOnSubmit(u);
         }

     }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (rdlSearchCheck.SelectedItem.Text == "Login")
        {

            GridView2.DataSource = BaseDB.users.Where(u => u.login.StartsWith(tbLogin.Text));
            GridView2.DataBind();
        }

            if (rdlSearchCheck.SelectedItem.Text == "Name")
            { GridView2.DataSource = BaseDB.users.Where(u => u.name.StartsWith(tbLogin.Text));
            GridView2.DataBind();
        }//sprobowac z checkboxami
            if (rdlSearchCheck.SelectedItem.Text == "Surname")
            { GridView2.DataSource = BaseDB.users.Where(u => u.surname.StartsWith(tbLogin.Text));
            GridView2.DataBind();
        }
        
            if (rdlSearchCheck.SelectedItem.Text == "Status")
            { GridView2.DataSource = BaseDB.users.Where(u => u.accountStatus.Equals(tbLogin.Text));
            GridView2.DataBind();
            }

            if (rdlSearchCheck.SelectedItem.Text == "Level")
            { GridView2.DataSource = BaseDB.users.Where(u => u.level.Equals(tbLogin.Text));
            GridView2.DataBind();
            }
    }

    private void deleteRow()
    {
        IQueryable<user> query = BaseDB.users.Where(u => u.login.StartsWith(TextBox1.Text));
        if (query.Any())
        {
            BaseDB.users.DeleteAllOnSubmit(query);
            BaseDB.SubmitChanges();
            GridView2.DataBind();
            
        }
        else { }

        btnYes.Text = "Yes";
        btnDelete.Visible = true;
        btnNo.Visible = false;
        btnYes.Visible = false;
        Label1.Visible = false;

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {

        GridView2.DataBind();
        Label1.Text = "Are you sure you want delete this User?";
            btnDelete.Visible = false;
            btnNo.Visible = true;
            btnYes.Visible = true;
            Label1.Visible = true;

        
        
    }




    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        var query = from p in BaseDB.users
                    where p.login == GridView2.Rows[GridView2.SelectedIndex].Cells[4].Text
                    select p.login;
        if (query.Any())
        {
            TextBox1.Text = query.First();

        }
    }

    protected void cbSearchLogin_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (rdlSearchCheck.SelectedItem.Text == "Login")
        {

            lblText1.Text = "Login";


        }

       else  if (rdlSearchCheck.SelectedItem.Text == "Name")
        {

            lblText1.Text = "Name";

        }
        else if (rdlSearchCheck.SelectedItem.Text == "Surname")
        {

            lblText1.Text = "Surname";


        }
        else if (rdlSearchCheck.SelectedItem.Text == "Status")
        {

            lblText1.Text = "Status";


        }
        else if (rdlSearchCheck.SelectedValue == "Level")
        {

            lblText1.Text = "Level";


        }
    }



    protected void btnYes_Click(object sender, EventArgs e)
    {

        deleteRow();
        btnDelete.Visible = true;
        btnNo.Visible = false;
        btnYes.Visible = false;
        Label1.Visible = false;
    }

    protected void btnNo_Click(object sender, EventArgs e)
    {

        btnDelete.Visible = true;
        btnNo.Visible = false;
        btnYes.Visible = false;
        Label1.Visible = false;
    }
}
