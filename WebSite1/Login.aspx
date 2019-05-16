<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="BodyLogin" ContentPlaceHolderID="NotLogInContent" runat="server">







    <div class="card text-center-sm shadow p-3 mb-2 bg-white " style="max-width: 25rem;" >
  <div class="card-header">
                <asp:Label ID="Label1" runat="server" Text="Sign in"></asp:Label>
  </div>
  <div class="card-body">

    <asp:panel id="pnlLogIn" runat="server" height="214px" width="389px">


                <asp:Label ID="Label2" runat="server" Text="Login"></asp:Label>
                &nbsp;
                <asp:TextBox ID="tbLogin" runat="server" AutoCompleteType="Disabled" style="margin-left: 20px" Width="180px" CssClass="auto-style1"></asp:TextBox>
                <br />
                &nbsp;<br />
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                &nbsp;
                <asp:TextBox ID="tbPassword" runat="server" AutoCompleteType="Disabled" style="margin-top: 9px" TextMode="Password" CssClass="auto-style1"></asp:TextBox>
  <br/>
                <asp:Button ID="bConfirm" CssClass="btn btn-success"  input type="submit" runat="server" OnClick="bConfirm_Click" Text="Confirm"  value="Submit" style="margin-left: 0"/>
  </div>
  <div class="card-footer ">
                <asp:Label ID="lblWrongSignIn" runat="server" Text="Wrong Login or/and Password" Visible="False" Width="300px" Font-Italic="True" Font-Size="14px" ForeColor="Red"></asp:Label>
               
  </div>
            </asp:panel>
</div>

    
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

            <asp:Panel ID="Panel1" runat="server" Height="214px" Width="389px">
                <asp:Label ID="Label4" runat="server" Text="You are log in now"></asp:Label>

            </asp:Panel>

    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        border-radius: .25rem!important;
    }
</style>
</asp:Content>
