using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restricted_About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        du_label.Text = User.Identity.Name;

    }
    protected void log_out(object sender, EventArgs e)
    {
        System.Web.Security.FormsAuthentication.SignOut();
        Server.Transfer("~/index.aspx");
    }
}