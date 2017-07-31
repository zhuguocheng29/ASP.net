<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Restricted_Default" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
 <form id="form2" runat="server">
    <div>
        Welcome, <asp:Label ID="lblUser" runat="server" />, to the Inner Sanctum
        <p />
        you have used <asp:Label ID="lblType" runat="server"/>

        authentication to log on.
        <p />
        <asp:Button ID="Button1"  Text="Logout" OnClick="Logout_Click" runat="server"/>
    </div>
    </form>
</body>
</html>
</asp:Content>