using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restricted_Email : System.Web.UI.Page
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

    String strPath = "";

    protected void SendingEmail(object sender, EventArgs e)
    {
        MailMessage newMsg = new MailMessage();

        foreach (GridViewRow gvRow in email_girdview.Rows)
        {
            CheckBox cb = (CheckBox)gvRow.FindControl("chkEmail");

            if (cb != null && cb.Checked)
            {
                System.Diagnostics.Debug.WriteLine("55555555" + gvRow.Cells[2].Text + "6666666" + gvRow.Cells[0].Text);
                newMsg.To.Add(new MailAddress(gvRow.Cells[2].Text, gvRow.Cells[0].Text));
            }

        }

        newMsg.From = new MailAddress("gzhu14@student.monash.edu", "L&Z UAV");
        newMsg.Subject = email_subject.Text;
        newMsg.Body = email_message.Text;

        bool sendEmail = true;
        if (email_file.HasFile)
        {
            if (UpLoadFile(email_file.FileName))
            {
                Attachment newAttach = new Attachment(strPath);
                newMsg.Attachments.Add(newAttach);
                System.Diagnostics.Debug.WriteLine("++++++++++" + newMsg.ToString());

            }
            else
            {
                sendEmail = false;
            }
        }
        if (sendEmail)
        {
            try
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.monash.edu.au";
                System.Diagnostics.Debug.WriteLine("=======" + newMsg.ToString());

                smtp.Send(newMsg);
                lblMail.Text = "Mail Successfully Sent";
            }
            catch (Exception exc)
            {
                lblMail.Text = exc.Message;
                email_message.Text = newMsg.From.Address + exc.StackTrace;
            }
        }


    }


    public bool UpLoadFile(string strFileName)
    {
        bool blnFileOK = false;
        string strExt =
        System.IO.Path.GetExtension(email_file.PostedFile.FileName);
        if ((strExt != ".gif") && (strExt != ".jpg") && (strExt != ".png"))
        {
            lblMail.Text = "Invalid File Type";
        }
        else
        {
            blnFileOK = true;
            strPath =
              Server.MapPath("/") + "/UploadFiles/" + strFileName;
            System.Diagnostics.Debug.WriteLine("00000000" + strPath);
            email_file.PostedFile.SaveAs(strPath);
        }
        return blnFileOK;
    }
}