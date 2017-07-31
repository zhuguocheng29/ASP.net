<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetAllUser.aspx.cs" Inherits="Restricted_GetAllUser" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
    <li class="active"> <asp:HyperLink NavigateUrl="~/Register.aspx" runat="server">Register Page</asp:HyperLink> </li>   
     <li class="active">GetAllUser Page</li>    
</asp:Content>
<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <asp:AccessDataSource ID="getAllUserNormal" runat="server" DataFile="~/App_Data/Register.accdb" SelectCommand="SELECT * FROM [Register]"></asp:AccessDataSource>
    
    <asp:AccessDataSource ID="getAllUserDetail" runat="server" DataFile="~/App_Data/Register.accdb" 
        SelectCommand="SELECT [Username], [Password], [Email], [Gender], [Country], [Birthday], [UAV Brand] AS UAV_Brand, [Usage], [Phone number] AS Phone_number, [Home page] AS Home_page FROM [Register] WHERE ([Username] = ?)">

    
     <SelectParameters>
      <asp:ControlParameter ControlID="gvgetAllUser"
        Name="Username" PropertyName="SelectedValue"
        Type="String" />

    </SelectParameters>
    </asp:AccessDataSource>

    <form id="form1" runat="server">
         <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">View Users</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">This page help you get the information of  all users !!
				</p>
            <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>

			</div>
        </div>
    
        <link href="styles/viewu.css" rel="stylesheet" type="text/css" media="all" />
    <div class="vcontainer animated wow slideInUp" data-wow-delay=".5s">
        <asp:GridView ID="gvgetAllUser" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="getAllUserNormal" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:BoundField DataField="UAV Brand" HeaderText="UAV Brand" SortExpression="UAV Brand" />
                <asp:BoundField DataField="Usage" HeaderText="Usage" SortExpression="Usage" />
                <asp:BoundField DataField="Phone number" HeaderText="Phone number" SortExpression="Phone number" />
                <asp:HyperLinkField DataTextField="Home page" HeaderText="Home page" DataNavigateUrlFields="Home page" />
                <asp:ButtonField CommandName="Select" HeaderText="View Detail" ShowHeader="True" Text="View Detail" />
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
    </div>
        <br />
        <br />
    <div class="vicontainer">
        <asp:DetailsView ID="dtgetAllUser" runat="server" DataSourceID="getAllUserDetail"
            DataKeyNames="Username"
            AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" HeaderText="Details"
            >
           
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
           
            <EditRowStyle BackColor="#999999" />
           
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
           
            <Fields>
           
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:BoundField DataField="UAV_Brand" HeaderText="UAV_Brand" SortExpression="UAV_Brand" />
                <asp:BoundField DataField="Usage" HeaderText="Usage" SortExpression="Usage" />
                <asp:BoundField DataField="Phone_number" HeaderText="Phone_number" SortExpression="Phone_number" />
                <asp:BoundField DataField="Home_page" HeaderText="Home_page" SortExpression="Home_page" />
            </Fields>
            

            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            

        </asp:DetailsView>

    </div>
    </form>
</body>
</html>
</asp:Content>