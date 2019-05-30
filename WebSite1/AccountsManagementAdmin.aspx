<%@ Page Title="UsersManagment" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/AccountsManagementAdmin.aspx.cs" Inherits="AccountsManagementAdmin" %>


<asp:Content ID="BodyAccountsManagment" ContentPlaceHolderID="MainContent" runat="server">





    <div class="card text-center-md shadow  bg-white "style="max-width: 17rem; max-height: 22rem" >
        <div class="card-header">
            SEARCH
            <!-- here should be label-->
        </div>
        <div class="card-body">
            

                <div class=" row form-check form-check-inline justify-content-center " >

                    <asp:DropDownList ID="DropDownList1" runat="server"  style="margin-top: 8px"  Width="200px" CssClass="auto-style1">
                        <asp:ListItem Selected="True">Login</asp:ListItem>
                        <asp:ListItem>Name</asp:ListItem>
                        <asp:ListItem>Surname</asp:ListItem>
                        <asp:ListItem>Status</asp:ListItem>
                        <asp:ListItem>Level</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="row justify-content-center">
                    <asp:TextBox ID="tbLogin" runat="server" AutoCompleteType="Disabled" style="margin-top: 8px"  Width="200px" CssClass="auto-style1"></asp:TextBox>
                </div>
                <div class="row justify-content-center">
                    <asp:Button ID="btnSearch" CssClass="btn btn-info" runat="server" OnClick="Button1_Click" Text="Search" />
                </div>
            
        </div>
    </div>



    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" DataKeyNames="id" AllowPaging="True"
        CellPadding="3" ForeColor="#333333" GridLines="Horizontal" Width="80%" AllowSorting="True" CssClass="table-responsive-lg">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />

            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
            <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" Visible="False" />
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


</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        
        .GridViewEditRow input[type=text] {
            width: 100px;
        }
        /* size textboxes */
        .GridViewEditRow select {
            width: 50px;
        }
        /* size drop down lists */
        .auto-style1 {
            margin-left: 0;
        }
    </style>
</asp:Content>
