using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TaskCreation : System.Web.UI.Page
{
    LinqDataClassesDataContext dbb = new LinqDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            if (rblChoose.SelectedItem.Text == "Project")
            {
                lInfoProject.Visible = false;
                pnlAddtoProject.Visible = true;
                pnlAddtoTask.Visible = false;

            }
            else
            {
                pnlAddtoTask.Visible = true;
                pnlAddtoProject.Visible = false;
                lInfoTask.Visible = false;

            }



        }


    }

    protected void bSubmit_Click(object sender, EventArgs e)
    {
        if (tbName.Text == "" || tbDescription.Text == "")
        {
            Validation();
        }
        else
        {
            lInfoProject.Visible = true;
            lInfoProject.Text = "Sucessfuly added task to project";

            task t = new task
            {
                name = tbName.Text,
                leaderID = Convert.ToInt32(ddlLeader.SelectedValue),
                status = ddlStatus.Text,
                description = tbDescription.Text,
                projectID = Convert.ToInt32(ddlProject.SelectedValue)

            };

            dbb.tasks.InsertOnSubmit(t);
            dbb.SubmitChanges();

        }

    }

    private void Validation()
    {
        if (pnlAddtoProject.Visible == true)
        {
            lInfoProject.Visible = true;
            lInfoProject.Text = "Correct red field!";
            if (tbName.Text == "")
            {
                tbName.Style.Add("background-color", "red");
            }
            else
            {
                tbName.Style.Add("background-color", "white");
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
            lInfoTask.Visible = true;
            lInfoTask.Text = "Correct red field!";
            if (tbName2.Text == "")
            {
                tbName2.Style.Add("background-color", "red");
            }
            else
            {
                tbName2.Style.Add("background-color", "white");
            }


            if (tbDescription2.Text == "")
            {
                tbDescription2.Style.Add("background-color", "red");
            }
            else
            {
                tbDescription2.Style.Add("background-color", "white");
            }
        }
    }

    protected void btnSubmit2_Click(object sender, EventArgs e)
    {
        if (tbName2.Text == "" || tbDescription2.Text == "")
        {
            Validation();
        }
        else
        {

            lInfoTask.Visible = true;
            lInfoTask.Text = "Sucessfuly added task to project";

            task t = new task
            {
                name = tbName2.Text,
                leaderID = Convert.ToInt32(ddlLeader2.SelectedValue),
                parentID = Convert.ToInt32(ddlTask.SelectedValue),
                status = ddlStatus2.Text,
                description = tbDescription2.Text,
                projectID = Convert.ToInt32(ddlProject2.SelectedValue)

            };
            //taskAssignment taskToTask = new taskAssignment
            //{
            //    userID = Convert.ToInt32(ddlLeader2.SelectedValue),
            //    taskID = Convert.ToInt32(ddlTask.SelectedValue)
            //};

            dbb.tasks.InsertOnSubmit(t);
            //dbb.taskAssignments.InsertOnSubmit(taskToTask);
            dbb.SubmitChanges();
        }

    }

    protected void rblChoose_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblChoose.SelectedItem.Text == "Project")
        {
            pnlAddtoProject.Visible = true;
            pnlAddtoTask.Visible = false;
        }
        else
        {
            pnlAddtoProject.Visible = false;
            pnlAddtoTask.Visible = true;
        }
    }

    protected void ddlTask_SelectedIndexChanged(object sender, EventArgs e)
    {
        // ddlTask(m=> m.)
    }
}
//stworzyc czyszczenie validacji po wcisnieciu submit


