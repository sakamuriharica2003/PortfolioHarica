
<%@ Page Title="Projects" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="PortfolioHarica.Projects" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="PageTitle" runat="server">Projects</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="projects" class="section">
        <h2>My Projects</h2>
        <p>Here are some of the projects I’ve worked on, showcasing my skills in web development, data management, and security.</p>

        <div class="project-grid">
            <article class="project-card">
                <h3>Optimization of WIFI communication system</h3>
                <p>Optimized a 5 GHz WiFi communication circuit using a low-power ring oscillator (0.13 μm CMOS), achieving 1.08 mW power consumption and improved phase noise for better RF performance.</p>
                <p><strong>Technologies:</strong> 0.13 um CMOS</p>
                <p><a href="https://drive.google.com/drive/folders/1KYJOpNEx0m8URsaZ7xYl97TjHJn0XjQM?usp=sharing" target="_blank" rel="noopener">View Project</a></p>
            </article>

            <article class="project-card">
                <h3>Data Visualization</h3>
                <p>Just wrapped up a Tableau project analyzing world energy trends (2000–2022) 🌎⚡.
This dashboard visualizes how countries are shifting from fossil fuels to renewables and what that means for our planet’s future.
A step forward in combining data visualization and sustainability insights!</p>
                <p><strong>Technologies:</strong> Tableau,Sql</p>
                <p><a href="https://drive.google.com/drive/folders/1BbBTs7mj0hshh41G4BKnTmCWOTWdwp5X?usp=sharing" target="_blank" rel="noopener"> Drive link</a></p>
            </article>

            <article class="project-card">
                <h3>Personal Portfolio</h3>
                <p>The site you’re viewing right now! Designed to highlight my work and journey.</p>
                <p><strong>Technologies:</strong> HTML, CSS, JavaScript</p>
                <p><a href="https://drive.google.com/drive/folders/1KYJOpNEx0m8URsaZ7xYl97TjHJn0XjQM?usp=sharing" target="_blank" rel="noopener"> GitHub link</a></p>
            </article>
        </div>
    </section>
</asp:Content>
