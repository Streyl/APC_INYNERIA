<%@ Page Title="UserConfiguration" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserConfiguration.aspx.cs" Inherits="UserConfiguration" %>

	<asp:Content ID="IDPageBody" ContentPlaceHolderID="MainContent" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Label  runat="server" Text="Change Login"></asp:Label>
                </td>
                <td colspan="2">
                     <asp:TextBox ID="tbChangeLogin" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Change Password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="tbChangePassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="bSubmitChange" runat="server" Text="SubmitChanges" />
                </td>
            </tr>
        </table>


 	</asp:Content>

	<asp:Content ID="Content1" ContentPlaceHolderID="NotLogInContent" runat="server">

				U have to Log IN

 	</asp:Content>
