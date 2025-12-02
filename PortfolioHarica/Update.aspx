<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="PortfolioHarica.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:SqlDataSource ID="dsReg" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" SelectCommand="SELECT * FROM [Logins]" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
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
            <UpdateParameters>
                <asp:Parameter Name="User_Pass" Type="String" />
                <asp:Parameter Name="User_FName" Type="String" />
                <asp:Parameter Name="User_LName" Type="String" />
                <asp:Parameter Name="User_YOB" Type="Int32" />
                <asp:Parameter Name="User_Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </p>
    <table align="center" style="width: 79%; margin-left: 0px">
        <tr>
            <td style="text-align: right; width: 440px">Email:</td>
            <td style="width: 482px">
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
            <td style="text-align: left; width: 633px">
                 </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 440px"> </td>
            <td style="width: 482px">
                Member Information</td>
            <td style="text-align: left; width: 633px">
                 </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 440px">Password:</td>
            <td style="width: 482px">
                <asp:TextBox ID="txtPswd" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left; width: 633px">
                 </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 440px">Confirm Password:</td>
            <td style="width: 482px">
                <asp:TextBox ID="txtCPswd" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left; width: 633px">
                <asp:CompareValidator ID="cv2" runat="server" ControlToCompare="txtPswd" ControlToValidate="txtCPswd" ErrorMessage="* Values must be same"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 440px">First Name:</td>
            <td style="width: 482px">
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left; width: 633px">
                <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtFname" ErrorMessage="* Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 440px">Last Name:</td>
            <td style="width: 482px">
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left; width: 633px">
                <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtLname" ErrorMessage="* Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 440px">Year of Birth:</td>
            <td style="width: 482px">
                <asp:TextBox ID="txtYob" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left; width: 633px">
                <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="txtYob" ErrorMessage="* Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rev2" runat="server" ControlToValidate="txtYob" ErrorMessage="* Must be an year" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 440px"> </td>
            <td style="width: 482px"> </td>
            <td style="text-align: left; width: 633px"> </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 440px"> </td>
            <td style="width: 482px">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update my account" Width="295px" />
            </td>
            <td style="text-align: left; width: 633px"> </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 440px"> </td>
            <td style="width: 482px">
                 </td>
            <td style="text-align: left; width: 633px"> </td>
        </tr>
    </table>
    <p style="text-align: center">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </p>
    <p style="text-align: center">
        <asp:Label ID="lblPass" runat="server" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="dsUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" SelectCommand="SELECT * FROM [Logins] WHERE ([User_Email] = @User_Email)" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
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
    </p>
    <p>
    </p>
</asp:Content>