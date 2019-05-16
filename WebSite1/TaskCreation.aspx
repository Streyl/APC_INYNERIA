<%@ Page Title="TaskCreation" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TaskCreation.aspx.cs" Inherits="TaskCreation" %>


<asp:Content ID="BodyTaskCreation" ContentPlaceHolderID="MainContent" runat="server">

    <table >
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label12" runat="server" Text="Add To"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rblChoose" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" TextAlign="Left" Width="274px" OnSelectedIndexChanged="rblChoose_SelectedIndexChanged" CssClass="auto-style2">
                    <asp:ListItem Selected="True">Project</asp:ListItem>
                    <asp:ListItem>Task</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            </tr>
        </table>

    <asp:panel id="pnlAddtoProject" runat="server">
    <table>
        <tr>
             <td>
            <asp:Label ID="Label5" runat="server" Text="Project" ></asp:Label>
              </td>
              <td>
                        <asp:DropDownList ID="ddlProject" runat="server" Width="290px" AppendDataBoundItems="True" CssClass="btn btn-secondary dropdown-toggle" DataSourceID="LinqDataSourceProject" DataTextField="name" DataValueField="id">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="LinqDataSourceProject" runat="server" ContextTypeName="LinqDataClassesDataContext" EntityTypeName="" Select="new (id, name)" TableName="projects">
                        </asp:LinqDataSource>
              </td>
        </tr>
        <tr>
        <td class="auto-style1" aria-pressed="undefined">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="tbName" runat="server" Width="286px" AutoCompleteType="Disabled" MaxLength="50" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                     <asp:Label ID="Label2" runat="server" Text="Leader"></asp:Label>
            </td>
            <td>
            <asp:DropDownList ID="ddlLeader" runat="server" AppendDataBoundItems="True" Width="292px" CssClass="btn btn-secondary dropdown-toggle" DataSourceID="LinqDataSourceLeader" DataTextField="name_lastname" DataValueField="id">
            </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSourceLeader" runat="server" ContextTypeName="LinqDataClassesDataContext" EntityTypeName="" Select="new (id, name, name_lastname)" TableName="users">
                </asp:LinqDataSource>
            </td>
        </tr>
         <tr>
             <td class="auto-style1">
                     <asp:Label ID="Label3" runat="server" Text="Status"></asp:Label>
             </td>
             <td>
            <asp:DropDownList ID="ddlStatus" runat="server" Width="293px" AppendDataBoundItems="True" EnableViewState="False" CssClass="btn btn-secondary dropdown-toggle">
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
            <asp:TextBox ID="tbDescription" runat="server" Height="224px" Width="291px" TextMode="MultiLine" AutoCompleteType="Disabled" MaxLength="4000"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td></td>
            <td >
                <asp:Button ID="bSubmit" runat="server" OnClick="bSubmit_Click" Text="Submit" Width="296px" CssClass="center"/>
            </td>
        </tr>
        <tr>
            <td > </td>
            <td>
                <asp:Label ID="lInfoProject" runat="server" Text="Sucessful add task to project" Visible="False"></asp:Label>
            </td>
            </tr>
    </table> 
        </asp:panel>

    <asp:panel id="pnlAddtoTask" runat="server">
    <table>
        <tr>
             <td>
            <asp:Label ID="Label7" runat="server" Text="Project" ></asp:Label>
              </td>
              <td>
                        <asp:DropDownList ID="ddlProject2" runat="server" Width="290px" AppendDataBoundItems="True" CssClass="btn btn-secondary dropdown-toggle" AutoPostBack="True" DataSourceID="LinqDataSourceProject" DataTextField="name" DataValueField="id">
                        </asp:DropDownList>
              </td>
        </tr>
        <tr>
            <td>Task</td>
            <td>
                <asp:DropDownList ID="ddlTask" runat="server" Width="289px" CssClass="btn btn-secondary dropdown-toggle" style="margin-top: 2" OnSelectedIndexChanged="ddlTask_SelectedIndexChanged" DataSourceID="LinqDataSourceTask" DataTextField="name_task" DataValueField="id">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSourceTask" runat="server" ContextTypeName="LinqDataClassesDataContext" EntityTypeName="" Select="new (id, name, projectID, name_task)" TableName="tasks" Where="projectID == @projectID">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="ddlProject2" Name="projectID" PropertyName="SelectedValue" Type="Int32" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </td>
        </tr>
        <tr>
        <td class="auto-style1" aria-pressed="undefined">
            <asp:Label ID="Label8" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="tbName2" runat="server" Width="286px" AutoCompleteType="Disabled" MaxLength="50" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                     <asp:Label ID="Label9" runat="server" Text="User"></asp:Label>
            </td>
            <td>
            <asp:DropDownList ID="ddlLeader2" runat="server" AppendDataBoundItems="True" Width="292px" CssClass="btn btn-secondary dropdown-toggle" DataSourceID="LinqDataSourceLeader" DataTextField="name_lastname" DataValueField="id">
            </asp:DropDownList>
            </td>
        </tr>
         <tr>
             <td class="auto-style1">
                     <asp:Label ID="Label10" runat="server" Text="Status"></asp:Label>
             </td>
             <td>
            <asp:DropDownList ID="ddlStatus2" runat="server" Width="293px" AppendDataBoundItems="True" EnableViewState="False" CssClass="btn btn-secondary dropdown-toggle">
                <asp:ListItem>Undone</asp:ListItem>
                <asp:ListItem>Finish</asp:ListItem>
                <asp:ListItem>Cancel</asp:ListItem>
                <asp:ListItem>Pause</asp:ListItem>
            </asp:DropDownList>

            </td>
         </tr>
         <tr>
            <td class="auto-style1">
                     <asp:Label ID="Label11" runat="server" Text="Description"></asp:Label>
            </td>
            <td >
            <asp:TextBox ID="tbDescription2" runat="server" Height="224px" Width="291px" TextMode="MultiLine" AutoCompleteType="Disabled" MaxLength="200"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td></td>
            <td >
                <asp:Button ID="btnSubmit2" runat="server" OnClick="btnSubmit2_Click" Text="Submit" Width="296px" CssClass="center"/>
            </td>
        </tr>
        <tr>
            <td > </td>
            <td>
                <asp:Label ID="lInfoTask" runat="server" Text="Sucessful add task to project" Visible="False"></asp:Label>
            </td>
            </tr>
    </table> 
        </asp:panel>



 </asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 101px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        </style>
</asp:Content>


