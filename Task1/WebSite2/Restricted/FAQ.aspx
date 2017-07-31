<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="Restricted_FAQ" MasterPageFile="~/MasterPage.master" %>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
    <li class="active"><asp:HyperLink NavigateUrl="~/Restricted/About.aspx" runat="server">About US</asp:HyperLink></li>   
     <li class="active">FAQ Page</li>    
</asp:Content>

<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <form id="form4" runat="server">
        <link href="styles/faq.css" rel="stylesheet" type="text/css" media="all" />
        <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">FAQ</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">This page is help to slove some common problems!!
				</p>
            <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>

			</div>
        </div>
        <div class="fcontainer animated wow slideInUp" data-wow-delay=".5s">
        <asp:Label ID="faq_l1" runat="server" Font-Bold="true">Q: What's the meaning of FAQ ?</asp:Label>
        <br />
        <b>A: </b> <span>FAQ stands for Frequently Asked Question. In FAQ, we will explain any questions when you visit <b>L&Z</b>.</span>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="true">Q: What are the L&Z ?</asp:Label>
        <br />
        <b>A: </b> <span><b>L&Z</b> is a website about unmanned aerial vehicle.It mainly introduces three kinds of UAV:Zero. DJI and XiaoMI. </span>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="true">Q: How to visit the L&Z ?</asp:Label>
        <br />
        <b>A: </b> <span>First, you should register an account, then log in. After logging in, you can visit other webpages except Home page. </span>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="true">Q: What's the usage of site map webpage ?</asp:Label>
        <br />
        <b>A: </b> <span>Help you to know the structure of <b>L&Z</b>.</span>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="true">Q: Can we send the email by email page ?</asp:Label>
        <br />
        <b>A: </b> <span>Yes, but you need have a monash account first.</span>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="true">Q: Where can we buy these UAV ?</asp:Label>
        <br />
        <b>A: </b> <span>Now, you need to visit the official website of maufacturer, then you buy these UAV. In the future, <b>L&Z</b> will support online shopping.  </span>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="true">Q: Who develop L&Z?</asp:Label>
        <br />
        <b>A: </b> <span>Hahaha, monash talented student: Emily and Wayne.</span>

        </div>
    </form>
</asp:Content>
