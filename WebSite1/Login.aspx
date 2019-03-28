<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="BodyLogin" ContentPlaceHolderID="NotLogInContent" runat="server">

    <asp:panel id="pnlLogIn" runat="server" height="214px" width="389px">
                <asp:Label ID="Label1" runat="server" Text="Sign in"></asp:Label>
                <br/>
                <asp:Label ID="Label2" runat="server" Text="Login"></asp:Label>
                &nbsp;
                <asp:TextBox ID="tbLogin" runat="server" AutoCompleteType="Disabled" OnTextChanged="TextBox1_TextChanged" style="margin-left: 39px" Width="154px"></asp:TextBox>
                <br />
                &nbsp;<br />
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="tbPassword" runat="server" AutoCompleteType="Disabled" style="margin-top: 9px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Label ID="lblWrongSignIn" runat="server" Text="Wrong Login or/and Password" Visible="False" Height="25px" Width="300px"></asp:Label>
               
                <asp:Button ID="bConfirm" runat="server" OnClick="bConfirm_Click" Text="Confirm" />
            </asp:panel>

    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

            <asp:Panel ID="Panel1" runat="server" Height="214px" Width="389px">
                <asp:Label ID="Label4" runat="server" Text="You are log in now"></asp:Label>

            </asp:Panel>

    </asp:Content>