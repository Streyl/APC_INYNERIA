<%@ Page Title="ProjectCreation" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProjectCreation.aspx.cs" Inherits="ProjectCreation" %>


<asp:Content ID="BodyProjectCreation" ContentPlaceHolderID="MainContent" runat="server">


    <div class="card text-center-md shadow mb-2 bg-white ">

        <div class="card-header">
            Project Creator 
        </div>
        <div class="card-body">
            <div class="row justify-content-center">
                <asp:label id="lblName" style="margin-top: 14px" runat="server" text="Name:"></asp:label>
            </div>

        </div>
        <div class="row justify-content-center">
            <asp:textbox id="txtName"  style="margin-top: 3px" runat="server" maxlength="50" tabindex="1" AutoCompleteType="Disabled"></asp:textbox>
        </div>
        <div class="row justify-content-center">
            <asp:label id="lblNameError" style="margin-top: 14px" runat="server" forecolor="Red" visible="False"></asp:label>

        </div>
        <div class="row justify-content-center">
            <asp:label id="lblStartDate" style="margin-top: 14px" runat="server" text="Start date:"></asp:label>

        </div>
        <div class="row justify-content-center">
            <asp:textbox id="txtStartDate"  style="margin-top: 3px" runat="server" textmode="Date" tabindex="2" AutoCompleteType="Disabled"></asp:textbox>
        </div>
        <div class="row justify-content-center">
            <asp:label id="lblStartDateError" style="margin-top: 14px" runat="server" forecolor="Red" visible="False"></asp:label>

        </div>
        <div class="row justify-content-center">
            <asp:label id="lblEndDate" style="margin-top: 14px" runat="server" text="End date:"></asp:label>

        </div>
        <div class="row justify-content-center">
            <asp:textbox id="txtEndDate"  style="margin-top: 3px" runat="server" textmode="Date" tabindex="3" AutoCompleteType="Disabled"></asp:textbox>
        </div>
        <div class="row justify-content-center">
            <asp:label id="lblEndDateError" style="margin-top: 14px" runat="server" forecolor="Red"></asp:label>

        </div>
        <div class="row justify-content-center">
            <asp:label id="lblStatus" style="margin-top: 14px" runat="server" text="Status:"></asp:label>

        </div>
        <div class="row justify-content-center">
            <asp:textbox id="txtStatus"  style="margin-top: 3px" runat="server" maxlength="50" tabindex="4" AutoCompleteType="Disabled"></asp:textbox>
        </div>
        <div class="row justify-content-center">
            <asp:label id="lblDescription" style="margin-top: 14px" runat="server" text="Description:"></asp:label>

        </div>
        <div class="row justify-content-center">
            <asp:textbox id="txtDescription"   runat="server" rows="10" textmode="MultiLine" width="600px" maxlength="4000" style="resize: none; margin-top: 3px" tabindex="5" height="200px" AutoCompleteType="Disabled"></asp:textbox>

        </div>
        <div class="row justify-content-center">
            <asp:label id="lblRemarks" style="margin-top: 14px" runat="server" text="Remarks:"></asp:label>

        </div>
        <div class="row justify-content-center">
            <asp:textbox id="txtRemarks"  runat="server" maxlength="200" rows="5" textmode="MultiLine" width="600px" style="resize: horizontal; margin-top: 3px" tabindex="6" height="100px" AutoCompleteType="Disabled"></asp:textbox>


        </div>
        <div class="row justify-content-center">
            <asp:button id="btnCreateProject" runat="server" onclick="btnCreateProject_Click" text="Create Project" />

        </div>
        <div class="row justify-content-center">
            <asp:label id="lblProjectCreationSucces" style="margin-top: 14px" runat="server" text="Project succesfully created!" visible="False"></asp:label>

        </div>
    </div>
    
</asp:Content>
