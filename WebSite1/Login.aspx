<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="BodyLogin" ContentPlaceHolderID="NotLogInContent" runat="server">






    <div class="card text-center-md shadow p-3 mb-2 bg-white " style="max-width: 25rem; min-width: 10rem;">
        <asp:Panel ID="pnlLogIn" runat="server">
            <div class="card-header">
                <asp:Label ID="Label1" runat="server" Text="Sign in"></asp:Label>
            </div>
            <div class="card-body">
                &nbsp;
        <div class="row justify-content-center">
            <asp:TextBox ID="tbLogin" runat="server" AutoCompleteType="Disabled" CssClass="auto-style1" placeholder="Login"></asp:TextBox>
            <br />
            <br />
        </div>
                <div class="row justify-content-center">

                    <asp:TextBox ID="tbPassword" runat="server" AutoCompleteType="Disabled" Style="margin-top: 9px" TextMode="Password" CssClass="auto-style1" placeholder="Password"></asp:TextBox>
                </div>
                <div class="row justify-content-center">
                    <asp:Button ID="bConfirm" CssClass="btn btn-success" runat="server" OnClick="bConfirm_Click" Text="Confirm" value="Submit" Style="margin-left: 0" />
                </div>
            </div>
            <div class="card-footer ">
                <div class="row">
                    <asp:Label ID="lblWrongSignIn" runat="server" Text="Wrong Login or/and Password" Visible="False" Width="220px" Font-Italic="True" Font-Size="14px" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </asp:Panel>
    </div>



</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="Panel1" runat="server" Height="214px" Width="389px">
        <asp:Label ID="Label4" runat="server" Text="You are log in now"></asp:Label>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style1 {
            border-radius: .25rem !important;
        }

        .auto-style2 {
            border-radius: .25rem !important;
            margin-left: 0px;
        }
    </style>
</asp:Content>
