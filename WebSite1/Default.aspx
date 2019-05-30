<%@ Page Title="Default" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="BodyDefault" ContentPlaceHolderID="NotLogInContent" runat="server">

    <div class="jumbotron">
  <h1 class="display-4">Welcome! </h1>
  <p class="lead">Glad to see you</p>
  <hr class="my-4">
  <p>In order to start using this app you must sign in or create new account.</p>
        <asp:Button ID="btnSignIn" runat="server" Text="Sign in" UseSubmitBehavior="true" CssClass="btn btn-primary btn-lg" Height="49px" Width="200px" BorderColor="LightBlue" OnClick="btnSignIn_Click"/>
        <asp:Button ID="btnRegister" runat="server" Text="Register" UseSubmitBehavior="false" CssClass="btn btn-primary btn-lg" Height="49px" Width="200px" BorderColor="LightBlue" OnClick="btnRegister_Click"/>
</div>


 </asp:Content>

