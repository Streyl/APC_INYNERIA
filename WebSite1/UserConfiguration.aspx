<%@ Page Title="UserConfiguration" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserConfiguration.aspx.cs" Inherits="UserConfiguration" %>






<asp:Content ID="IDPageBody" ContentPlaceHolderID="MainContent" runat="server">

       
    
        <div class="card text-center-sm shadow bg- mb-4 " style="max-width: 30rem">
            <div class="card-header">

                <asp:Label runat="server" Text="User Configuration"></asp:Label>

            </div>
            <div class="card-body">
                <asp:Panel ID="pnl" runat="server">
                <div class="row justify-content-center ">
                    <div class="col">
                        <asp:Label runat="server" Text="Change Name" style="margin-top: 3px" ></asp:Label>
                    </div>
                    <div class="col">
                        <asp:TextBox ID="tbChangeName" runat="server" style="margin-top: 3px" ></asp:TextBox>

                    </div>
                </div>

                <div class="row justify-content-center ">
                    <div class="col">
                        <asp:Label runat="server" Text="Change Sirname" style="margin-top: 3px" ></asp:Label>
                    </div>
                    <div class="col">
                        <asp:TextBox ID="tbChangeSirname" runat="server" style="margin-top: 3px" ></asp:TextBox>
                    </div>
                </div>


                <div class="row justify-content-center ">
                    
                        <asp:Label ID="lbErrorMessageUP" runat="server" Text="Error" ForeColor="Red" Visible="False"></asp:Label>
                    </div>
                    <div class="row justify-content-center ">
                        <asp:Button ID="bSubmitNameSirname" runat="server" Text="Submit" OnClick="bSubmitNameSirname_Click" style="margin-top: 3px" CssClass="btn btn-success"/>
                    </div>
                

                <hr />

                <div class="row justify-content-center ">
                    
                        <asp:Label runat="server" Text="Password Change" style="margin-top: 3px" ></asp:Label>
                    </div>
                    
                    <div class="row justify-content-center ">
                        <div class="col">
                            <asp:Label runat="server" Text="Old Password" style="margin-top: 3px" ></asp:Label>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="tbOldPassword" runat="server" TextMode="Password" style="margin-top: 3px" ></asp:TextBox>
                        </div>
                    </div>

                    <div class="row justify-content-center ">
                        <div class="col">
                            <asp:Label runat="server" Text="New Password" style="margin-top: 3px" ></asp:Label>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="tbNewPassword" runat="server" TextMode="Password" style="margin-top: 3px" ></asp:TextBox>
                        </div>
                    </div>

                    <div class="row justify-content-center ">
                        <div class="col">
                            <asp:Label runat="server" Text="Confirm Password" style="margin-top: 3px" ></asp:Label>
                        </div>
                        <div class="col">

                            <asp:TextBox ID="tbConfirmPassword" runat="server" TextMode="Password" style="margin-top: 3px" ></asp:TextBox>

                        </div>
                    </div>

                    <hr />
                    <div class="row justify-content-center " >

                        <asp:Label ID="lbErrorMessageDown" runat="server" Text="Error" ForeColor="Red" Visible="False" style="margin-top: 3px" ></asp:Label>
                    </div>
                    <div class="row justify-content-center ">
                        <asp:Button ID="bSubmitChange" runat="server" Text="Submit" OnClick="bSubmitChange_Click" style="margin-top: 3px" CssClass="btn btn-success"/>
                    </div>
                </asp:Panel>
                </div>
        </div>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="NotLogInContent" runat="server">
    U have to Log IN

</asp:Content>
