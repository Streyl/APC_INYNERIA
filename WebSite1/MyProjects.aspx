<%@ Page Title="MyProjects" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyProjects.aspx.cs" Inherits="MyProjects" %>


<asp:Content ID="BodyMyProjects" ContentPlaceHolderID="MainContent" runat="server">

   <div style="float: left; width: 50%;">
            <asp:treeview id="TreeViewProjects" runat="server" width="150px" ExpandDepth="0" OnSelectedNodeChanged="TreeViewProjects_SelectedNodeChanged">
            </asp:treeview>
    </div>

    <div style="float: left; width: 50%;">


                <div style="float: left; width: 50%;">
            <asp:Panel ID="LeftPanelProjectName" runat="server" HorizontalAlign="Left">
                Name
            </asp:Panel>
            <asp:Panel ID="LeftPanelProjectCreatorName" runat="server" HorizontalAlign="Left">
                Creator
            </asp:Panel>
            <asp:Panel ID="LeftPanelProjectCreationDate" runat="server" HorizontalAlign="Left">
                Creation date
            </asp:Panel>
            <asp:Panel ID="LeftPanelProjectStartDate" runat="server" HorizontalAlign="Left">
                Start date
            </asp:Panel>
            <asp:Panel ID="LeftPanelProjectEndDate" runat="server" HorizontalAlign="Left">
                End date
            </asp:Panel>
            <asp:Panel ID="LeftPanelProjectStatus" runat="server" HorizontalAlign="Left">
                Status
            </asp:Panel>
            <asp:Panel ID="LeftPanelProjectDescription" runat="server" HorizontalAlign="Left">
                Description
            </asp:Panel>
            <asp:Panel ID="LeftPanelProjectRemarks" runat="server" HorizontalAlign="Left">
                Remarks
            </asp:Panel>

        </div>

        <div style="float: left; width: 50%;">
            <asp:Panel ID="RightPanelProjectName" runat="server" HorizontalAlign="Left">
                <asp:Label ID="lbProjectName" runat="server" Text=""></asp:Label>
            </asp:Panel>
            <asp:Panel ID="RightPanelProjectCreatorName" runat="server" HorizontalAlign="Left">
                <asp:Label ID="lbProjectCreator" runat="server" Text=""></asp:Label>
            </asp:Panel>
            <asp:Panel ID="RightPanelProjectCreationDate" runat="server" HorizontalAlign="Left">
                <asp:Label ID="lbCreationDate" runat="server" Text=""></asp:Label>
            </asp:Panel>
            <asp:Panel ID="RightPanelProjectStartDate" runat="server" HorizontalAlign="Left">
                <asp:Label ID="lbStartDate" runat="server" Text=""></asp:Label>
            </asp:Panel>
            <asp:Panel ID="RightPanelProjectEndDate" runat="server" HorizontalAlign="Left">
                <asp:Label ID="lbEndDate" runat="server" Text=""></asp:Label>
            </asp:Panel>
            <asp:Panel ID="RightPanelProjectStatus" runat="server" HorizontalAlign="Left">
                <asp:Label ID="lbStatus" runat="server" Text=""></asp:Label>
            </asp:Panel>
            <asp:Panel ID="RightPanelProjectDescription" runat="server" HorizontalAlign="Left">
                 <asp:Label ID="lbDescription" runat="server" Text=""></asp:Label>
             </asp:Panel>
            <asp:Panel ID="RightPanelProjectRemarks" runat="server" HorizontalAlign="Left">
                <asp:Label ID="lbRemarks" runat="server" Text=""></asp:Label>
             </asp:Panel>
        </div>

        
    </div>




</asp:Content>


 <asp:Content ID="Content1" ContentPlaceHolderID="NotLogInContent" runat="server">

        Here will be list of projects but you will see it only if you log in on your account

 </asp:Content>


