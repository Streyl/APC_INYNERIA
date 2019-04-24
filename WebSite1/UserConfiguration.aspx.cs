using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserConfiguration : System.Web.UI.Page
{
    LinqDataClassesDataContext db = new LinqDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        tbChangeLogin = db.users.login.text;

    }

    protected void tbChangeLogin_TextChanged(object sender, EventArgs e)
    {
       
    }

    protected void bSubmitChange_Click(object sender, EventArgs e)
    {
        /*
        LinqDataClassesDataContext db = new LinqDataClassesDataContext();

        user User = new user
        {
            name = tbName.Text,
            surname = tbSurname.Text,
            login = tbLogin.Text,
            password = tbPassword.Text,
            accountStatus = 1,
            level = 1
        };
        db.users.InsertOnSubmit(User);
        db.SubmitChanges();
        var query =
    from ord in db.Orders
    where ord.OrderID == 11000
    select ord;

        // Execute the query, and change the column values
        // you want to change.
        foreach (Order ord in query)
        {
            ord.ShipName = "Mariner";
            ord.ShipVia = 2;
            // Insert any additional changes to column values.
        }

        // Submit the changes to the database.
        try
        {
            db.SubmitChanges();
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
            // Provide for exceptions.
        }*/
    }
}