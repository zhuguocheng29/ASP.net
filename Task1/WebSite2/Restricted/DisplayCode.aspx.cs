using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restricted_DisplayCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string filePath = "";
        string judge_path = Server.MapPath(Request.QueryString["filename"]);
        System.Diagnostics.Debug.WriteLine("11111" + judge_path);

        //
        if (judge_path.Contains("index") || judge_path.Contains("MasterPage") || judge_path.Contains("Register") || judge_path.Contains("login"))
        {
            string temp_path = Request.QueryString["filename"];
            filePath = Server.MapPath("/") + temp_path;
        }
        else if (judge_path.Contains("Skin"))
        {
            string temp_path = Request.QueryString["filename"];
            filePath = Server.MapPath("/") +"App_Themes/SkinFile/"+temp_path;
            System.Diagnostics.Debug.WriteLine("11111" + filePath);
            System.Diagnostics.Debug.WriteLine("22222" + Server.MapPath("."));
        }
        else
        {
            filePath = Server.MapPath(Request.QueryString["filename"]);
        }

        FileName.Text = Request.QueryString["filename"];
        FileInfo file = new FileInfo(filePath);

        if (file.Extension == ".aspx"
          || file.Extension == ".skin"
          || file.Extension == ".txt"
          || file.Extension == ".css"
          || file.Extension == ".config"
          || file.Extension == ".master")
        {
            Code.Text = ReadFile(filePath);
        }
        else
        {
            Code.Text = "Sorry you can't read a file with an extension of " + file.Extension;
        }



        if (Request.QueryString["other"] != null)
        {  
            string filePath_1 = "";
            string judge_path_1 = Server.MapPath(Request.QueryString["other"]);
            //
            if (judge_path_1.Contains("Web.config"))
            {
                
                string temp_path_1 = Request.QueryString["other"];
                filePath_1 = Server.MapPath("/") + temp_path_1;
            }
            else
            {
                filePath_1 = Server.MapPath(Request.QueryString["other"]);
            }
            System.Diagnostics.Debug.WriteLine("11111" + Server.MapPath(Request.QueryString["other"]));

            Panel1.Visible = true;
            Label1.Text = Request.QueryString["other"];
            FileInfo file_1 = new FileInfo(filePath_1);

            if (file_1.Extension == ".aspx"
              || file_1.Extension == ".skin"
              || file_1.Extension == ".js"
              || file_1.Extension == ".css"
              || file_1.Extension == ".config"
              || file_1.Extension == ".master")
            {
                Label2.Text = ReadFile(filePath_1);
            }
            else
            {
               // Code.Text = "Sorry you can't read a file with an extension of " + file.Extension;
            }


        }





        if (Request.QueryString["addition"] != null)
        {
            string filePath_2 = "";
            string judge_path_2 = Server.MapPath(Request.QueryString["addition"]);
            //
            if (judge_path_2.Contains("Web.config"))
            {

                string temp_path_2 = Request.QueryString["addition"];
                filePath_2 = Server.MapPath("/") + temp_path_2;
            }
            else
            {
                filePath_2 = Server.MapPath(Request.QueryString["addition"]);
            }
            System.Diagnostics.Debug.WriteLine("11111" + Server.MapPath(Request.QueryString["addition"]));

            Panel2.Visible = true;
            Label3.Text = Request.QueryString["addition"];
            FileInfo file_2 = new FileInfo(filePath_2);

            if (file_2.Extension == ".aspx"
              || file_2.Extension == ".skin"
              || file_2.Extension == ".js"
              || file_2.Extension == ".css"
              || file_2.Extension == ".config"
              || file_2.Extension == ".master")
            {
                Label4.Text = ReadFile(filePath_2);
            }
            else
            {
                // Code.Text = "Sorry you can't read a file with an extension of " + file.Extension;
            }


        }





    }

    private string ReadFile(string filepath)
    {
        string fileOutput = "";
        try
        {
            StreamReader FileReader = new StreamReader(filepath);
            //The returned value is -1 if no more characters are 
            //currently available.
            while (FileReader.Peek() > -1)
            {
                //ReadLine() Reads a line of characters from the 
                //current stream and returns the data as a string.
                fileOutput += FileReader.ReadLine().Replace("<", "&lt;").
                Replace("  ", "&nbsp;&nbsp;&nbsp;&nbsp;")
                                      + "<br />";
            }
            FileReader.Close();
        }
        catch (FileNotFoundException e)
        {
            fileOutput = e.Message;
        }
        return fileOutput;
    }
}