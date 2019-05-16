<%@ Page Title="TaskCreation" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TaskCreation.aspx.cs" Inherits="TaskCreation" %>


<asp:Content ID="BodyTaskCreation" ContentPlaceHolderID="MainContent" runat="server">

    <table>

            <tr>
                <td  >

            <asp:Label ID="Label5" runat="server" Text="Project"></asp:Label>

                </td>
                    <td>
                        <asp:DropDownList ID="ddlChoseProject" runat="server" Width="290px">
                        </asp:DropDownList>
                    </td>
                </tr>
        <tr>
        <td class="auto-style1">

            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>

        </td>

        <td>

            <asp:TextBox ID="tbName" runat="server" Width="286px" ></asp:TextBox>

            </td>
               </tr>
        <tr>
                 <td class="auto-style1">

                     <asp:Label ID="Label2" runat="server" Text="Leader"></asp:Label>

        </td>

        <td>

            <asp:TextBox ID="tbLeader" runat="server" Width="284px"></asp:TextBox>

            </td>
            </tr>
                <tr>
                 <td class="auto-style1">

                     <asp:Label ID="Label3" runat="server" Text="Status"></asp:Label>

        </td>

        <td>

            <asp:DropDownList ID="ddlStatus" runat="server" Width="293px">
                <asp:ListItem>Undone</asp:ListItem>
                <asp:ListItem>Finish</asp:ListItem>
                <asp:ListItem>Cancel</asp:ListItem>
                <asp:ListItem>Pause</asp:ListItem>
            </asp:DropDownList>

            </td>
            </tr>
                <tr>
                 <td class="auto-style1">

                     <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>

        </td>

        <td >

            <asp:TextBox ID="tbDescription" runat="server" Height="224px" Width="291px" TextMode="MultiLine"></asp:TextBox>

            </td>
            </tr>
        <tr>
            <td>
                </td>
            <td colspan="2" >
                <asp:Button ID="bSubmit" runat="server" OnClick="bSubmit_Click" Text="Submit" Width="296px" CssClass="center"/>
                </td>

            </tr>

        


    </table> 


 </asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 101px;
        }
        </style>
</asp:Content>


