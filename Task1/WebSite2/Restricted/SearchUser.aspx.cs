using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Restricted_SearchUser : System.Web.UI.Page
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
    protected void findUser(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        String country = listsearchByCountry.SelectedValue;
        //System.Diagnostics.Debug.WriteLine("11111" + country);
        switch (btn.CommandName)
        {
            case "Username":
                //output no record
                string strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("/") + "/App_Data/Register.accdb;" + "Persist Security Info=False";
                OleDbConnection ConnAcc = new OleDbConnection(strConn);
                System.Diagnostics.Debug.WriteLine("11111" + Server.MapPath("/"));
                ConnAcc.Open();
                string strSQL = "SELECT * FROM Register where Username like '%" + textsearchByusername.Text.Trim(' ') + "%'";
                OleDbCommand cmd = new OleDbCommand(strSQL, ConnAcc);
                OleDbDataReader dr = cmd.ExecuteReader();
                if (!dr.Read())
                {
                    searchreturnlabel.Text = "No record !!!";
                }
                else
                {
                    searchreturnlabel.Text = "";
                }
                dr.Close();
                ConnAcc.Close();


                searchRegister.SelectCommand = "SELECT * FROM Register where Username like '%" + textsearchByusername.Text.Trim(' ') + "%'";
                break;
            case "Email":
                //output no record
                string strConn1 = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("/") + "/App_Data/Register.accdb;" + "Persist Security Info=False";
                OleDbConnection ConnAcc1 = new OleDbConnection(strConn1);
                System.Diagnostics.Debug.WriteLine("11111" + Server.MapPath("/"));
                ConnAcc1.Open();
                string strSQL1 = "SELECT * FROM Register where Email like '%" + textsearchByemail.Text.Trim(' ') + "%'";
                OleDbCommand cmd1 = new OleDbCommand(strSQL1, ConnAcc1);
                OleDbDataReader dr1 = cmd1.ExecuteReader();
                if (!dr1.Read())
                {
                    searchreturnlabel.Text = "No record !!!";
                }
                else
                {
                    searchreturnlabel.Text = "";
                }
                dr1.Close();
                ConnAcc1.Close();


                searchRegister.SelectCommand = "SELECT * FROM Register where Email like '%" + textsearchByemail.Text.Trim(' ') + "%'";
                break;
            case "Country":
                //output no record
                string strConn2 = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("/") + "/App_Data/Register.accdb;" + "Persist Security Info=False";
                OleDbConnection ConnAcc2 = new OleDbConnection(strConn2);
                System.Diagnostics.Debug.WriteLine("11111" + Server.MapPath("/"));
                ConnAcc2.Open();
                string strSQL2 = "SELECT * FROM Register where Country like '%" + country.Trim(' ') + "%'";
                OleDbCommand cmd2 = new OleDbCommand(strSQL2, ConnAcc2);
                OleDbDataReader dr2 = cmd2.ExecuteReader();
                if (!dr2.Read())
                {
                    searchreturnlabel.Text = "No record !!!";
                }
                else
                {
                    searchreturnlabel.Text = "";
                }
                dr2.Close();
                ConnAcc2.Close();



                searchRegister.SelectCommand = "SELECT * FROM Register where Country like '%" + country.Trim(' ') + "%'";
                //searchRegister.SelectCommand = "SELECT * FROM Register where Usage like '%Record%'";
                break;

        }
        lv.DataSource = searchRegister;
        lv.DataBind();

        //if (search_username_label.Text == null)
        //{
        //    searchreturnlabel.Text = "No record";
        //}
        //if (searchRegister.d)
        //{
        //    searchreturnlabel.Text = "No record";
        //}
    }
}