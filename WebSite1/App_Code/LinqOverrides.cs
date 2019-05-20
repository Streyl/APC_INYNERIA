using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LinqOverrides
/// </summary>
public partial class project
{
    public string name_project
    {
        get { return name; }
    }


}

public partial class user
{
    public string name_lastname
    {
        get { return name + " " + surname + '"' + login + '"'; }
    }
}

public partial class task
{
    public string name_task
    {
        get { return name; }
    }

}