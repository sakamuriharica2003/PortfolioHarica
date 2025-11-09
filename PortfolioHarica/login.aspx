<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PortfolioHarica.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<table align="center" cellpadding="0" cellspacing="0" style="width: 76%">
    <tr>
        <td style="text-align: right; width: 314px">Email:</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Must be an email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 314px">Password:</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtPswd" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPswd" runat="server" ControlToValidate="txtPswd" ErrorMessage="* Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 314px"> </td>
        <td style="text-align: left"> </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 314px"> </td>
        <td style="text-align: left">
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 314px"> </td>
        <td style="text-align: left">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
    </tr>
</table>
<p>
</p>
<p>
</p>
</asp:Content>
 