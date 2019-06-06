<%@ Page Title="MyProjects" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyProjects.aspx.cs" Inherits="MyProjects" %>

<asp:Content ID="BodyMyProjects" ContentPlaceHolderID="MainContent" runat="server">

<style>
.column {
    float: left;
    width: 40%;
}

.column1 {
    float: left;
    width: 20%;
}

.betterTable caption {
    caption-side: top;
}

.betterTable td {

    text-align: left;
}

.alnC

{

margin:0 auto;
width: 225px;

}



</style>

    <div class="card text-center-md shadow mb-2 bg-white "style=" min-width:250px">

        <div class="card-header">
            My Project
        </div>
        <div class="card-body">


<div class="row justify-content-center">
  <div class="col">
     <asp:treeview id="TreeViewProjects" runat="server" ExpandDepth="0" OnSelectedNodeChanged="TreeViewProjects_SelectedNodeChanged" Target="_self">
         <SelectedNodeStyle Font-Bold="True" />
      </asp:treeview>
  </div>
  <div class="col">
      <div  class="table-responsive">
      <table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">Project:</th>

    </tr>
  </thead>
			<tbody>
			<tr>
				<td >Name:</td>
				<td>
                    <asp:Label ID="lbProjectID" runat="server" Text="" Visible="False"></asp:Label>
                    <asp:TextBox ID="tbProjectName" class="alnC" runat="server" ReadOnly="True"></asp:TextBox>
                    &nbsp;</td>
			</tr>
			<tr>
				<td>Creator name:&nbsp;</td>
				<td>
                    <asp:DropDownList ID="ddProjectCreator" class="alnC"   runat="server" DataTextField="name_lastname" DataValueField="id">
                    </asp:DropDownList>
                &nbsp;</td>
			</tr>
			<tr>
				<td>Creation date:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbProjectCreationDate" class="alnC" runat="server" TextMode="Date" ReadOnly="False"></asp:TextBox>
                    &nbsp;</td>
			</tr>
			<tr>
				<td>Start date:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbProjectStartDate" class="alnC" runat="server" TextMode="Date" ReadOnly="False"></asp:TextBox>
                    &nbsp;</td>
			</tr>
			<tr>
				<td>End date:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbProjectEndDate" class="alnC" runat="server" TextMode="Date" ReadOnly="False"></asp:TextBox>
                    &nbsp;</td>
			</tr>
			<tr>
				<td>Status:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbProjectStatus" class="alnC" runat="server" ReadOnly="False"></asp:TextBox>
                    &nbsp;</td>
			</tr>
			<tr>
				<td>Description:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbProjectDescription" class="alnC" runat="server" ReadOnly="False" Enabled="True" Wrap="True" TextMode="MultiLine" style = "resize:none"></asp:TextBox>

                    &nbsp;</td>
			</tr>
			<tr>
				<td>Remarks:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbProjectRemarks" class="alnC" runat="server" ReadOnly="False" Enabled="True" Wrap="True" TextMode="MultiLine" style = "resize:none"></asp:TextBox>
                    </td>
			</tr>

			<tbody>
		</table>
          

      </div>
            <div  class="table-responsive">
      <table class="table table-sm">
          <tr>
            <td>
                <asp:Button ID="btProjectSave" runat="server" Text="Save" OnClick="btProjectSave_Click" />   
             &nbsp;</td> 
          </tr>

          <tr>
            <td>
                <asp:Label ID="lbProjectSaveSucces" runat="server" Text=""></asp:Label>   
             &nbsp;</td> 
          </tr>

      </table>
                </div>
          
  </div>
    

    <div class="col">
        <div class="table-responsive">
              <table class="table">
            <thead>
    <tr>
      <th scope="col">Task:</th>

    </tr>
  </thead>
			<tbody>
			<tr style="margin-top:3px">
				<td>Name:&nbsp;</td>
				<td>
                    <asp:Label ID="lbTaskID" runat="server" Text="" Visible="False"></asp:Label>
                    <asp:TextBox ID="tbTaskName" class="alnC" runat="server" ReadOnly="True"></asp:TextBox>
                    &nbsp;</td>
			</tr>
			<tr style="margin-top:3px">
				<td >Leader name:&nbsp;</td>
				<td>
                    <asp:DropDownList ID="ddTaskLeader" class="alnC" runat="server"  DataTextField="name_lastname" DataValueField="id"></asp:DropDownList>
                  
                    &nbsp;</td>
			</tr>
			<tr>
				<td>Status:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbTaskStatus" class="alnC" runat="server" ReadOnly="False"></asp:TextBox>
                    &nbsp;</td>
			</tr>
			<tr>
				<td>Description:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbTaskDescription" class="alnC" runat="server" ReadOnly="False" Enabled="True" Wrap="True" TextMode="MultiLine" style = "resize:none"></asp:TextBox>
                    &nbsp;</td>
			</tr>
			<tbody>
		</table>
        
         <table>
          <tr>
            <td>
                 <asp:Button ID="btTaskSave" runat="server" style="margin-top: -100px" Text="Save" OnClick="btTaskSave_Click" />
             </td> 
          </tr>

          <tr>
            <td>
                <asp:Label ID="lbTaskSaveSucces" runat="server" Text=""></asp:Label>   
             &nbsp;</td> 
          </tr>

      </table>
        


               
    </div>
        </div>
</div>  
            </div>
</asp:Content>








 <asp:Content ID="Content1" ContentPlaceHolderID="NotLogInContent" runat="server">

        Here will be list of projects but you will see it only if you log in on your account

 </asp:Content>


