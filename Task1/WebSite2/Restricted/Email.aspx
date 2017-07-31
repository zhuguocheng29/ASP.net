<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="Restricted_Email" MasterPageFile="~/MasterPage.master" %>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
    <li class="active">Email Page</li>    
</asp:Content>

<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <link href="styles/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
   <link href="styles/style1.css" rel="stylesheet" type="text/css" media="all" />
    <link href="styles/email.css" rel="stylesheet" type="text/css" media="all" />
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
				<li class="active">Email Page</li>
			</ol>
		</div>
	</div>--%>
     <asp:AccessDataSource ID="email_user" runat="server" DataFile="~/App_Data/Register.accdb" SelectCommand="SELECT [Username], [UAV Brand] AS UAV_Brand, [Email], [Phone number] AS Phone_number FROM [Register]"></asp:AccessDataSource>
    <form id="form1" runat="server">
    <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Send Email</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">You can send email to your friends by monash account. The maximum size of attachment you can transfer is 4KB</p>
            <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>

			</div>
        </div>
       <%-- <h3 class="animated wow zoomIn" data-wow-delay=".5s">Register Here</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.</p>
			<div class="login-form-grids">--%>
   
        <div class="animated wow slideInUp" data-wow-delay=".5s">
        <div class="econtainer">
        <asp:GridView ID="email_girdview" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="email_user" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="UAV_Brand" HeaderText="UAV_Brand" SortExpression="UAV_Brand" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone_number" HeaderText="Phone_number" SortExpression="Phone_number" />
                <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                  <asp:CheckBox runat="server" ID="chkEmail" />
                </ItemTemplate>
              </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        </div>
        <div class="econtainer1">
        <table style="border-collapse:separate; border-spacing:10px;">
            <tr>
                <td>From</td>
                <td>L&Z UAV</td>
            </tr>
            <tr>
                <td>Subject</td>
                <td> <asp:TextBox ID="email_subject" runat="server" BorderColor="Gray" Font-Size="Medium"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Attachment</td>
                <td><asp:FileUpload ID="email_file" runat="server" /></td>
                
            </tr>
            <tr>
                <td>Message</td>
                <td><asp:TextBox ID="email_message" runat="server" TextMode="MultiLine" Columns="55" Rows="15"  BorderColor="Gray" Font-Size="Medium"></asp:TextBox></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="email_button" runat="server" CssClass="ebutton"  OnClick ="SendingEmail" Text="Send"/>&nbsp;&nbsp;&nbsp;
            <br />
        <asp:Label ID="lblMail" runat="server" ForeColor="Red"></asp:Label>
            </div>
            </div>
    </form>
</body>
</html>
    
</asp:Content>


   <asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <li>
            <a href="DisplayCode.aspx?filename=Email.aspx" target="_blank"><img src="images/content/showemail.jpg" /></a>
        </li>
   </asp:Content>