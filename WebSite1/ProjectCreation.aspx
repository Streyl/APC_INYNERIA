<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProjectCreation.aspx.cs" Inherits="ProjectCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 586px;
            width: 681px;
        }
    </style>
</head>
<body style="height: 347px">
    <form id="form1" runat="server">
        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        <br />
        <asp:TextBox ID="txtName" runat="server" MaxLength="50" TabIndex="1"></asp:TextBox>
        <br />
        <asp:Label ID="lblStartDate" runat="server" Text="Start date:"></asp:Label>
        <br />
        <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date" TabIndex="2"></asp:TextBox>
        <br />
        <asp:Label ID="lblEndDate" runat="server" Text="End date:"></asp:Label>
        <br />
        <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date" TabIndex="3"></asp:TextBox>
        <br />
        <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>
        <br />
        <asp:TextBox ID="txtStatus" runat="server" MaxLength="50" TabIndex="4"></asp:TextBox>
        <br />
        <asp:Label ID="lblDescription" runat="server" Text="Description:"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescription" runat="server" Rows="10" TextMode="MultiLine" Width="600px" MaxLength="4000" style = "resize:none" TabIndex="5" Height="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblRemarks" runat="server" Text="Remarks:"></asp:Label>
        <br />
        <asp:TextBox ID="txtRemarks" runat="server" MaxLength="200" Rows="5" TextMode="MultiLine" Width="600px" style = "resize:none" TabIndex="6" Height="100px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnCreateProject" runat="server" OnClick="btnCreateProject_Click" Text="Create Project" />
    </form>
</body>
</html>
