<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayCode.aspx.cs" Inherits="Restricted_DisplayCode" %>

<!DOCTYPE html>
<link href="styles/showcode.css" rel="stylesheet" type="text/css" media="all" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <h1 class="pageHeader">Source Code</h1>
      <asp:Label ID="FileName" CssClass="codeheader" runat="server" />
      <p></p>
      <p></p>
      <asp:Panel ID="pnlCode" CssClass="code" runat="server" Width="80%">
        <asp:Label ID="Code" runat="server" />
      </asp:Panel>

        <br />
      <asp:Label ID="Label1" CssClass="codeheader" runat="server" />
      <p></p>
      <p></p>
      <asp:Panel ID="Panel1" CssClass="code" runat="server" Width="80%" Visible="false">
        <asp:Label ID="Label2" runat="server" />
      </asp:Panel>

      <br />
      <asp:Label ID="Label3" CssClass="codeheader" runat="server" />
      <p></p>
      <p></p>
      <asp:Panel ID="Panel2" CssClass="code" runat="server" Width="80%" Visible="false">
        <asp:Label ID="Label4" runat="server" />
      </asp:Panel>


    </div>
    </form>
</body>
</html>
