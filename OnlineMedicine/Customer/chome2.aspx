<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Chome.Master" AutoEventWireup="true" CodeBehind="chome2.aspx.cs" Inherits="OnlineMedicine.Customer.chome2" %>
<%@ Register src="DetailsUs.ascx" tagname="DetailsUs" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:DetailsUs ID="DetailsUs1" runat="server" />

</asp:Content>
