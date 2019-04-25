using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TaskCreation : System.Web.UI.Page
{// zrobić wypisywanie leaderów a nie ze sie ich wpisuje z palca 
    LinqDataClassesDataContext dbb = new LinqDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlChoseProject.DataTextField = "name_description";
        ddlChoseProject.DataValueField = "id";
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
            

            var Leader = (from u in dbb.users
                          where u.name == tbLeader.Text
                          select u.id).First();

            var ProjectID = (from p in dbb.projects
                          where p.name == ddlChoseProject.SelectedValue
                          select p.id).FirstOrDefault();

           
            task t = new task
            {
                name = tbName.Text,
                leaderID=Leader,
                status=ddlStatus.Text,
                description=tbDescription.Text,
                projectID =  Convert.ToInt32( ddlChoseProject.SelectedValue)

            };

            dbb.tasks.InsertOnSubmit(t);
            dbb.SubmitChanges();
        }

    }
        

    }

   
