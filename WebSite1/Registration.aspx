<%@ Page Title="Registration" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="BodyRegistration" ContentPlaceHolderID="NotLogInContent" runat="server">

    <h3>Registration of the new user!</h3>


    <div class="card">
        <div class="card-body">

            <div class="row justify-content-center">
                <asp:TextBox ID="tbName" runat="server" AutoCompleteType="Disabled" placeholder="Name"/>
            </div>
            <div class="row justify-content-center">
                <asp:TextBox ID="tbSurname" runat="server" AutoCompleteType="Disabled" placeholder="Surname"/>
            </div>

            <hr />
            <%--//linia--%>

                <div class="row justify-content-center">
           
                <asp:TextBox ID="tbLogin" runat="server" AutoCompleteType="Disabled" placeholder="Login" />
                &nbsp
                    </div>
                    <div class="row justify-content-center">
                            <asp:Label ID="lbLongLogin" runat="server" Text="Max - 16 charachters" Visible="True"></asp:Label>
            </div>
            <div class="row justify-content-center">
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" AutoCompleteType="Disabled" placeholder="Password" />
                </div>
                <div class="row justify-content-center">
                            <asp:Label ID="Label1" runat="server" Text="Min - 6 ; Max - 32; At least [A-Z] letter " Visible="True"></asp:Label>
            </div>

            <div class="row justify-content-center">
                <asp:TextBox ID="tbConfirmPassword" runat="server" TextMode="Password" AutoCompleteType="Disabled" placeholder="Confirm Password"/>
            </div>
            <div class="row justify-content-center">
                <asp:Button Text="Submit" ID="btSubmit" runat="server" OnClick="btSubmit_Click" />
            </div>
            <div class="row justify-content-center">
                <asp:Label Text="" ID="lbErrorMessage" runat="server" ForeColor="Red" Visible="True" />
            </div>
        </div>
    </div>
</asp:Content>
