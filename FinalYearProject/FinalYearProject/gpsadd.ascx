﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="gpsadd.ascx.cs" Inherits="FinalYearProject.gpsadd" %>

<table style="vertical-align:middle;">
    <tr>
        <td><asp:Label ID="Label1" runat="server" Text="Gps Id:"></asp:Label></td>
        <td><asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="120px"></asp:TextBox></td>
    </tr>

    <tr>
        <td><asp:Label ID="Label2" runat="server" Text="IMEI no:"></asp:Label></td>
        <td><asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="120px"></asp:TextBox></td>
    </tr>

    <tr>
        <td colspan="2"><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td>

    </tr>

</table>
