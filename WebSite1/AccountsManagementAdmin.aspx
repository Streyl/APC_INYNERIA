<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccountsManagementAdmin.aspx.cs" Inherits="AccountsManagementAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 89px;
        }
        .auto-style3 {
            width: 89px;
        }
        .auto-style4 {
            height: 26px;
            width: 169px;
        }
        .auto-style5 {
            width: 169px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">Search</td>
                    <td class="auto-style4" colspan="2">
                        <asp:RadioButtonList ID="rdlSearchCheck" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatColumns="5" Width="332px">
                            <asp:ListItem Selected="True">Login</asp:ListItem>
                            <asp:ListItem>Name</asp:ListItem>
                            <asp:ListItem>Surname</asp:ListItem>
                            <asp:ListItem>Status</asp:ListItem>
                            <asp:ListItem>Level</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style1" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style1" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblText1" runat="server" Text="Login"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbLogin" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" OnClick="Button1_Click" Text="Search" />
                                    </td>
                    <td>
                                    &nbsp;</td>
                    <td>
                        <asp:Button ID="btnYes" runat="server"  Text="Yes" Visible="False" OnClick="btnYes_Click" />
                        <asp:Button ID="btnNo" runat="server"  Text="No" Visible="False" Width="47px" OnClick="btnNo_Click" />
                    </td>
                    </tr>
            </table>


        </div>
        <asp:Panel ID="Panel1" runat="server" Height="137px" Width="1120px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowEditing="Button1_Click"  Width="651px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                    <asp:BoundField DataField="surname" HeaderText="surname"  SortExpression="surname" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                    <asp:BoundField DataField="level" HeaderText="level" SortExpression="level" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:CommandField />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            
            </asp:GridView>
          
            <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
                
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                
            </asp:GridView>
          
        </asp:Panel>
    </form>
</body>
</html>
