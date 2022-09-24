<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Chome.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="OnlineMedicine.Customer.CheckOut" %>
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
        .style3
        {}
        .style4
        {
            font-weight: bold;
        }
        .style5
        {
            height: 22px;
        }
            .style6
            {
                color: black;
                background-color: #FFFFFF;
            }
            .style7
            {
                height: 29px;
            }
            .style8
            {
                height: 29px;
                background-color: #FFFFFF;
            }
            .style9
            {
                height: 50px;
            }
    .style10
    {
        height: 22px;
        font-weight: bold;
        color: #000000;
    }
    .style11
    {
        height: 50px;
        font-weight: bold;
        color: #000000;
    }
    .style12
    {
        font-weight: bold;
        height: 29px;
        color: #000000;
    }
    .style13
    {
        height: 19px;
        color: #000000;
    }
    .style14
    {
        font-weight: bold;
        color: #000000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<table class="style1">
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style8">
                            </td>
                        <td colspan="2" style="color:White; font-weight: 700;" class="style8">
                      <h3 style="color: #000000">      <strong>Shipping Details </strong> </h3></td>
                        <td class="style7">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            </td>
                        <td class="style13" colspan="2">
                            <strong class="ui-priority-primary">Name</strong></td>
                        <td class="style2">
                            </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style2" colspan="2">
                            <table class="style1">
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtfn" runat="server" Width="124px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtmn" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtln" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style14">
                            <b class="ui-priority-primary">Email</b></td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            </td>
                        <td class="style12">
                            <b class="ui-priority-primary">Contact No</b></td>
                        <td class="style7">
                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                        </td>
                        <td class="style7">
                            </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            </td>
                        <td class="style11">
                            <b class="ui-priority-primary">Shipping Address</b></td>
                        <td class="style9">
                            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td class="style9">
                            </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            </td>
                        <td class="style10">
                            <b class="ui-priority-primary">Pincode</b></td>
                        <td class="style5">
                            <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                            <br />
                        </td>
                        <td class="style5">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <b></b></td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td colspan="4"style="background-color:White;color:White">
                      <h3 class="style6">      <strong>Payment Details </strong> </h3></td>
                    </tr>
                    <tr>
                        <td class="style3" rowspan="7">
                            <br />
                            <asp:Image ID="Image3" runat="server" Height="179px" 
                                ImageUrl="~/Styles/images (4).jpg" Width="323px" />
                        </td>
                        <td class="style14">
                            Amount</td>
                        <td class="style3">
                            <asp:Label ID="lblamt" runat="server"></asp:Label>
                        </td>
                        <td class="style3" rowspan="7">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Styles/images.png" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="text-black">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            Card No</td>
                        <td class="style3">
                            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" Display="Dynamic" 
                                ErrorMessage="Invalid card number" Font-Bold="True" ForeColor="#FF3300" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                Display="Dynamic" ErrorMessage="only 16 digits" 
                                ValidationExpression="\b\d{4}[-]?\d{4}[-]?\d{4}[-1]?\d{4}\b" 
                                ControlToValidate="TextBox1" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            Expairy Date</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="100px">
                                <asp:ListItem>Jan</asp:ListItem>
                                <asp:ListItem>Feb</asp:ListItem>
                                <asp:ListItem>Mar</asp:ListItem>
                                <asp:ListItem>Apr</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>Jun</asp:ListItem>
                                <asp:ListItem>Jul</asp:ListItem>
                                <asp:ListItem>Aug</asp:ListItem>
                                <asp:ListItem>Sep</asp:ListItem>
                                <asp:ListItem>Oct</asp:ListItem>
                                <asp:ListItem>Nov</asp:ListItem>
                                <asp:ListItem>Dec</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="100px">
                                <asp:ListItem>2022</asp:ListItem>
                                <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>
                                <asp:ListItem>2025</asp:ListItem>
                                <asp:ListItem>2026</asp:ListItem>
                                <asp:ListItem>2027</asp:ListItem>
                                <asp:ListItem>2028</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            CVC</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox3" Display="Dynamic" 
                                ErrorMessage="Invalid CVC" Font-Bold="True" ForeColor="#FF3300" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                Display="Dynamic" ErrorMessage="only 3 digits" 
                                ValidationExpression="^(?!000)\d{3,4}$" 
                                ControlToValidate="TextBox3" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Generate Order" 
                    Width="150px" onclick="Button1_Click" />
            </td>
        </tr>
    </table>

</center>
</asp:Content>
