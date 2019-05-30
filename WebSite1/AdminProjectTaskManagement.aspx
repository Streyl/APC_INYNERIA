<%@ Page Title="ProjectTaskManagement" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/AdminProjectTaskManagement.aspx.cs" Inherits="AdminProjectTaskManagement" %>

<asp:Content ID="BodyProjectTaskManagement" ContentPlaceHolderID="MainContent" runat="server">

    


        <asp:Panel ID="Panel1" runat="server">
            <div class="card col-4" style="max-width: 17rem; max-height: 15rem; height:10rem">

                <div class="card-header">
                    Search
                </div>
                  <div class="card-body">
                    <div class="row justify-content-center">
            <div class=" row form-check form-check-inline">
                        <asp:RadioButtonList ID="ChooseFunction" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ChooseFunction_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem>Project</asp:ListItem>
                            <asp:ListItem>Task</asp:ListItem>
                        </asp:RadioButtonList>
                  </div>
        </div>
                      </div>
                </div>
            <asp:Panel ID="pnlProjectGridView" runat="server" Visible="False">
           

              <div class="card col-6" style="max-width: 17rem; max-height: 22rem">
                <div class="card-header h-25">
                    Search
                </div>

                <div class="card-body">
                    <div class="row justify-content-center">
                             <asp:DropDownList ID="ddlSearchProject" runat="server" Width="219px">
                                 <asp:ListItem>Name</asp:ListItem>
                                 <asp:ListItem>Status</asp:ListItem>
                                 <asp:ListItem>CreatorID</asp:ListItem>
                             </asp:DropDownList>
                         </div>
                    <div class="row justify-content-center">
                        <asp:TextBox ID="tbSearchProject" runat="server" AutoCompleteType="Disabled" OnTextChanged="tbSearchProject_TextChanged"></asp:TextBox>
                  
                        <asp:Button ID="btnSearchProject" runat="server" Text="Search" OnClick="btnSearchProject_Click" />
                    </div>
                </div>
            </div>

                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="LinqDataSource1" Width="90%" ForeColor="#333333" GridLines="None" PageSize="15" CssClass="table-responsive-lg" OnRowDeleting="GridView1_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" >
                                <ItemStyle Font-Size="Smaller" />
                                </asp:CommandField>
                                <asp:CommandField ShowEditButton="True">
                                <ControlStyle Font-Size="Smaller" />
                                <ItemStyle Font-Size="Small" />
                                </asp:CommandField>
                                <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="id">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Name" SortExpression="name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Creator" SortExpression="creatorID">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("creatorID") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("creatorID") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Created" SortExpression="creationDate">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("creationDate") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("creationDate", "{0:d}") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Start" SortExpression="startDate">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("startDate") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("startDate", "{0:d}") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="End" SortExpression="endDate">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("endDate") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("endDate", "{0:d}") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Status" SortExpression="status">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <div style="word-break:break-all; word-wrap:break-word";>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <ItemStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Description" SortExpression="description">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <div style="word-break:break-all; word-wrap:break-word";>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("description", "{0:c5}") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Remarks" SortExpression="remarks">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("remarks") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <div style="word-break:break-all; word-wrap:break-word";>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("remarks") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" />
                                </asp:TemplateField>
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

                           
              <div class="card col-6" style="max-width: 17rem; max-height: 22rem">
                <div class="card-header h-25">
                    Search
                </div>

                <div class="card-body">
                    <div class="row justify-content-center">
                        <asp:DropDownList ID="ddlChooseProject" runat="server" Width="200px" CssClass="auto-style1" Enabled="False" style="margin-top:4px; margin-bottom:0px">
                        </asp:DropDownList>
                    </div >
                     <div class="row justify-content-center">
                        <asp:CheckBox ID="cbChooseProject" runat="server" AutoPostBack="True" OnCheckedChanged="cbChooseProject_CheckedChanged" Text=" " style="margin-top:0px"/>
                    </div>
                    <div class="row justify-content-center">
                        <asp:Label ID="Label1" runat="server" Text="Choose Project" style="margin-top:4px"></asp:Label>
                        </div>
                   <div class="row justify-content-center">
                                        <asp:DropDownList ID="ddlSearchTask" runat="server" Width="229px" style="margin-top:4px">
                                            <asp:ListItem>Name</asp:ListItem>
                                            <asp:ListItem>Status</asp:ListItem>
                                            <asp:ListItem>LeaderID</asp:ListItem>
                                        </asp:DropDownList>
                                       </div>
                          <div class="row justify-content-center">
                        <asp:TextBox ID="tbSearchTask" runat="server" AutoCompleteType="Disabled" style="margin-top:4px"></asp:TextBox>
                  </div>
                          <div class="row justify-content-center">
                        <asp:Button ID="btnSearchTask" runat="server" Text="Search" OnClick="btnSearchTask_Click" style="margin-top:4px"/>
                    </div>
</div>
                    </div>
                 

                &nbsp;<asp:GridView ID="gridviewTask"  runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="id" DataSourceID="LinqDataSource2" Width="80%" AllowPaging="True" AllowSorting="True" ForeColor="#333333" GridLines="None" CssClass="table-responsive-md" OnRowDeleting="gridviewTask_RowDeleting">
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



