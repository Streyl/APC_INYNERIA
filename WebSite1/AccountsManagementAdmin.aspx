<%@ Page Title="UsersManagment" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/AccountsManagementAdmin.aspx.cs" Inherits="AccountsManagementAdmin" %>


<asp:Content ID="BodyAccountsManagment" ContentPlaceHolderID="MainContent" runat="server">




        <asp:Panel ID="Panel1" runat="server">
            <table aria-orientation="horizontal" class="auto-style2">
                <tr>
                    <td class="auto-style6">Search</td>
                    <td class="auto-style4">
                        
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style8" Width="225px">
                            <asp:ListItem Selected="True">Login</asp:ListItem>
                            <asp:ListItem>Name</asp:ListItem>
                            <asp:ListItem>Surname</asp:ListItem>
                            <asp:ListItem>Status</asp:ListItem>
                            <asp:ListItem>Level</asp:ListItem>
                        </asp:DropDownList>
                    </td>
        
                    
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnSearch"  CssClass="btn btn-info" runat="server" OnClick="Button1_Click" Text="Search" />
                    </td>
                    <td class="auto-style2" >
                        <asp:TextBox ID="tbLogin" runat="server" AutoCompleteType="Disabled"  Width="220px" style="padding-left"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style7" >
                                    &nbsp;</td>
                    <td >
                        &nbsp;</td>
                </tr>

                </tr>

</table>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" DataKeyNames="id" AllowPaging="True"
                CellPadding="3" ForeColor="#333333" GridLines="Horizontal" Width="25%" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                    <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="level" HeaderText="level" SortExpression="level" />
                    <asp:BoundField DataField="accountStatus" HeaderText="accountStatus" SortExpression="accountStatus" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <EditRowStyle CssClass="GridViewEditRow" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />

            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="LinqDataClassesDataContext"
                 TableName="users" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="">
            </asp:LinqDataSource>
        </asp:Panel>

        </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            height: 44px;
        }
        .auto-style4 {
            width: 194px;
        }
        .auto-style6 {
            height: 44px;
            width: 99px;
        }
        .auto-style7 {
            width: 99px;
        }
        .auto-style8 {
            margin-left: 21;
        }
        .GridViewEditRow input[type=text]
        {width:100px;

        } /* size textboxes */
        .GridViewEditRow select 
        {width:50px;} /* size drop down lists */
    </style>
    </asp:Content>
