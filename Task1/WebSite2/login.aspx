﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" MasterPageFile="~/MasterPage.master"%>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
    <li class="active">Login Page</li>
</asp:Content>

    <asp:Content ID="mainContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <!DOCTYPE html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">

<body>--%>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="styles/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="styles/style1.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
	<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<link rel="stylesheet" type="text/css" href="styles/jquery-ui.css"/>
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
<link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>
<!-- animation-effect -->
<link href="styles/animate.min.css" rel="stylesheet"/> 
<script src="js/wow.min.js"></script>
<script>
    new WOW().init();
</script>
<link href="styles/comm.css" rel="stylesheet" type="text/css" />
      <%--  <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><asp:HyperLink NavigateUrl="~/index.aspx" runat="server"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</asp:HyperLink></li>
				<li class="active">Login Page</li>
			</ol>
            </div>
	</div>--%>
<!-- //breadcrumbs -->
<!-- login -->

	<div class="login">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Login</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Please enter valid UserName and Password !!!</p>

            <asp:AccessDataSource ID="DS1" runat="server" DataFile="~/App_Data/Register.accdb" SelectCommand="SELECT [Username], [Password] FROM [Register]" OnSelected="CheckLogin"></asp:AccessDataSource>




			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
<%--				<form>
					<input type="email" placeholder="Email Address" required=" " >
					<input type="password" placeholder="Password" required=" " >
					<div class="forgot">
						<a href="#">Forgot Password?</a>
					</div>
					<!--<input type="submit" value="Login" >-->
                     <asp:Button ID="mybutton" runat="server"  Text="Login" />
				</form>--%>

               <%-- <form id="Form1" runat="server">
                    <div>
                        <asp:Login ID="login_1" runat="server"
                            OnAuthenticate="Login_Authenticate"
                            UserNameLabelText = "Username:"
                            UserNameRequiredErrorMessage="Username required"
                            PasswordRequiredErrorMessage="Password required" CssClass="login1"
                            LoginButtonText="Click to login" DisplayRememberMe="False">
                        </asp:Login>
                    <p />
                    <asp:ValidationSummary ID="vlSummary1" Font-Names="Arial" Visible="true" runat="server" 
                        ValidationGroup="login_1" 
                        HeaderText="Please correct the following errors:" />
                    </div>
                </form>--%>

                     <form id="Form1" runat="server">
                <%--    <div>
                        <asp:Login ID="login_1" runat="server"
                            OnAuthenticate="Login_Authenticate"
                            TitleText="<br/>Please enter your details: <br/><br/>"
                            UserNameLabelText = "Username:" 
                            UserNameRequiredErrorMessage="Username required"
                            PasswordRequiredErrorMessage="Password required" CssClass="login1"
                            LoginButtonText="Click to login" DisplayRememberMe="False">
                        </asp:Login>
                    <p />
                    <asp:ValidationSummary ID="vlSummary1" Font-Names="Arial" Visible="true" runat="server" 
                        ValidationGroup="login_1" 
                        HeaderText="Please correct the following errors:" />
                    </div>--%>
             
                    <div>
                        <asp:Login ID="login_1" runat="server" OnAuthenticate="Login_Authenticate">

                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <LayoutTemplate>
                                <table style="border-collapse:separate; border-spacing:10px;" >
                                  <tr>
                                    <td>
                                      <asp:Label ID="UserNameLabel" runat="server"
                                        AssociatedControlID="UserName" Font-Size="Medium">
                                        Username:</asp:Label>
                                    </td>
                                    <td>
                                      <asp:TextBox ID="UserName" runat="server"/>
                                      <asp:RequiredFieldValidator ID="UserNameRequired" runat="server"
                                        ControlToValidate="UserName" ErrorMessage="Username is required."
                                        ToolTip="User Name is required." ValidationGroup="Login1">*
                                      </asp:RequiredFieldValidator>
                                    </td>
                                  </tr>
                                 
           
                                    <tr><td></td><td></td></tr>
                                  <tr>
                                    <td> 
                                      <asp:Label ID="PasswordLabel" runat="server"
                                        AssociatedControlID="Password" Font-Size="Medium">
                                        Password:</asp:Label>
                                    </td>
                                    <td>
                                      <asp:TextBox ID="Password" runat="server"
                                        TextMode="Password"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="PasswordRequired" runat="server"
                                        ControlToValidate="Password" ErrorMessage="Password is required."
                                        ToolTip="Password is required." ValidationGroup="Login1">*

                                      </asp:RequiredFieldValidator>
                                    </td>
                                  </tr>

                                  <tr>
                                    <td colspan="2">
                                      <asp:Button ID="LoginButton" runat="server" 
                                        CommandName="Login" Text="Login" ValidationGroup="Login1"  Width="300px" Font-Size="Medium"/>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td align="center" colspan="2" style="color: Red;">
                                      <asp:Literal ID="FailureText" runat="server" EnableViewState="False" />
                                    </td>
                                  </tr>
                                </table>
                        </LayoutTemplate>

                        </asp:Login>

                        <asp:ValidationSummary ID="vlSummary1" Font-Names="Arial" Visible="true" CssClass="vldSummary"
                        runat="server" ValidationGroup="Login1"
                        HeaderText="Please correct the following errors:" />

                    </div>
                </form>


			</div>
			<h4 class="animated wow slideInUp" data-wow-delay=".5s">For New People</h4>
			<p class="animated wow slideInUp" data-wow-delay=".5s"><asp:HyperLink NavigateUrl="~/Register.aspx" runat="server">Register Here</asp:HyperLink>  (Or) go back to<asp:HyperLink NavigateUrl="~/index.aspx" runat="server">Home ></asp:HyperLink> </p>
		</div>
	</div>
<%--    </body>
    </html>--%>
        </asp:Content>

   <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <li>
            <a href="Restricted/DisplayCode.aspx?filename=login.aspx&other=Web.config" target="_blank"><img src="images/content/showlogin.jpg" /> </a>
            <%--<a href="Restricted/DisplayCode.aspx?filename=Web.config" target="_blank"><span class="span1">Web.config</span></a>--%>
        </li>
   </asp:Content>