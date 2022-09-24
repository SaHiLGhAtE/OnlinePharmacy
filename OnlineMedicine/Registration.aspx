<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineMedicine.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 58px;
        }
         .style4
         {
             font-size: large;
         }
         .style6
         {
             font-size: x-large;
         }
         .style7
         {
             font-weight: bold;
             color: #000000;
             height: 29px;
             background-color: #FFFFFF;
         }
         .style8
         {
             height: 29px;
         }
         .style9
         {
             background-color: #fff;
             height: 29px;
             color: #000000;
             font-weight: 700;
         }
         .style10
         {
             height: 70px;
         }
         .style11
         {
             height: 70px;
             width: 12px;
         }
         .style12
         {
             text-align: left;
             width: 12px;
         }
         .style13
         {
             color: #000;
             width: 12px;
         }
         .style14
         {
             width: 12px;
         }
         .style15
         {
             height: 29px;
             width: 12px;
         }
         .style16
         {
             height: 58px;
             width: 12px;
         }
         .style17
         {
             width: 295px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td colspan="2">
                   <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
                    oncreateduser="CreateUserWizard1_CreatedUser">
                    <WizardSteps>
                        <asp:WizardStep ID="WizardStep1" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="style11">
                                        </td>
                                    <td colspan="3" 
                                        style="background-color:White;color:White; font-weight: 700;" 
                                        class="style10">
                      
                                        <span class="text-black"><strong class="ui-priority-primary">
                                        <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="style6">
                                        Customer Registration</span><span class="style4"> </span></strong></span>
                      
                                        </td>
                                    <td class="style10">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        &nbsp;</td>
                                    </tr>
                                <tr>
                                    <td class="style13">
                                        &nbsp;</td>
                                    <td class="style7">
                                        Name</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        &nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txtFname" runat="server" style= "text-align: center" 
                                            placeholder=" First Name"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Invalid name" 
                                            Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                            ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Must be alphabet" 
                                            Font-Bold="True" ForeColor="Red" ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMname" runat="server" style= "text-align: center" 
                                            placeholder=" Middle Name" ></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="txtMname" Display="Dynamic" ErrorMessage="Invalid name" 
                                            Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                            ControlToValidate="txtMname" Display="Dynamic" ErrorMessage="Must be alphabet" 
                                            Font-Bold="True" ForeColor="Red" ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtLname" runat="server" style= "text-align: center" 
                                            placeholder=" Last Name" Width="188px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="Invalid name" 
                                            Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                            ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="Must be alphabet" 
                                            Font-Bold="True" ForeColor="Red" ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        &nbsp;</td>
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
                                    <td class="style15">
                                        </td>
                                    <td class="style7">
                                        <b>Address</b></td>
                                    <td class="style9">
                                        <b>Pin</b></td>
                                    <td class="style9">
                                        <b>Contact</b></td>
                                    <td class="style8">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style16">
                                        </td>
                                    <td class="style2">
                                        <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td class="style2">
                                        <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="Invalid pin" 
                                            Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                            ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="6 digit only" 
                                            Font-Bold="True" ForeColor="Red" 
                                            ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="style2">
                                        <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="txtcontact" Display="Dynamic" ErrorMessage="Invalid contact" 
                                            Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                            ControlToValidate="txtcontact" Display="Dynamic" ErrorMessage="10 digit only" 
                                            Font-Bold="True" ForeColor="Red" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="style2">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        &nbsp;</td>  
                                </tr>
                                <tr>
                                    <td class="style14">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                                                    </tr>
                            </table>
                        </asp:WizardStep>
                        <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" />
                        <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
                    </WizardSteps>
                </asp:CreateUserWizard></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
