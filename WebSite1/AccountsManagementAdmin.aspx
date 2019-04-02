<%@ Page Title="UsersManagment" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/AccountsManagementAdmin.aspx.cs" Inherits="AccountsManagementAdmin" %>


<asp:Content ID="BodyAccountsManagment" ContentPlaceHolderID="MainContent" runat="server">


    <style type="text/css">
        .auto-style2 {
            height: 26px;
            width: 93px;
        }
        .auto-style4 {
            height: 26px;
            width: 169px;
        }
        .auto-style5 {
            width: 169px;
        }
        .auto-style6 {
            width: 93px;
        }
        .auto-style7 {
            width: 32%;
            margin-left: 0px;
        }
        </style>

        <div>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style2">Search</td>
                    <td class="auto-style4">
                        <asp:RadioButtonList ID="rdlSearchCheck" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatColumns="5" Width="332px">
                            <asp:ListItem Selected="True">Login</asp:ListItem>
                            <asp:ListItem>Name</asp:ListItem>
                            <asp:ListItem>Surname</asp:ListItem>
                            <asp:ListItem>Status</asp:ListItem>
                            <asp:ListItem>Level</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    
                </tr>

                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnSearch" runat="server" OnClick="Button1_Click" Text="Search" />
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblText1" runat="server" Text="Login"></asp:Label>
                        <asp:TextBox ID="tbLogin" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style6">
                                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Button ID="btnYes" runat="server"  Text="Yes" Visible="False" OnClick="btnYes_Click" />
                        <asp:Button ID="btnNo" runat="server"  Text="No" Visible="False" Width="47px" OnClick="btnNo_Click" />
                                    </td>
                </tr>
                                <td colspan="2">
                
          
            <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
                
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                
            </asp:GridView>
          
                </td>

</table>
        </div>
        
    <asp:Panel ID="Panel1" runat="server" Height="137px" Width="1120px">
            
          
        </asp:Panel>
        </asp:Content>