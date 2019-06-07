using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyTasks : System.Web.UI.Page
{
    LinqDataClassesDataContext db = new LinqDataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ListItem liDefault = new ListItem
            {
                Text = "<choose project>",
                Value = ""
            };
            ddlProjects.Items.Add(liDefault);

            foreach (project p in db.projects)
            {
                ListItem liProject = new ListItem
                {
                    Text = p.name,
                    Value = p.id.ToString()
                };
                ddlProjects.Items.Add(liProject);
            }
        }
    }

    protected void ddlProjects_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbTaskSaveSucces.Text = "";

        ddlTasks.Items.Clear();

        if(ddlProjects.SelectedValue != "")
        {
            var projectID = Convert.ToInt32(ddlProjects.SelectedValue);

            ListItem liDefault = new ListItem
            {
                Text = "<choose task>",
                Value = ""
            };
            ddlTasks.Items.Add(liDefault);


            string loginString = Session["UserLogIn"].ToString();
            user u = db.users.First(x => x.login == loginString);

            //if(db.taskAssignments.Any(x => x.taskID))

            foreach (task t in db.tasks)
            {
                if (t.projectID == projectID && db.taskAssignments.Any(x => x.taskID == t.id && x.userID == u.id))
                {
                    ListItem liTask = new ListItem
                    {
                        Text = t.name,
                        Value = t.id.ToString()
                    };
                    ddlTasks.Items.Add(liTask);
                }
            }
        }
        else
        {
            tbLeaderName.Text = "";
            tbTaskDescription.Text = "";
            tbTaskStatus.Text = "";
            tbHoursWorked.Text = "";
        }
    }

    protected void ddlTasks_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbTaskSaveSucces.Text = "";

        if (ddlTasks.SelectedValue != "")
        {
            string loginString = Session["UserLogIn"].ToString();
            user u = db.users.First(x => x.login == loginString);
            taskAssignment tA = db.taskAssignments.First(x => x.taskID == Convert.ToInt32(ddlTasks.SelectedValue) && x.userID == Convert.ToInt32(u.id));

            task t = db.tasks.First(x => x.id == Convert.ToInt32(ddlTasks.SelectedValue));

            user uLeader = db.users.First(x => x.id == t.leaderID);

            tbLeaderName.Text = uLeader.name_lastname;
            tbTaskDescription.Text = t.description;
            tbTaskStatus.Text = t.status;
            tbHoursWorked.Text = tA.hoursWorked.ToString();
        }
        else
        {
            tbLeaderName.Text = "";
            tbTaskDescription.Text = "";
            tbTaskStatus.Text = "";
            tbHoursWorked.Text = "";
        }
    }

    protected void btTaskSave_Click(object sender, EventArgs e)
    {
        if(ddlTasks.SelectedValue != "" && ddlProjects.SelectedValue != "")
        {
            bool v = true;

            string loginString = Session["UserLogIn"].ToString();
            user u = db.users.First(x => x.login == loginString);

            taskAssignment tA = db.taskAssignments.First(x => x.taskID == Convert.ToInt32(ddlTasks.SelectedValue) && x.userID == Convert.ToInt32(u.id));

            int hWorked = Convert.ToInt32(tbHoursWorked.Text);


            if (tA.hoursWorked < hWorked)
            {
                tA.hoursWorked = Convert.ToInt32(tbHoursWorked.Text);
                lbTaskSaveSucces.Text = "Editing was succesful!";
                db.SubmitChanges();
            }
            else
            {
                lbTaskSaveSucces.Text = "Incorrect data!";
                tbHoursWorked.Text = tA.hoursWorked.ToString();
            }
        }
    }
}