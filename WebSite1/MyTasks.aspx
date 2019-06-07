<%@ Page Title="MyTasks" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyTasks.aspx.cs" Inherits="MyTasks" %>


<asp:Content ID="BodyMyTasks" ContentPlaceHolderID="MainContent" runat="server">

<style>
.column {
    float: left;
    width: 40%;
}

.column1 {
    float: left;
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

.table td {

    text-align: left;
    margin: auto;
}

.alnC

{

margin:0 auto;
width: 225px;

}
</style>
              <table class="table">
            <thead>
    <tr>
      <th scope="col">Choose task:</th>

    </tr>
  </thead>
			<tbody>
             <tr>
				<td>Project:&nbsp;</td>
				<td>
                    <asp:DropDownList ID="ddlProjects" runat="server" class="alnC" OnSelectedIndexChanged="ddlProjects_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    &nbsp;</td>
			</tr>
                			<tr>
				<td>Task:&nbsp;</td>
				<td>
                    <asp:DropDownList ID="ddlTasks" runat="server" class="alnC" AutoPostBack="True" OnSelectedIndexChanged="ddlTasks_SelectedIndexChanged"></asp:DropDownList>
                    &nbsp;</td>
			</tr>
			<tr>
				<td >Leader name:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbLeaderName" class="alnC" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:Label ID="lbLeaderID" runat="server" Text="" Visible="False" class="alnC"></asp:Label>
                    &nbsp;</td>
			</tr>
			<tr>
				<td>Status:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbTaskStatus" class="alnC" runat="server" ReadOnly="True"></asp:TextBox>
                    &nbsp;</td>
			</tr>
			<tr>
				<td>Description:&nbsp;</td>
				<td>
                    <asp:TextBox ID="tbTaskDescription" class="alnC" runat="server" ReadOnly="True" Enabled="True" Wrap="True" TextMode="MultiLine" style = "resize:none"></asp:TextBox>
                    &nbsp;</td>

			</tr>
                <tr>
				<td>Worked hours: &nbsp;</td>
				<td>
                    <asp:TextBox ID="tbHoursWorked" runat="server" TextMode="Number" class="alnC"></asp:TextBox>
                    &nbsp;</td>
			</tr>
            <tr>
                <td>
                   
                </td>
                <td>                
                   
                </td>
              </tr>
			<tbody>
		</table>                 
    <table>
          <tr>
            <td>    
             </td> 
          </tr>
          <tr>
            <td>
                <asp:Button ID="btTaskSave" runat="server" style="margin-top: 0px" Text="Save" CssClass="btn btn-success" OnClick="btTaskSave_Click" />
                    <asp:Label ID="lbTaskSaveSucces" runat="server" Text=""></asp:Label>  
             &nbsp;</td> 
          </tr>

      </table>


</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    </asp:Content>


