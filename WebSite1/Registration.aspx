<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style.css" type="text/css"/> 
    <title>
        Registration
    </title>
    <style type="text/css">
        #form1 {
            height: 586px;
            width: 681px;
        }
    </style>
</head>
<body style="height: 347px">
    <form id="registration" runat="server"> <%--form 1--%>
                <h3>Registration of the new user!</h3>

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
                        <hr /> <%--//linia--%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label Text="Login" runat="server" />
                        </td>
                        <td colspan="2">
                        <asp:TextBox ID="tbLogin" runat="server" />
                            &nbsp
                            <asp:Label ID="lbLongLogin" runat="server" Text="Max - 16 charachters"  Visible="True" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label Text="Password" runat="server" />
                        </td>
                        <td colspan="2">
                        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" />
                            &nbsp
                            <asp:Label ID="Label1" runat="server" Text="Min - 6 ; Max - 32; At least [A-Z] letter "  Visible="True" ></asp:Label>

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
                        <asp:Label Text="" ID="lbErrorMessage" runat="server" ForeColor="Red" Visible="True" />
                        </td>
                    </tr>
                </table>
    </form>
</body>
</html>
