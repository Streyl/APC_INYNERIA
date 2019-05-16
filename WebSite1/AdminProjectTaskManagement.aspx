<%@ Page Title="ProjectTaskManagement" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/AdminProjectTaskManagement.aspx.cs" Inherits="AdminProjectTaskManagement" %>

<asp:Content ID="BodyProjectTaskManagement" ContentPlaceHolderID="NotLogInContent" runat="server">

    


        <asp:Panel ID="Panel1" runat="server">
            <table >
                <tr>
                    <td>
                        <asp:RadioButtonList ID="ChooseFunction" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ChooseFunction_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem>Project</asp:ListItem>
                            <asp:ListItem>Task</asp:ListItem>
                            <asp:ListItem>Subtask</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                </table>
            <asp:Panel ID="pnlProjectGridView" runat="server" Visible="False">
            <table aria-orientation="horizontal" class="auto-style9">

                </tr>
                <tr>

                         <td>
                             <asp:DropDownList ID="ddlSearchProject" runat="server" Width="219px">
                                 <asp:ListItem>Name</asp:ListItem>
                                 <asp:ListItem>Status</asp:ListItem>
                                 <asp:ListItem>CreatorID</asp:ListItem>
                             </asp:DropDownList>
                         </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="tbSearchProject" runat="server" AutoCompleteType="Disabled" OnTextChanged="tbSearchProject_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnSearchProject" runat="server" Text="Search" OnClick="btnSearchProject_Click" />
                    </td>
                </tr>
                </tr>

                <tr>
                    <td>
                        &nbsp;</td>
                </tr>

</table>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="LinqDataSource1" Width="25%" ForeColor="#333333" GridLines="None" PageSize="15">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" >
                                <ItemStyle Font-Size="Smaller" />
                                </asp:CommandField>
                                <asp:CommandField ShowEditButton="True">
                                <ControlStyle Font-Size="Smaller" />
                                <ItemStyle Font-Size="Small" />
                                </asp:CommandField>
                                <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                <asp:BoundField DataField="creatorID" HeaderText="Creator" SortExpression="creatorID">
                                <ItemStyle Width="10px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="creationDate" DataFormatString="{0:d}" HeaderText="Created" SortExpression="creationDate" />
                                <asp:BoundField DataField="startDate" DataFormatString="{0:d}" HeaderText="Start" SortExpression="startDate" />
                                <asp:BoundField DataField="endDate" DataFormatString="{0:d}" HeaderText="End" SortExpression="endDate" />
                                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                                <asp:BoundField DataField="description" DataFormatString="{0:c5}" HeaderText="Description" SortExpression="description" >
                                <ItemStyle Width="10px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks">
                                <ItemStyle Width="20px" />
                                </asp:BoundField>
                            </Columns>

                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />

                        </asp:GridView>

            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="LinqDataClassesDataContext" EntityTypeName="" TableName="projects"
                EnableDelete="True" EnableInsert="True" EnableUpdate="True">
            </asp:LinqDataSource>

        </asp:Panel>


            <asp:Panel ID="pnlTaskGridView" runat="server" Visible="False">

                            <table aria-orientation="horizontal" class="auto-style9">

                </tr>
                <tr>
                    <td>
                    
                        <asp:DropDownList ID="ddlChooseProject" runat="server" Width="200px" CssClass="auto-style1" Enabled="False">
                        </asp:DropDownList>
                    
                        <asp:CheckBox ID="cbChooseProject" runat="server" AutoPostBack="True" OnCheckedChanged="cbChooseProject_CheckedChanged" Text=" " />
                    
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Choose Project"></asp:Label>
                    </td>

                </tr>
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="ddlSearchTask" runat="server" Width="229px">
                                            <asp:ListItem>Name</asp:ListItem>
                                            <asp:ListItem>Status</asp:ListItem>
                                            <asp:ListItem>LeaderID</asp:ListItem>
                                        </asp:DropDownList>
                                        </td>
                                    <td>
                                        </td>
                                    </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tbSearchTask" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td >
                        <asp:Button ID="btnSearchTask" runat="server" Text="Search" OnClick="btnSearchTask_Click" />
                    </td>
                </tr>

                </tr>

</table>



                &nbsp;<asp:GridView ID="gridviewTask" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="id" DataSourceID="LinqDataSource2" Width="25%" AllowPaging="True" AllowSorting="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="leaderID" HeaderText="Leader" SortExpression="leaderID" />
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description">
                        <ItemStyle Width="10px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="projectID" HeaderText="Project" SortExpression="projectID" />
                        <asp:BoundField DataField="name_task" HeaderText="Task Name" ReadOnly="True" SortExpression="name_task" Visible="False" />
                    </Columns>
                                <EditRowStyle Wrap="True" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Width="10px" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="LinqDataClassesDataContext" EntityTypeName="" TableName="tasks"
                     EnableDelete="True" EnableInsert="True" EnableUpdate="True">
                </asp:LinqDataSource>
            </asp:Panel>


        </asp:Panel>
        </asp:Content>


<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0;
        }
    </style>
</asp:Content>



