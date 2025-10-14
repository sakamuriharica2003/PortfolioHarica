<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PortfolioHarica.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="home" class="home hero-split">
        <div class="hero-left">
            <img src="Images/harica.jpg" alt="Profile picture of Alex Johnson" class="profile-img" />
        </div>
        <div class="hero-right">
            <h2 class="hero-title">Aspiring Software Developer</h2>
            <p class="hero-subtitle">
                I’m passionate about designing modern, responsive, and user-friendly web applications.
                Explore my projects and see how I turn ideas into interactive experiences!
            </p>
            <div class="btn-row">
                <a class="btn-primary" href="Projects.aspx">View My Work</a>
                <a class="btn-secondary" href="About.aspx">About Me</a>
            </div>
        </div>
    </section>
</asp:Content>
