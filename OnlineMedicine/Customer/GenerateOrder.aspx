<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Chome.Master" AutoEventWireup="true" CodeBehind="GenerateOrder.aspx.cs" Inherits="OnlineMedicine.Customer.GenerateOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Text="Thanks, Your's Order is generated successfully."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Text="Order code is"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblcode" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</center>
</asp:Content>
