<%@ Page Title="UserConfiguration" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserConfiguration.aspx.cs" Inherits="UserConfiguration" %>

	<asp:Content ID="IDPageBody" ContentPlaceHolderID="MainContent" runat="server">
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label  runat="server" Text="User Configuration"></asp:Label>
                </td>
            </tr>
            <tr>
               
                <td>
                    <asp:Label  runat="server" Text="Change Name"></asp:Label>
                </td>
                <td colspan="2">
                     <asp:TextBox ID="tbChangeName" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                
                <td>
                    <asp:Label  runat="server" Text="Change Sirname"></asp:Label>
                </td>
                <td colspan="2">
                     <asp:TextBox ID="tbChangeSurname" runat="server" ></asp:TextBox>
                </td>

            </tr>
             <tr>
                <td colspan="4">
                    <asp:Label ID="lbErrorMessageUP" runat="server" Text="Error" ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button ID="bSubmitNameSirname" runat="server" Text="Submit" OnClick="bSubmitNameSirname_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <hr />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label  runat="server" Text="Password Change"></asp:Label>
                </td>
            </tr>

            <tr>
                
                <td>
                    <asp:Label runat="server" Text="Old Password"></asp:Label>
                </td>
                <td colspan="2">
                     <asp:TextBox ID="tbOldPassword" runat="server" TextMode="Password" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                 
                <td>
                    <asp:Label runat="server" Text="New Password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="tbNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                 
                <td>
                    <asp:Label runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="tbConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <hr />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lbErrorMessageDown" runat="server" Text="Error" ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button ID="bSubmitChange" runat="server" Text="Submit" OnClick="bSubmitChange_Click" />
                </td>
            </tr>
        </table>


 	</asp:Content>

	<asp:Content ID="Content1" ContentPlaceHolderID="NotLogInContent" runat="server">

				U have to Log IN

 	</asp:Content>
