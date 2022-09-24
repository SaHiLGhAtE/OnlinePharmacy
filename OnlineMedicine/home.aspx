<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="OnlineMedicine.home1" %>
<%@ Register src="category.ascx" tagname="category" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:category ID="category1" runat="server" />

</asp:Content>
