<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Chome.Master" AutoEventWireup="true" CodeBehind="ShopCart.aspx.cs" Inherits="OnlineMedicine.Customer.ShopCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            height: 35px;
        }
    .style4
    {
        height: 29px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="text-black">
                <strong class="ui-priority-primary">Items in my basket</strong></td>
        </tr>
        <tr>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="sid" onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleted="GridView1_RowDeleted" onrowediting="GridView1_RowEditing" 
                    onrowupdating="GridView1_RowUpdating" 
                    onrowdeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="sid">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("sid") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("cname") %>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("cname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Title">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="75px" 
                                    ImageUrl='<%# Eval("image1") %>' Width="75px" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Image ID="Image2" runat="server" Height="75px" 
                                    ImageUrl='<%# Eval("image1") %>' Width="75px" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Qty">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("qty") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("qty") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("tot") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("tot") %>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Operations">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="Edit" />
                                <asp:Button ID="Button2" runat="server" CommandName="Delete" Text="Delete" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="Button3" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="Button4" runat="server" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="Label10" runat="server" ForeColor="Blue" Text="Grand Total (Rs.)"></asp:Label>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTot" runat="server" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Checkout" 
                    Width="134px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
