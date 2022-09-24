<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="category.ascx.cs" Inherits="OnlineMedicine.category" %>
<asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
    RepeatDirection="Horizontal">
    <ItemTemplate>
        <table class="style1">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="200px" 
                        ImageUrl='<%# Eval("cimage") %>' Width="200px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# "../home1.aspx?catid="+Eval("catid") %>' 
                        Text='<%# Eval("cname") %>'></asp:HyperLink>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
