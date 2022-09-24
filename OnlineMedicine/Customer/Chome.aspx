<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Chome.Master" AutoEventWireup="true" CodeBehind="Chome.aspx.cs" Inherits="OnlineMedicine.Customer.Chome1" %>
<%@ Register src="category.ascx" tagname="category" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:category ID="category1" runat="server" />

</asp:Content>
