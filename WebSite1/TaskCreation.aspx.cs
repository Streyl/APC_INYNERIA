using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TaskCreation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinqDataClassesDataContext dbb = new LinqDataClassesDataContext();



        ddlChoseProject.DataSource = dbb.projects;
        ddlChoseProject.DataBind();
    }

    protected void bSubmit_Click(object sender, EventArgs e)
    { if (tbName.Text == "" || tbLeader.Text == "" || tbDescription.Text == "")
        {
            if (tbName.Text == "")
            {
                tbName.Style.Add("background-color", "red");
            }
            else
            {
                tbName.Style.Add("background-color", "white");
            }

            if (tbLeader.Text == "")
            {
                tbLeader.Style.Add("background-color", "red");
            }
            else
            {
                tbLeader.Style.Add("background-color", "white");
            }
            if (tbDescription.Text == "")
            {
                tbDescription.Style.Add("background-color", "red");
            }
            else
            {
                tbDescription.Style.Add("background-color", "white");
            }
        }
    else
        {
            LinqDataClassesDataContext db = new LinqDataClassesDataContext();

            var Leader = (from u in db.users
                          where u.name == tbLeader.Text
                          select u.id).First();

            var ProjectID = (from p in db.projects
                          where p.name == ddlChoseProject.SelectedValue //propably this error show becouse text isnt just a name but name+date
                          select p.id).FirstOrDefault();

           
            task Project = new task
            {
                name = tbName.Text,
                leaderID=Leader,
                status=ddlStatus.Text,
                description=tbDescription.Text,
                projectID=ProjectID
                
            };

            db.tasks.InsertOnSubmit(Project);
            db.SubmitChanges();
        }

    }
        

    }

   
