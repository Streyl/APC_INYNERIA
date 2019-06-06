<%@ Page Title="ProjectCreation" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProjectCreation.aspx.cs" Inherits="ProjectCreation" %>


<asp:Content ID="BodyProjectCreation" ContentPlaceHolderID="MainContent" runat="server">


    <div class="card text-center-md shadow mb-2 bg-white "style="max-width: 40rem; min-width:250px">

        <div class="card-header">
            Project Creator 
        </div>
        <div class="card-body">
            <asp:Panel ID="pnlProject" runat="server">
            <div class="row justify-content-center">
                 <div class="col">
                <asp:Label ID="lblName" Style="margin-top: 14px" runat="server" Text="Name:"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtName" Style="margin-top: 3px" runat="server" MaxLength="50" TabIndex="1" AutoCompleteType="Disabled" Width="300px"></asp:TextBox>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col">
                <asp:Label ID="lblStartDate" Style="margin-top: 14px" runat="server" Text="Start date:"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtStartDate" Style="margin-top: 3px" runat="server" TextMode="Date" TabIndex="2" AutoCompleteType="Disabled" Width="300px"></asp:TextBox>
            </div>
            </div>

             <div class="row justify-content-center">
            <div class="col">
                <asp:Label ID="lblEndDate" Style="margin-top: 14px" runat="server" Text="End date:"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtEndDate" Style="margin-top: 3px" runat="server" TextMode="Date" TabIndex="3" AutoCompleteType="Disabled" Width="300px"></asp:TextBox>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col">
                <asp:Label ID="lblStatus" Style="margin-top: 14px" runat="server" Text="Status:"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtStatus" Style="margin-top: 3px" runat="server" MaxLength="50" TabIndex="4" AutoCompleteType="Disabled" CssClass="auto-style1" Width="300px"></asp:TextBox>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col">
                <asp:Label ID="lblDescription" Style="margin-top: 14px" runat="server" Text="Description:"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtDescription"  runat="server" Rows="10" TextMode="MultiLine"  MaxLength="4000" Style=" margin-top: 3px;"  TabIndex="5" Height="200px " AutoCompleteType="Disabled" Width="300px"></asp:TextBox>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col">
                <asp:Label ID="lblRemarks" Style="margin-top: 14px" runat="server" Text="Remarks:"></asp:Label>

            </div>
            <div class="col">
                <asp:TextBox ID="txtRemarks" runat="server" MaxLength="200" Rows="5" TextMode="MultiLine" Width="300px" Style="resize: horizontal; margin-top: 3px" TabIndex="6" Height="100px" AutoCompleteType="Disabled"></asp:TextBox>
            </div>

        </div>
        <div class="row justify-content-center">
            
                <asp:Button ID="btnCreateProject" runat="server" OnClick="btnCreateProject_Click" Text="Create Project" Width="303px" />

            </div>
                <div class="row justify-content-center">
                <asp:Label ID="lblProjectCreationSucces" Style="margin-top: 14px" runat="server" Text="Project succesfully created!" Visible="False"></asp:Label>
            </div>
       
                </asp:Panel>
    </div>
   
    </div>
    
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0;
        }
    </style>
</asp:Content>

