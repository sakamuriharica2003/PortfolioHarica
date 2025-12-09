<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="PortfolioHarica.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        We are sorry to see you go ;(</p>
    <p>
        Enter your email address to remove your account.</p>
    <p>
        Email:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete my account" Width="255px" />
        <asp:SqlDataSource ID="dsDelete" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" SelectCommand="SELECT * FROM [Logins] WHERE ([User_Email] = @User_Email)" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
            <DeleteParameters>
                <asp:Parameter Name="User_Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="User_Email" Type="String" />
                <asp:Parameter Name="User_Pass" Type="String" />
                <asp:Parameter Name="User_FName" Type="String" />
                <asp:Parameter Name="User_LName" Type="String" />
                <asp:Parameter Name="User_YOB" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="User_Email" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="User_Pass" Type="String" />
                <asp:Parameter Name="User_FName" Type="String" />
                <asp:Parameter Name="User_LName" Type="String" />
                <asp:Parameter Name="User_YOB" Type="Int32" />
                <asp:Parameter Name="User_Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </p>
</asp:Content>