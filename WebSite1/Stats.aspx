<%@ Page Title="Stats" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stats.aspx.cs" Inherits="Stats" %>

	<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

	<asp:Content ID="IDPageBody" ContentPlaceHolderID="MainContent" runat="server">
        Without Graphs
        <table>
            <tr cosplan="2">
                <td >
                    Project Stats 

                </td>
            </tr>
            <tr>
                <td>
                     <asp:Panel ID="PanelPDF" runat="server">
                                    <asp:GridView ID="GridViewData" runat="server"  CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />

                                    </asp:GridView>

                                </asp:Panel>
                </td>
                <td>
                    <asp:Chart ID="ChartProject" runat="server" Height="261px" Width="348px">
                        <series>
                            <asp:Series Name="Series1" ChartType="Line">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                   
                    
                   
                </td>
            </tr>
            <tr>
                <td>
                        <asp:Button ID="btDownload"  runat="server" Text="Download" OnClick="btDownload_Click" />
                </td>
            </tr>
           
            
</table>
        <hr />
<table>
    <tr>
        <td >
            Task Stats

        </td>
    </tr>
    <tr>
                <td>
                     <asp:Panel ID="PanelPDF2" runat="server">
                                    <asp:GridView ID="GridViewTasksData" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">


                                        <AlternatingRowStyle BackColor="White" />
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />


                                    </asp:GridView>

                                </asp:Panel>
                </td>
        <td class="auto-style1">
            
                    &nbsp;</td>
            </tr>

            <tr cosplan="2">
                <td>
                        <asp:Button ID="btDownloadTasks"  runat="server" Text="Download" OnClick="btDownloadTasks_Click" />
                </td>
            </tr>
</table>

 	</asp:Content>
	<asp:Content ID="Content1" ContentPlaceHolderID="NotLogInContent" runat="server">

				

 	</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 10px;
        }
    </style>
</asp:Content>

