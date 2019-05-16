using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LinqOverrides
/// </summary>
 public partial class project
{
    public  string name_description
    {
        get { return name + "(" + description + ")"; }
    }
}