<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="Style.css" type="text/css"/>  

    <title>Login Page</title>
    <style type="text/css">
        #Password1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="parent">
        <div id="topContent">
            <asp:Button ID="bLogout" runat="server" OnClick="bLogout_Click" Text="Logout" />
        </div>
        
        <div id="mainContent">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Panel ID="pnlLogIn" runat="server" Height="214px" Width="389px">
                <asp:Label ID="Label1" runat="server" Text="Sign in"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Login"></asp:Label>
                <asp:TextBox ID="tbLogin" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 39px" Width="154px" AutoCompleteType="Disabled"></asp:TextBox>
                <br />
                &nbsp;<br />
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="tbPassword" runat="server" AutoCompleteType="Disabled" style="margin-top: 9px" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblWrongSignIn" runat="server" Text="Wrong Login or/and Password" Visible="False" Height="25px" Width="300px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bConfirm" runat="server" OnClick="bConfirm_Click" Text="Confirm" />
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>

        <div id="leftContent">
         </div>
        </div>
<div id="footerContent">
            </div>

    </form>

        


    </body>
</html>