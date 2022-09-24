<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="detailsUC.ascx.cs" Inherits="OnlineMedicine.detailsUC" %>
<asp:DataList ID="DataList1" runat="server" RepeatColumns="2" 
    RepeatDirection="Horizontal" Width="1230px" style="font-weight: 700">
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
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

