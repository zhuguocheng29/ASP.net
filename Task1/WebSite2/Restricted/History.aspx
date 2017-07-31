<%@ Page Language="C#" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="Restricted_History"  MasterPageFile="~/MasterPage.master"%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
  <li class="active"><asp:HyperLink NavigateUrl="~/Restricted/About.aspx" runat="server">About US</asp:HyperLink>       </li>
    <li class="active">History Page</li>
</asp:Content>

<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form3" runat="server">
     <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">History</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">This page introduces the history of our website!!
				</p>
            <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>

			</div>
        </div>
    
        <link href="styles/history.css" rel="stylesheet" type="text/css" media="all" />
        <div class="hcontainer animated wow slideInUp" data-wow-delay=".5s">
        <p align="left"><b>L&Z</b> is a website which introduces consumption level unmanned aerial vehicle (UAV). <b>L&Z</b> mainly introduces three famous brands of UAV: DJI, Zero and Xiaomi. 
        These three brands are very popular in the field of UAV. Although <b>L&Z</b> is just founded in Augest 22,2016, we have a long term goal. In the future, when we get the authorization by 
        the UAV manufacturers,<b>L&Z</b> will sale these UAV. At the same time, we have the confidence to become the leading brand in industry which sales unmanned aerial vehicle (UAV).
        </p>
            <br />
            <asp:Image ID="h1" runat="server" ImageUrl="~/images/content/history.jpg" />
        </div>
    </form>
</asp:Content>
