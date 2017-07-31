using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void ValidateUsername(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;

        string strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(".") + "/App_Data/Register.accdb;" + "Persist Security Info=False";
        OleDbConnection ConnAcc = new OleDbConnection(strConn);
        ConnAcc.Open();
        string strSQL = "SELECT * FROM Register";
        OleDbCommand cmd = new OleDbCommand(strSQL, ConnAcc);
        OleDbDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            System.Diagnostics.Debug.WriteLine("11111" + dr["Username"]);

            if (username_textbox.Text.Equals(dr["Username"]))
            {
                username_label_test.Text = "The name has already existed !";
            }
            else
            {
                username_label_test.Text = "";
            }

        }

        if (username_label_test.Text.Equals(""))
        {
            args.IsValid = true;
        }
        dr.Close();
        ConnAcc.Close();
        //DBRegister.SelectCommand = "Select * from REGISTER where Username = '" + username_textbox + "'";
        //DataSet ds = new DataSet();
        //System.Diagnostics.Debug.WriteLine(DBRegister.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext());
        //if (DBRegister.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
        //{

        //    args.IsValid = true;
        //}
        //else
        //{
        //    username_label_test.Text = "The name has already existed !";
        //}

    }


    protected void ValidateDate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        DateTime birthday;
        //DateTime today = new DateTime();
        try
        {
            birthday = DateTime.Parse(birthday_textbox.Text);
            if (birthday > DateTime.Now)
            {
                birthday_label_test.Text = "Please input correct date";
            }
            else
            {
                args.IsValid = true;
            }
        }
        catch (Exception e)
        {
            e.GetBaseException();
        }
        finally
        {

        }
    }


    protected void reset(object sender, EventArgs e)
    {
        username_textbox.Text = "";
        email_textbox.Text = "";
        birthday_textbox.Text = "";
        phonenumber_textbox.Text = "";
        homepage_textbox.Text = "";

    }




    protected void add(object sender, EventArgs e)
    {
        if (!(Page.IsValid))
        {

            return;
        }

        System.Diagnostics.Debug.Write("1111111111");

        System.Diagnostics.Debug.Write("0000000000");

        String gender = radlgender.SelectedValue;
        String country = countrylist.SelectedValue;
        String brand = lstbrand.SelectedValue;
        String usage = "";

        System.Diagnostics.Debug.WriteLine("55555555" + gender);
        System.Diagnostics.Debug.WriteLine("55555555" + birthday_textbox.Text);

        if (chkaerial.Checked)
        {
            usage = usage + chkaerial.Text;
        }
        if (chkphoto.Checked)
        {
            if (usage.Length == 0)
            {
                usage = chkphoto.Text;
            }
            else
            {
                usage = usage + "," + chkphoto.Text;
            }
        }
        if (chkentertainment.Checked)
        {
            if (usage.Length == 0)
            {
                usage = chkentertainment.Text;
            }
            else
            {
                usage = usage + "," + chkentertainment.Text;
            }
        }
        DBRegister.InsertParameters["Username"].DefaultValue = username_textbox.Text.Trim(' ');
        DBRegister.InsertParameters["Password"].DefaultValue = password_textbox.Text.Trim(' ');
        DBRegister.InsertParameters["Email"].DefaultValue = email_textbox.Text.Trim(' ');
        DBRegister.InsertParameters["Birthday"].DefaultValue = birthday_textbox.Text.Trim(' ');
        DBRegister.InsertParameters["Phone_number"].DefaultValue = phonenumber_textbox.Text.Trim(' ');
        DBRegister.InsertParameters["Home_page"].DefaultValue = homepage_textbox.Text.Trim(' ');

        DBRegister.InsertParameters["Gender"].DefaultValue = gender;
        DBRegister.InsertParameters["Country"].DefaultValue = country;
        DBRegister.InsertParameters["UAV_Brand"].DefaultValue = brand;
        DBRegister.InsertParameters["Usage"].DefaultValue = usage;
        try
        {
            int insert = DBRegister.Insert();
            Response.Write("<script>alert('Register successfully');</script>");
            //Response.Write("<script>alert('Register successfully');window.location='Default.aspx';</script>");
            // System.Diagnostics.Debug.WriteLine("99999999" + insert);
            DBRegister_1.SelectCommand = "select * from Register where Username='" + username_textbox.Text.Trim(' ') + "'";
            lvUser.DataSource = DBRegister_1;
            lvUser.DataBind();

        }
        catch (Exception ex)
        {
            ex.GetBaseException();
        }




    }

    protected void adds_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Restricted/DisplayCode.aspx?filename=Register.aspx");
    }
}