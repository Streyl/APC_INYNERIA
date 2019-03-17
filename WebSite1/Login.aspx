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
        </div>
        
        <div id="mainContent">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Sign in"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Login"></asp:Label>
            <asp:TextBox ID="tbLogin" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 39px" Width="154px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <input id="tbPassword" type="password" /></div>

        <div id="leftContent">
         </div>
        </div>
<div id="footerContent">
            </div>

    </form>

        


    </body>
</html>
