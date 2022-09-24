<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Ahome.Master" AutoEventWireup="true" CodeBehind="ManageOrder.aspx.cs" Inherits="OnlineMedicine.Admin.ManageOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .style1
        {
            width: 100%;
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
            <td style="background-color:White;color:Black">
                      <h3>      <strong>Order Placed by Customer </strong> </h3></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="800px">
                    <Columns>
                        <asp:TemplateField HeaderText="OrderCode">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ordercode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="OrderDate">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("odate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("mname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Shipping Address">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pincode">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contactno">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("contactno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Operation">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink5" runat="server" 
                                    NavigateUrl='<%# "~/Admin/orderdetails.aspx?ordercode="+Eval("ordercode") %>' 
                                    Text="View Order"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</center>
</asp:Content>
