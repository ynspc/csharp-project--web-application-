﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="busedit.ascx.cs" Inherits="FinalYearProject.busedit" %>

<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"
    AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True"
     BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
<Columns>
               <asp:BoundField DataField="busid" HeaderText="busid" SortExpression="busid" Visible="false"/>
               <asp:BoundField DataField="busname" HeaderText="busname" SortExpression="busname" />
               
           </Columns>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clientserverConnectionString %>" 
    SelectCommand="SELECT * FROM [bus]" 
    UpdateCommand="update bus set busname= @busname where busid=256"
    DeleteCommand="delete from bus where id = @id"></asp:SqlDataSource>
