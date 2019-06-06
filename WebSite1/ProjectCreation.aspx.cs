using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectCreation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtName.Focus();
    }

    protected void btnCreateProject_Click(object sender, EventArgs e)
    {
        if (txtName.Text == "" || txtStatus.Text == "" || txtDescription.Text == "" || txtStartDate.Text=="" || txtEndDate.Text=="")
        {
            Validation();
            lblProjectCreationSucces.Visible = false;
        }
        else
        {
            txtDescription.Style.Add("background-color", "white");
            txtStatus.Style.Add("background-color", "white");
            txtName.Style.Add("background-color", "white");
            txtStartDate.Style.Add("background-color", "white");
            txtEndDate.Style.Add("background-color", "white");


            CultureInfo provider = CultureInfo.InvariantCulture;

            LinqDataClassesDataContext db = new LinqDataClassesDataContext();

            var userID = (from u in db.users
                          where u.name == (string)Session["UserLogIn"]
                          select u.id).First();

            project Project = new project
            {
                name = txtName.Text,
                creatorID = userID,
                creationDate = System.DateTime.Today,
                startDate = DateTime.ParseExact(txtStartDate.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture),
                endDate = DateTime.ParseExact(txtEndDate.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture),
                status = txtStatus.Text,
                description = txtDescription.Text,
                remarks = txtRemarks.Text
            };

            db.projects.InsertOnSubmit(Project);
            db.SubmitChanges();
            lblProjectCreationSucces.Visible = true;
        }
    }

    private void Validation()
    {
        if (txtName.Text == "")
        {

            txtName.Style.Add("background-color", "red");
        }
        else
        {
            txtName.Style.Add("background-color", "white");
        }
        if (txtStatus.Text == "")
        {
            txtStatus.Style.Add("background-color", "red");
        }
        else
        {
            txtStatus.Style.Add("background-color", "white");

        }
        if (txtDescription.Text == "")
        {
            txtDescription.Style.Add("background-color", "red");
        }
        else
        {
            txtDescription.Style.Add("background-color", "white");

        }
        if(txtStartDate.Text=="")
        {
            txtStartDate.Style.Add("background-color", "red");
        }
        else
        {
            txtStartDate.Style.Add("background-color", "white");
        }
        if(txtEndDate.Text=="")
        {
            txtEndDate.Style.Add("background-color", "red");
        }
        else
        {
            txtEndDate.Style.Add("background-color", "white");
        }
    }
}