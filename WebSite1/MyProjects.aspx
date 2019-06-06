<%@ Page Title="MyProjects" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyProjects.aspx.cs" Inherits="MyProjects" %>

<asp:Content ID="BodyMyProjects" ContentPlaceHolderID="MainContent" runat="server">


<style>
.column {
    float: left;
    width: 40%;
}

.column1 {
    float: right;
    width: auto;
}

.row1 {
display:-ms-flexbox;
display:flex;
/*-ms-flex-wrap:wrap;*/
/*flex-wrap:wrap; */
margin-right:-15px;
margin-left:-15px
}



.betterTable caption {
caption-side: top;
}

.betterTable td {
text-align: left;
}

.alnC{
margin:0 auto;
width: 225px;
}

</style>
<div class="row1">
  <div class="column1">
     <asp:treeview id="TreeViewProjects" runat="server" ExpandDepth="0" OnSelectedNodeChanged="TreeViewProjects_SelectedNodeChanged" Target="_self">
         <SelectedNodeStyle Font-Bold="True" />
      </asp:treeview>
  </div>
  <div class="column">
      <table class="betterTable">
          <caption>Project:</caption>
			<tbody>
			<tr>
				<td >Name:&nbsp;</td>
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
                    &nbsp;</td>
			</tr>
            <tr>
                <td>
                    
                </td>     
            </tr>
			<tbody>
		</table>

      <table>
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


    <div class="column">
              <table class="betterTable">
          <caption>Task:</caption>
			<tbody>
			<tr>
				<td>Name:&nbsp;</td>
				<td>
                    <asp:Label ID="lbTaskID" runat="server" Text="" Visible="False"></asp:Label>
                    <asp:TextBox ID="tbTaskName" class="alnC" runat="server" ReadOnly="True"></asp:TextBox>
                    &nbsp;</td>
			</tr>
			<tr>
				<td>Leader name:&nbsp;</td>
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
                <tr>
				<td>Users:&nbsp;</td>
				<td>
                    <asp:CheckBoxList ID="cblUsers" runat="server" BackColor="White" Width="225px"></asp:CheckBoxList>
                    &nbsp;</td>
			</tr>
			<tbody>
		</table>

         <table>
          <tr>
            <td>
                 <asp:Button ID="btTaskSave" runat="server" Text="Save" OnClick="btTaskSave_Click" />
             &nbsp;</td> 
          </tr>

          <tr>
            <td>
                <asp:Label ID="lbTaskSaveSucces" runat="server" Text=""></asp:Label>   
             &nbsp;</td> 
          </tr>

      </table>



               
    </div>
</div>  
</asp:Content>








 <asp:Content ID="Content1" ContentPlaceHolderID="NotLogInContent" runat="server">

        Here will be list of projects but you will see it only if you log in on your account

 </asp:Content>


