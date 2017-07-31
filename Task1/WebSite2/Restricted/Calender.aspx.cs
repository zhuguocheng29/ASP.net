using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Restricted_Calender : System.Web.UI.Page
{
    int temp = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        //temp = 0;
        du_label.Text = User.Identity.Name;
        System.Diagnostics.Debug.Write("1111111111");
        GetEventDates();
    }

    protected void log_out(object sender, EventArgs e)
    {
        System.Web.Security.FormsAuthentication.SignOut();
        Server.Transfer("~/index.aspx");
    }

    protected void GetEventDates()
    {

        string strConnection = dsEvent.ConnectionString;

        using (OleDbConnection objConnection = new OleDbConnection(strConnection))
        {
            objConnection.Open();
            OleDbCommand sqlcmd = new OleDbCommand(@"select EventDate from Events", objConnection);
            OleDbDataReader reader = sqlcmd.ExecuteReader();
            LinkedList<DateTime> selday = new LinkedList<DateTime>();
            while (reader.Read())
            {
                string time = reader["EventDate"].ToString();
                DateTime current = Convert.ToDateTime(time);
                selday.AddFirst(current);
                Calendar1.SelectedDates.Add(current);
            }
            Session.Add("eventdate", selday);
            reader.Close();
            objConnection.Close();
        }
    }

    protected string GetEventDetails(EventArgs e)
    {
        if (temp == 0)
        {
            string eventDetails_1 = "";
            string today_1 = DateTime.Now.ToString("d");
            string nextDay_1 = DateTime.Now.AddDays(1).ToString("d");

            dsEvent.SelectCommand =
              "SELECT [EventDate] ,[EventDescription]FROM [Events] WHERE ([EventDate]< #" +
              nextDay_1 + "# and [EventDate]> #" + today_1 + "#)";
            DataView dv = (DataView)dsEvent.Select(DataSourceSelectArguments.Empty);
            if (dsEvent.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
            {
                string eventDaystr_1 = dv.Table.Rows[0][0].ToString();
                DateTime eventDay_1 = Convert.ToDateTime(eventDaystr_1);
                eventDaystr_1 = eventDay_1.ToShortTimeString();
                eventDetails_1 = "At " + eventDaystr_1 + ", " + dv.Table.Rows[0][1].ToString();
            }
            else
                eventDetails_1 = "NO event for today!";
            temp++;
            return eventDetails_1;


        }
        else
        {
            string eventDetails = "";
            string nextDay = Calendar1.SelectedDate.AddDays(1).ToShortDateString();
            string selectedDay = Calendar1.SelectedDate.ToShortDateString();
            dsEvent.SelectCommand =
              "SELECT [EventDate] ,[EventDescription]FROM [Events] WHERE ([EventDate]< #" +
              nextDay + "# and [EventDate]> #" + selectedDay + "#)";
            DataView dv = (DataView)dsEvent.Select(DataSourceSelectArguments.Empty);
            if (dsEvent.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
            {
                string eventDaystr = dv.Table.Rows[0][0].ToString();
                DateTime eventDay = Convert.ToDateTime(eventDaystr);
                eventDaystr = eventDay.ToShortTimeString();
                eventDetails = "At " + eventDaystr + ", " + dv.Table.Rows[0][1].ToString();
            }
            else
                eventDetails = "NO event for today!";
            return eventDetails;
        }



    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        displayEvent.Text = GetEventDetails(e);
    }


    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        //string strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("/") + "/App_Data/Events.accdb;" + "Persist Security Info=False";
        //OleDbConnection ConnAcc = new OleDbConnection(strConn);
        //ConnAcc.Open();
        //string strSQL = "SELECT * FROM Events";
        //OleDbCommand cmd = new OleDbCommand(strSQL, ConnAcc);
        //OleDbDataReader dr = cmd.ExecuteReader();
        //while (dr.Read())
        //{
        //    DateTime dt = Convert.ToDateTime(dr["EventDate"]);
        //    if (e.Day.Date == dt)
        //    {
        //        e.Cell.BackColor = System.Drawing.Color.FromName("#384452");
        //    }
        //}

        //dr.Close();
        //ConnAcc.Close();

        //change color of today

        LinkedList<DateTime> displaydate = (LinkedList<DateTime>)Session["eventdate"];
        //LinkedList<DateTime> dis =  displaydate;
        //for (int j = 0; j < displaydate.Count; j++)
        //{
        //    dis.First.Value = displaydate.First.Value;
        //}

        try
        {

            foreach (DateTime dt in displaydate)
            {
                if (dt.ToString("d") == e.Day.Date.ToString("d"))
                {
                    e.Cell.BackColor = System.Drawing.Color.Yellow;
                }
            }
            if (e.Day.Date == Calendar1.TodaysDate)
            {
                //e.Cell.BackColor = System.Drawing.Color.FromName("#2828FF");
                e.Cell.BackColor = System.Drawing.Color.FromName("#3fd8bd");
            }


            System.Diagnostics.Debug.WriteLine("77777777" + e.Day.Date.ToString("d"));
            for (int i = displaydate.Count; i > 0; i--)
            {
                Calendar1.SelectedDates.Add(displaydate.First.Value);
                displaydate.RemoveFirst();
            }


        }
        catch (System.NullReferenceException ex)
        {
            displayEvent.Text = ex.Message;
        }
    }

    protected void Calendar1_Init(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.Write("0000000000");
        displayEvent.Text = GetEventDetails(e);
    }
}