<%@ Page Title="ProjectCreation" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProjectCreation.aspx.cs" Inherits="ProjectCreation" %>


<asp:Content ID="BodyProjectCreation" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        <br />
        <asp:TextBox ID="txtName" runat="server" MaxLength="50" TabIndex="1"></asp:TextBox>
        <asp:Label ID="lblNameError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblStartDate" runat="server" Text="Start date:"></asp:Label>
        <br />
        <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date" TabIndex="2"></asp:TextBox>
        <asp:Label ID="lblStartDateError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblEndDate" runat="server" Text="End date:"></asp:Label>
        <br />
        <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date" TabIndex="3"></asp:TextBox>
        <asp:Label ID="lblEndDateError" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>
        <br />
        <asp:TextBox ID="txtStatus" runat="server" MaxLength="50" TabIndex="4"></asp:TextBox>
        <br />
        <asp:Label ID="lblDescription" runat="server" Text="Description:"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescription" runat="server" Rows="10" TextMode="MultiLine" Width="600px" MaxLength="4000" style = "resize:none" TabIndex="5" Height="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblRemarks" runat="server" Text="Remarks:"></asp:Label>
        <br />
        <asp:TextBox ID="txtRemarks" runat="server" MaxLength="200" Rows="5" TextMode="MultiLine" Width="600px" style = "resize:none" TabIndex="6" Height="100px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnCreateProject" runat="server" OnClick="btnCreateProject_Click" Text="Create Project" />
        <br />
        <asp:Label ID="lblProjectCreationSucces" runat="server" Text="Project succesfully created!" Visible="False"></asp:Label>
        <br />
  </asp:Content>