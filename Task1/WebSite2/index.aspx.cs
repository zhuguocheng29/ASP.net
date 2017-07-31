using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    

    protected void Page_PreInit(object sender, EventArgs e)
    {
       
        System.Diagnostics.Debug.WriteLine("1111111" + Request.QueryString["change"]);

        string temp = Request.QueryString["change"];
        if (temp != null)
        {
            
            Page.Theme = "SkinFile";
        }

        
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void change_background(object sender, EventArgs e)
    {

          Response.Redirect("index.aspx?change=1");
       
    }

    protected void im_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Restricted/DisplayCode.aspx?filename=index.aspx");
    }
}