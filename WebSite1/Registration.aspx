<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style.css" type="text/css"/> 
    <title>
        Registration
    </title>
    <style type ="text/css">
        #register{
            margin-left: 0px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="parent">
            <div id="topContent">
            </div>
        
            <div id="mainContent">


            <h3>Registration of the new user!</h3>

                <div>
                <asp:HiddenField ID="hfid" runat="server" />
            <table>
        <tr>
            <td>
                <asp:Label Text="Name" runat="server" />
            </td>
            <td colspan="2">
                <asp:TextBox ID="tbName" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="Surname" runat="server" />
            </td>
            <td colspan="2">
                <asp:TextBox ID="tbSurname" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="Login" runat="server" />
            </td>
            <td colspan="2">
                <asp:TextBox ID="tbLogin" runat="server" />
                <asp:Label Text="*" runat="server" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="Password" runat="server" />
            </td>
            <td colspan="2">
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" />
                 <asp:Label Text="*" runat="server" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="Confirm Password" runat="server" />
            </td>
            <td colspan="2">
                <asp:TextBox ID="tbConfirmPassword" runat="server" TextMode="Password" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2">
                <asp:Button Text="Submit" ID="btSubmit" runat="server" OnClick="btSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2">
                <asp:Label Text="" ID="lbSuccessMessage" runat="server" ForeColor="Green" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2">
                <asp:Label Text="" ID="lbErrorMessage" runat="server" ForeColor="White" />
            </td>
        </tr>

    </table>
            </div>

            <div id="leftContent">
             </div>
        </div>
        <div id="footerContent">
        </div>
    </form>
</body>
</html>
