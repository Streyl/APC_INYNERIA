<%@ Page Title="MyProjects" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyProjects.aspx.cs" Inherits="MyProjects" %>


<asp:Content ID="BodyMyProjects" ContentPlaceHolderID="MainContent" runat="server">

    <div class="MyProjectsRow">
        <div class="MyProjectsColumn">
                <asp:ListBox ID="lbUserProjects" runat="server" Width="195px" Height="169px" OnSelectedIndexChanged="lbUserProjects_SelectedIndexChanged">
                </asp:ListBox>
                <br />
        </div>

        <div class="MyProjectsColumn">
            <asp:Label ID="lblProjectName" runat="server" Text="Name:"></asp:Label>
            <br />
            <asp:Label ID="lblProjectCreator" runat="server" Text="Creator:"></asp:Label>
            <br />
            <asp:Label ID="lblProjectCreationDate" runat="server" Text="Creation date:"></asp:Label>
            <br />
            <asp:Label ID="lblProjectStartDate" runat="server" Text="Start date:"></asp:Label>
            <br />
            <asp:Label ID="lblProjectEndDate" runat="server" Text="End date:"></asp:Label>
            <br />
            <asp:Label ID="lblProjectStatus" runat="server" Text="Status:"></asp:Label>
            <br />
            <asp:Label ID="lblProjectDescription" runat="server" Text="Description"></asp:Label>
            <br />
            <asp:Label ID="lblProjectRemarks" runat="server" Text="Remarks:"></asp:Label>
        </div>
    </div>




</asp:Content>


 <asp:Content ID="Content1" ContentPlaceHolderID="NotLogInContent" runat="server">

        Here will be list of projects but you will see it only if you log in on your account


 </asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .column {
            height: 177px;
        }
    </style>
</asp:Content>


