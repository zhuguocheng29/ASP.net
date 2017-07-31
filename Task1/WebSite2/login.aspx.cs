using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
    {
        DS1.SelectCommand = "SELECT * FROM REGISTER WHERE Username = '" + login_1.UserName + "' AND Password = '" + login_1.Password + "'";
        //DS1.Select(DataSourceSelectArguments.Empty);
        if (DS1.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
        {
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(login_1.UserName, false);
        }
        else
        {
            login_1.FailureText = "Invalid Login";
        }
    }

    protected void CheckLogin(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(login_1.UserName, false);
        }
        else
        {
            login_1.FailureText = "Invalid Login";
        }
    }

}