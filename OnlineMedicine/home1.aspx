<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="home1.aspx.cs" Inherits="OnlineMedicine.home11" %>
<%@ Register src="detailsUC.ascx" tagname="detailsUC" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:detailsUC ID="detailsUC1" runat="server" />

</asp:Content>
