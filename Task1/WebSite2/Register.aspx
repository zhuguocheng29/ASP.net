<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" MasterPageFile="~/MasterPage.master" %>

 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
     <li class="active">Register Page</li>
</asp:Content>
<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 
    <script  type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
                <link rel="stylesheet" type="text/css" href="css/jquery-ui.css"/>
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
<link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"/> 
<%--<script src="js/wow.min.js"></script>--%>
<link href="styles/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="styles/style1.css" rel="stylesheet" type="text/css" media="all" />
    <link href="styles/indextable.css" rel="stylesheet" type="text/css" media="all" />
  <link href="styles/animate.min.css" rel="stylesheet"/> 
<script src="js/wow.min.js"></script>
<script>
    new WOW().init();
</script>
    <div>
 <%--   <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><asp:HyperLink NavigateUrl="~/index.aspx" runat="server"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</asp:HyperLink></li>
				<li class="active">Register Page</li>
			</ol>
		</div>
	</div>--%>
    <div>
              
    <div class="container">
       <ul>
        <li>
            <a href="Restricted/GetAllUser.aspx" target="_blank">Click here to see all users</a>
        </li>
                <li>
            <a href="Restricted/SearchUser.aspx" target="_blank">Click here to search users</a>
        </li>
    </ul>
        </div>

    <asp:AccessDataSource ID="DBRegister" runat="server" DataFile="~/App_Data/Register.accdb" 
        DeleteCommand="DELETE FROM [Register] WHERE [Username] = ?" 
        InsertCommand="INSERT INTO [Register] ([Username], [Password], [Email], [Gender], [Country], [Birthday], [UAV Brand], [Usage], [Phone number], [Home page]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT [Username], [Password], [Email], [Gender], [Country], [Birthday], [UAV Brand] AS UAV_Brand, [Usage], [Phone number] AS Phone_number, [Home page] AS Home_page FROM [Register]" 
        UpdateCommand="UPDATE [Register] SET [Password] = ?, [Email] = ?, [Gender] = ?, [Country] = ?, [Birthday] = ?, [UAV Brand] = ?, [Usage] = ?, [Phone number] = ?, [Home page] = ? WHERE [Username] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String"  />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Birthday" Type="String" />
            <asp:Parameter Name="UAV_Brand" Type="String" />
            <asp:Parameter Name="Usage" Type="String" />
            <asp:Parameter Name="Phone_number" Type="String" />
            <asp:Parameter Name="Home_page" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Birthday" Type="String" />
            <asp:Parameter Name="UAV_Brand" Type="String" />
            <asp:Parameter Name="Usage" Type="String" />
            <asp:Parameter Name="Phone_number" Type="String" />
            <asp:Parameter Name="Home_page" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
        <asp:AccessDataSource ID="DBRegister_1" runat="server" DataFile="~/App_Data/Register.accdb" SelectCommand="SELECT * FROM [Register]"></asp:AccessDataSource>

            <form id="FormRegister" runat="server">
               <div class="register">
<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Register Here</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">If you don't have any accounts, please register it first ! </p>
           <%--<p class="est animated wow zoomIn" data-wow-delay=".7s">Logout ! </p>--%>

			<div class="register-form-grids animated wow slideInUp" data-wow-delay=".5s">
        

<%--    <form id="FormRegister" runat="server">--%>
                 <asp:Label ID="username_label" runat="server" Font-Bold="true">Username:</asp:Label>
                 <p></p>
                 <asp:TextBox ID="username_textbox" runat="server" CssClass="usernameicon"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vldusername" runat="server" ErrorMessage="Please enter your name"
                      ControlToValidate="username_textbox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="username_textbox" OnServerValidate="ValidateUsername" ></asp:CustomValidator>
               
                <asp:Label ID ="username_label_test" runat="server" ForeColor="Red"></asp:Label>
   <p>  </p>
                <br />
                 <asp:Label ID="password_label" runat="server" Font-Bold="true" >Password: (Length of 5 - 10)</asp:Label>
                 <p></p>
                 <asp:TextBox ID="password_textbox" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vldpassword" runat="server" ErrorMessage="Please enter your password"
                      ControlToValidate="password_textbox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="regpassword" runat="server" ControlToValidate="password_textbox" ValidationExpression="[A-Za-z0-9]{5,10}$" ErrorMessage="Please enter valid password" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
                 <asp:Label ID="ConfirmPassword_label" runat="server" Font-Bold="true">Confirm password:</asp:Label>
                 <p></p>
                 <asp:TextBox ID="confirm_password_textbox" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vldconfirm_password" runat="server" ErrorMessage="Please enter the confirm password"
                     ControlToValidate="confirm_password_textbox" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="cmpconfirm_password" runat="server" ControlToValidate="password_textbox" ControlToCompare="confirm_password_textbox" ForeColor="Red" ErrorMessage="Please enter the same password"></asp:CompareValidator>
               
        <br />
                 <asp:Label ID="email_label" runat="server" Font-Bold="true">Email:</asp:Label>
                 <p></p>
                 <asp:TextBox  ID="email_textbox" runat="server" CssClass="emailicon"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vldemail" runat="server" ErrorMessage="Please enter the correct email"
                     ControlToValidate="email_textbox" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="regemail" runat="server" ControlToValidate="email_textbox" ValidationExpression=".*@.*\..*" ErrorMessage="Please enter valid email" ForeColor="Red"></asp:RegularExpressionValidator>
               
        <br />
                 <asp:Label ID="gender_label" runat="server" Font-Bold="true">Gender:</asp:Label>
                 <p></p>
                 <asp:RadioButtonList  ID="radlgender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                     <asp:ListItem  Selected="True">Male</asp:ListItem>
                     <asp:ListItem>Female</asp:ListItem>
                 </asp:RadioButtonList>
                <p>  </p>    
        <br />
    
                 <asp:Label ID="country_label" runat="server" Font-Bold="true">Country:</asp:Label>
                 <p></p>
                 <asp:DropDownList ID="countrylist" runat="server" Font-Size="Medium" CssClass="country">
                     <asp:ListItem Selected="True">China</asp:ListItem>
                     <asp:ListItem>Australia</asp:ListItem>
                     <asp:ListItem>America</asp:ListItem>
                     <asp:ListItem>British</asp:ListItem>
                     <asp:ListItem>Japan</asp:ListItem>
                 </asp:DropDownList>
              <p> </p>
        <br />
                 <asp:Label ID="birthday_label" runat="server" Font-Bold="true">Birthday:</asp:Label>
                 <p></p>
                 <asp:TextBox ID="birthday_textbox" runat="server" CssClass="Wdate"  height="40px"
                    onFocus="WdatePicker({lang:'en', dateFmt:'MM/dd/yyyy'})" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="validatebirthday" runat="server" ErrorMessage="Please enter the your birthday"
                     ControlToValidate="birthday_textbox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:CustomValidator ID="vldbirthday" runat="server" ControlToValidate="birthday_textbox" OnServerValidate="ValidateDate" ></asp:CustomValidator>
                <asp:Label ID ="birthday_label_test" runat="server"></asp:Label>
             <p></p>
        <br />
                 <asp:Label ID="brand_label" runat="server" Font-Bold="true">UAV Brand:</asp:Label>
                 <p></p>
                 <asp:ListBox ID="lstbrand" runat="server">
                     <asp:ListItem Selected="True">DJI</asp:ListItem>
                     <asp:ListItem>Zero</asp:ListItem>
                     <asp:ListItem>Xiaomi</asp:ListItem>
                 </asp:ListBox>
               <p></p>
        <br />
                 <asp:Label ID="usage_label" runat="server" Font-Bold="true">Usage:</asp:Label>
                 <p></p>
                 <asp:CheckBox  ID="chkaerial" runat="server" Text="aerial photography" Checked="true"/> 
                 <asp:CheckBox ID="chkphoto" runat="server" Text="Record" />
                 <asp:CheckBox ID="chkentertainment" runat="server" Text="Entertainment"/>
               <p></p>
        <br />
                 <asp:Label ID="phonenumber_label" runat="server" Font-Bold="true">Phone number:</asp:Label>
                 <p></p>
                 <asp:TextBox ID="phonenumber_textbox" runat="server" CssClass="phoneicon"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vldphonenumber" runat="server" ErrorMessage="Please enter your phone number"
                     ControlToValidate="phonenumber_textbox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RangeValidator ID="rangphonenumber" runat="server" ControlToValidate="phonenumber_textbox"
                      ErrorMessage="Please enter the length of phone number between 1 and 99999999" MinimumValue="1" MaximumValue="99999999" Type="Integer" ForeColor="Red"></asp:RangeValidator>
                 
<br />
                 <asp:Label ID="Homepage_label" runat="server" Font-Bold="true">Home page:</asp:Label>
                 <p></p>
                 <asp:TextBox ID="homepage_textbox" runat="server" CssClass="homepageicon"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vldhomepage" runat="server" ErrorMessage="Please enter your home page"
                     ControlToValidate="homepage_textbox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="homepage_textbox" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- .%&amp;=]*)?" ErrorMessage="Please enter valid Home page" ForeColor="Red"></asp:RegularExpressionValidator>
               
        <br />
                <asp:Button ID="Register_button" runat="server" Text="Register" OnClick="add"/>
                <asp:Button ID ="reset_button" runat="server" Text="Reset" OnClick="reset" CausesValidation="false" />

           <div class="re">
                 <asp:ListView ID="lvUser" runat="server" >
                         
            <ItemTemplate> 
                <table>
                    <tr>
                        <td>
                            Username:
                        </td>
                        <td>
                            <%# Eval("Username") %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password:
                        </td>
                        <td>
                            <%# Eval("Password") %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email:
                        </td>
                        <td>
                            <%# Eval("Email") %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender:
                        </td>
                        <td>
                            <%# Eval("Gender") %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Country:
                        </td>
                        <td>
                            <%# Eval("Country") %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Birthday:
                        </td>
                        <td>
                            <%# Eval("Birthday") %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            UAV Brand:
                        </td>
                        <td>
                            <%# Eval("UAV Brand") %>
                        </td>                     
                    </tr>
                    <tr>
                        <td>
                            Usage:
                        </td>
                        <td>
                            <%# Eval("Usage") %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Phone number:
                        </td>
                        <td>
                            <%# Eval("Phone number") %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Home page:
                        </td>
                        <td>
                            <%# Eval("Home page") %>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>

        </asp:ListView>
</div>


         <%--</form>--%>
      
 <%--   </div>--%>
       </div>
    </div>
               </div>
      </form>
        </div>
    <p>
&nbsp;
    </p>
        </div>
</asp:Content>
<%--            </body>
</html>--%>
     <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
         <li>
            <%--<asp:Button ID="homepage_button1" runat="server" OnClick="JumpToAdRotator" /> --%>
            <a href="Restricted/DisplayCode.aspx?filename=Register.aspx" target="_blank"><img src="images/content/add.jpg" /></a><br />
            <a href="Restricted/DisplayCode.aspx?filename=GetAllUser.aspx" target="_blank"><img src="Restricted/images/content/displayr.jpg" /></a><br />
            <a href="Restricted/DisplayCode.aspx?filename=SearchUser.aspx" target="_blank"><img src="Restricted/images/content/searchr.jpg" /></a>
         <%--   <form id="adds" runat="server">
            <asp:ImageButton ID="addrecord" ImageUrl="~/images/content/add.jpg" runat="server" OnClick="adds_Click" />
            </form>--%>
        </li>
   </asp:Content>