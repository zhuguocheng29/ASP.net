<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calender.aspx.cs" Inherits="Restricted_Calender" MasterPageFile="~/MasterPage.master" %>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
      <li class="active">Calendar Page</li>       
</asp:Content>

<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <link href="styles/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
   <link href="styles/style1.css" rel="stylesheet" type="text/css" media="all" />
    <link href="styles/calender.css" rel="stylesheet" type="text/css" media="all" />
  <link href="styles/animate.min.css" rel="stylesheet"/> 
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
<link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>
<script src="js/wow.min.js"></script>
<script>
    new WOW().init();
</script>
   <%-- <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><asp:HyperLink NavigateUrl="~/index.aspx" runat="server"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</asp:HyperLink></li>
				<li class="active">Calender Page</li>
			</ol>
		</div>
	</div>--%>
     <asp:AccessDataSource ID="dsEvent" runat="server" DataFile="~/App_Data/Events.accdb" SelectCommand="SELECT [EventDate], [EventTime], [EventDescription] FROM [Events]"></asp:AccessDataSource>
   <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Events.accdb" SelectCommand="SELECT [EventDate], [EventTime], [EventDescription] FROM [Events]"></asp:AccessDataSource>

    <form id="form1" runat="server">
    <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Calendar</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">From the calendar, you will see the events of current day.</p>
            <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>

			</div>
        </div>



    <div class="ccontainer animated wow slideInUp" data-wow-delay=".5s" >
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" OnInit="Calendar1_Init" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#3366ff" ForeColor="White" />
            <SelectorStyle BackColor="Yellow" ForeColor="Black" />
            <%--<TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />--%>
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        <p></p>
     <div class="ccontainer1">
        <asp:Label ID="displayEvent" runat="server" Font-Size="25px" Font-Italic="true" ForeColor="#ff8000"></asp:Label>
         </div>
        
        <p></p>
        <div class="ccontainer1">
        <asp:GridView ID="gr_calender" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" AllowPaging="True" PageSize="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="EventDate" HeaderText="EventDate" SortExpression="EventDate" />
                <asp:BoundField DataField="EventTime" HeaderText="EventTime" SortExpression="EventTime" />
                <asp:BoundField DataField="EventDescription" HeaderText="EventDescription" SortExpression="EventDescription" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#007fff" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
   </div>

    </div>
    </form>


</asp:Content>
