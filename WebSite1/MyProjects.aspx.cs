using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MyProjects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinqDataClassesDataContext db = new LinqDataClassesDataContext();

        var userID = (from u in db.users
                      where u.name == (string)Session["UserLogIn"]
                      select u.id).First();


        //var userProjects = from p in db.projects select p.name;
        //lbUserProjects.DataValueField = "name";
        lbUserProjects.DataSource = db.projects;
        lbUserProjects.DataBind();
    }

    protected void lbUserProjects_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}