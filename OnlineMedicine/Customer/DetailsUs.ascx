<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DetailsUs.ascx.cs" Inherits="OnlineMedicine.Customer.DetailsUs" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        height: 35px;
    }
</style>



<table class="style1">
    <tr>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/Customer/ShopCart.aspx">Items</asp:HyperLink>(<asp:Label ID="lblItems" runat="server"></asp:Label>)</td>
    </tr>
    <tr>
        <td>
           <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
    RepeatDirection="Horizontal" onupdatecommand="DataList1_UpdateCommand">
    <ItemTemplate>
        <table class="style1">
            <tr>
                <td rowspan="5">
                    <asp:Image ID="Image1" runat="server" Height="200px" 
                        ImageUrl='<%# Eval("image1") %>' Width="220px" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("details") %>'></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:HiddenField ID="HiddenField2" runat="server" 
                        Value='<%# Eval("catid") %>' />
                </td>
                <td class="style2">
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    &nbsp; Rs.</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:HiddenField ID="HiddenField1" runat="server" 
                        Value='<%# Eval("image1") %>' />
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        CommandArgument='<%# Eval("catid") %>' CommandName="Update">Add To Cart</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</td>
    </tr>
</table>