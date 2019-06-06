<%@ Page Title="TaskCreation" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TaskCreation.aspx.cs" Inherits="TaskCreation" %>


<asp:Content ID="BodyTaskCreation" ContentPlaceHolderID="MainContent" runat="server">



    <div class="card text-center-sm shadow col-4 " style="height:90px; margin-bottom:3px; min-width:200px; margin-top:-10px">
        <div class="card-header-lg  w-100" style="width: 16rem; height:30px">
            <asp:Label ID="Label12" runat="server" Text="Add To" CssClass="w-25"></asp:Label>
        </div>

        <div class="form-check form-check-inline" style="margin-top:-3px">
            <asp:RadioButtonList ID="rblChoose" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" TextAlign="Left" Width="274px"  OnSelectedIndexChanged="rblChoose_SelectedIndexChanged" CssClass="auto-style2">
                <asp:ListItem Selected="True">Project</asp:ListItem>
                <asp:ListItem>Task</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>


    <div class="container ">

        <div class="card text-center-sm shadow bg- mb-4 " style="max-width: 30rem">
            <div class="card-header">
                <asp:Label ID="labelTaskOrProject" runat="server" Text="Add to project"></asp:Label>
            </div>


                <div class="card-body">
            <asp:Panel ID="pnlAddtoProject" runat="server">

                    <div class="row justify-content-center ">
                        <div class="col">
                        <asp:Label ID="Label5" runat="server" Text="Project"></asp:Label>
                    </div>
               
                        <div class="col">
                        <asp:DropDownList ID="ddlProject" runat="server" Width="300px" style="margin-top: 3px" AppendDataBoundItems="True" CssClass="btn btn-outline-info dropdown-toggle" DataSourceID="LinqDataSourceProject" DataTextField="name" DataValueField="id">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="LinqDataSourceProject" runat="server" ContextTypeName="LinqDataClassesDataContext" EntityTypeName="" Select="new (id, name)" TableName="projects">
                        </asp:LinqDataSource>
                    </div>
                        </div>
                
                   
                    <div class="row justify-content-center">
                        <div class="col">
                        <asp:Label ID="Label1" style="margin-top: 14px" runat="server" Text="Name"></asp:Label>
                    </div>

                    <div class="col">
                        <asp:TextBox ID="tbName" runat="server" style="margin-top: 3px"  Width="300px" AutoCompleteType="Disabled" MaxLength="50"></asp:TextBox>
                    </div>
                        </div>
                    <div class="row justify-content-center">
                        <div class="col">
                        <asp:Label ID="Label2"  style="margin-top: 14px"  runat="server" Text="Leader"></asp:Label>
                    </div>
                    <div class="col">
                        <asp:DropDownList ID="ddlLeader" style="margin-top: 3px" runat="server" AppendDataBoundItems="True" Width="300px" CssClass="btn btn-outline-info dropdown-toggle" DataSourceID="LinqDataSourceLeader" DataTextField="name_lastname" DataValueField="id">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="LinqDataSourceLeader" runat="server" ContextTypeName="LinqDataClassesDataContext" EntityTypeName="" Select="new (id, name, name_lastname)" TableName="users">
                        </asp:LinqDataSource>
                    </div>
                        </div>

                    <div class="row justify-content-center">
                        <div class="col">
                        <asp:Label ID="Label3"  style="margin-top: 14px"  runat="server" Text="Status"></asp:Label>
                    </div>
                    <div class="col">

                        <asp:DropDownList ID="ddlStatus" runat="server" Width="300px" style="margin-top: 3px" AppendDataBoundItems="True" EnableViewState="False" CssClass="btn btn-outline-info dropdown-toggle ">
                            <asp:ListItem>Undone</asp:ListItem>
                            <asp:ListItem>Finish</asp:ListItem>
                            <asp:ListItem>Cancel</asp:ListItem>
                            <asp:ListItem>Pause</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                        </div>
                    <div class="row justify-content-center ">
                        <div class="col ">
                        <asp:Label ID="Label4"  style="margin-top: 14px"  runat="server" Text="Description"></asp:Label>
                    </div>
                    <div class="col">

                        <asp:TextBox ID="tbDescription" runat="server" Height="224px" style="margin-top: 3px" Width="300px" TextMode="MultiLine" AutoCompleteType="Disabled" MaxLength="4000"></asp:TextBox>
                    </div>
                        </div>

                    <div class="row justify-content-center">

                        <asp:Button ID="bSubmit" runat="server" OnClick="bSubmit_Click" style="margin-top: 3px" Text="Submit" Width="300px" CssClass="btn btn-success"  />
                    </div>
                    <div class="row justify-content-center">

                        <asp:Label ID="lInfoProject" runat="server" Text="successfully added task to project" Visible="False"></asp:Label>
                    </div>
            </asp:Panel>


            <asp:Panel ID="pnlAddtoTask" runat="server">
                <div class="row justify-content-center">
                    <div class="col">
                    <asp:Label ID="Label7" style="margin-top: 0px" runat="server" Text="Project"></asp:Label>
                </div>
                <div class="col">

                    <asp:DropDownList ID="ddlProject2" style="margin-top: 3px" runat="server" Width="300px" AppendDataBoundItems="True" CssClass="btn btn-outline-info dropdown-toggle" AutoPostBack="True" DataSourceID="LinqDataSourceProject" DataTextField="name" DataValueField="id">
                    </asp:DropDownList>
                </div>
                </div>
                <div class="row justify-content-center">
                   <div class="col">
                    <asp:Label ID="Label13" style="margin-top: 14px" runat="server" Text="Task"></asp:Label>
                   
                </div>
                    <div class="col">

                    <asp:DropDownList ID="ddlTask"  runat="server" Width="300px" CssClass="btn btn-outline-info dropdown-toggle" Style="margin-top: 3px" OnSelectedIndexChanged="ddlTask_SelectedIndexChanged" DataSourceID="LinqDataSourceTask" DataTextField="name_task" DataValueField="id">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSourceTask" runat="server" ContextTypeName="LinqDataClassesDataContext" EntityTypeName="" Select="new (id, name, projectID, name_task)" TableName="tasks" Where="projectID == @projectID">
                        <WhereParameters>
                            <asp:ControlParameter ControlID="ddlProject2" Name="projectID" PropertyName="SelectedValue" Type="Int32" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                </div>
                    </div>
                <div class="row justify-content-center">
                    <div class="col">
                    <asp:Label ID="Label8" style="margin-top: 14px" runat="server" Text="Name"></asp:Label>
                </div>
                <div class="col">

                    <asp:TextBox ID="tbName2" style="margin-top: 3px" runat="server" Width="300px" AutoCompleteType="Disabled" MaxLength="50"></asp:TextBox>
                </div>
                </div>

                <div class="row justify-content-center">
                    <div class="col">
                    <asp:Label ID="Label9" style="margin-top: 14px" runat="server" Text="Leader"></asp:Label>
                </div>
                <div class="col">
                    <asp:DropDownList ID="ddlLeader2" style="margin-top: 3px" runat="server" AppendDataBoundItems="True" Width="300px" CssClass="btn btn-outline-info dropdown-toggle" DataSourceID="LinqDataSourceLeader" DataTextField="name_lastname" DataValueField="id">
                    </asp:DropDownList>
                </div>
                    </div>
                <div class="row justify-content-center">
                    <div class="col">
                    <asp:Label ID="Label10" style="margin-top: 14px" runat="server" Text="Status"></asp:Label>
                </div>

                <div class="col">

                    <asp:DropDownList ID="ddlStatus2" style="margin-top: 3px" runat="server" Width="300px" AppendDataBoundItems="True" EnableViewState="False" CssClass="btn btn-outline-info dropdown-toggle">
                        <asp:ListItem>Undone</asp:ListItem>
                        <asp:ListItem>Finish</asp:ListItem>
                        <asp:ListItem>Cancel</asp:ListItem>
                        <asp:ListItem>Pause</asp:ListItem>
                    </asp:DropDownList>
                </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col">
                    <asp:Label ID="Label11" style="margin-top: 14px" runat="server" Text="Description"></asp:Label>
                </div>
                <div class="col">

                    <asp:TextBox ID="tbDescription2" style="margin-top: 3px" runat="server" Height="224px" Width="300px" TextMode="MultiLine" AutoCompleteType="Disabled" MaxLength="200"></asp:TextBox>
                </div>
                    </div>
                <div class="row justify-content-center">
                  
                    <asp:Button ID="btnSubmit2" style="margin-top: 3px" runat="server" OnClick="btnSubmit2_Click" Text="Submit" Width="300px" CssClass="btn btn-success"  />
                </div>
                              <div class="row justify-content-center">
                    <asp:Label ID="lInfoTask" style="margin-top: 3px" runat="server"  Text="Successfully added task to project" Visible="False"></asp:Label>
                </div>
                    
            </asp:Panel>
        </div>
            </div>
    </div>
    


</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style1 {
            width: 101px;
        }

        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</asp:Content>


