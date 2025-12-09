<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="LoginSuccess.aspx.cs" Inherits="PortfolioHarica.LoginSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p style="text-align: center"> Welcome!    You are successfully authenticated. </p>
    <p style="text-align: center"> 
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Update.aspx">Update my account</asp:HyperLink>
    </p>
    <p style="text-align: center"> 
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Delete.aspx">Delete my account</asp:HyperLink>
    </p>

</asp:Content>