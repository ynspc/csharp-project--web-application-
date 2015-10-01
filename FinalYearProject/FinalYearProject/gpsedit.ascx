﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="gpsedit.ascx.cs" Inherits="FinalYearProject.gpsedit" %>
<asp:GridView ID="GridView1" runat="server"
     DataSourceID="SqlDataSource1"
    AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True"
    >
    <Columns>
        <asp:BoundField DataField="gpsid" HeaderText="gpsid" SortExpression="gpsid" />
        <asp:BoundField DataField="imei" HeaderText="imei" SortExpression="imei" />
        <asp:BoundField DataField="busid" HeaderText="busid" SortExpression="busid" />
    </Columns>
</asp:GridView>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clientserverConnectionString %>" SelectCommand="SELECT * FROM [gpsdetail]" UpdateCommand="update gpsdetail set busid=@busid"></asp:SqlDataSource>
