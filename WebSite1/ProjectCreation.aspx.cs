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
    }
}