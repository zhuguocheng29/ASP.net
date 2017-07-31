<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchUser.aspx.cs" Inherits="Restricted_SearchUser"MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
    <li class="active"><asp:HyperLink NavigateUrl="~/Register.aspx" runat="server"> Register Page</asp:HyperLink> </li>   
     <li class="active">SearchUser Page</li>    
</asp:Content>
<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <asp:AccessDataSource ID="searchRegister" runat="server" DataFile="~/App_Data/Register.accdb" SelectCommand="SELECT * FROM [Register]" DeleteCommand="DELETE FROM [Register] WHERE [Username] = ?" InsertCommand="INSERT INTO [Register] ([Username], [Password], [Email], [Gender], [Country], [Birthday], [UAV Brand], [Usage], [Phone number], [Home page]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Register] SET [Password] = ?, [Email] = ?, [Gender] = ?, [Country] = ?, [Birthday] = ?, [UAV Brand] = ?, [Usage] = ?, [Phone number] = ?, [Home page] = ? WHERE [Username] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String" />
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
    <form id="form1" runat="server">
         <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Search User</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">You can search users by these three attributes.
				</p>
            <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>

			</div>
        </div>
    
        <link href="styles/searchu.css" rel="stylesheet" type="text/css" media="all" />
    <div class="scontainer animated wow slideInUp" data-wow-delay=".5s">
    <table>
        <tr>
            <td colspan="2">Search by username</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="textsearchByusername" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="buttonsearchByusername" runat="server" Text="Search" CommandName="Username" OnClick="findUser" />
            </td>
        </tr>

        <tr>
            <td colspan="2">Search by email</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="textsearchByemail" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="buttonsearchByemail" runat="server" Text="Search" CommandName="Email" OnClick="findUser" />
            </td>
        </tr>

        <tr>
            <td colspan="2">Search by Country</td>
        </tr>
        <tr>
            <td>
                 <asp:DropDownList ID="listsearchByCountry" runat="server" Width="200px">
                     <asp:ListItem Selected="True">China</asp:ListItem>
                     <asp:ListItem>Australia</asp:ListItem>
                     <asp:ListItem>America</asp:ListItem>
                     <asp:ListItem>British</asp:ListItem>
                     <asp:ListItem>Japan</asp:ListItem>
                 </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="buttonsearchByCountry" runat="server" Text="Search" CommandName="Country" OnClick="findUser" />
            </td>
        </tr>

    </table>
    <br /><br /><br />

        <asp:Panel ID="panel" runat="server" ScrollBars="Auto" CssClass="secontainer" >

        <div >
        <asp:Label ID="searchreturnlabel" runat="server" Font-Italic="true" ForeColor="#e28e44" Font-Size="20px"></asp:Label>
        <asp:ListView ID="lv" runat="server">
            <ItemTemplate>
                <table id="searchtable">
                    <tr>
                        <td>Username:</td>
                        <td><%# Eval("Username") %></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><%# Eval("Email") %></td>
                    </tr>
                    <tr>
                        <td>Gender:</td>
                        <td><%# Eval("Gender") %></td>
                    </tr>
                    <tr>
                        <td>Country:</td>
                        <td><%# Eval("Country") %></td>
                    </tr>
                    <tr>
                        <td>Birthday:</td>
                        <td><%# Eval("Birthday") %></td>
                    </tr>
                    <tr>
                        <td>UAV Brand:</td>
                        <td><%# Eval("UAV Brand") %></td>
                    </tr>
                    <tr>
                        <td>Usage:</td>
                        <td><%# Eval("Usage") %></td>
                    </tr>
                    <tr>
                        <td>Phone_number:</td>
                        <td><%# Eval("Phone number") %></td>
                    </tr>
                    <tr>
                        <td>Home_page:</td>
                        <td><%# Eval("Home page") %></td>
                    </tr>
                    <tr>
                        <td colspan="2"> <hr /></td>
                    </tr>



                </table>
            </ItemTemplate>
        </asp:ListView>
            </div>
            </asp:Panel>
    </div>
    </form>
</body>
</html>
</asp:Content>