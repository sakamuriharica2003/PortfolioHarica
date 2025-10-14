<%@ Page Title="About" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PortfolioHarica.About" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="PageTitle" runat="server">About</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="about" class="about-split section" aria-labelledby="about-heading">
        <!-- LEFT: Bio & Motivation -->
        <div class="about-left">
            <h2 id="about-heading">About Me</h2>
            <p>
               I am a passionate and detail-oriented graduate student pursuing my Master’s in Information Systems and Technology. I have a strong interest in data-driven problem solving and enjoy turning complex data into clear, actionable insights.

            </p>

            <h3>What Drives Me</h3>
            <p>
                Curiosity and the desire to turn data into meaningful insights drive me every day.

            </p>
            <p>
                I’m motivated by solving problems, learning new technologies, and finding ways to make systems smarter and more efficient
            </p>

            <p class="muted"><strong>Fun Fact:</strong> I can spend hours perfecting a dashboard just to make one chart look right!</p>

            <div class="about-actions">
                <a class="btn-primary" href="https://drive.google.com/drive/folders/1k_XWR-Lj_fSUvIRCm6k37n5DAO31IDAV?usp=sharing" aria-label="Download my resume">Download Resume</a>
                
            </div>
        </div>

        <!-- RIGHT: Highlights -->
        <aside class="about-right" aria-label="Highlights">
            <div class="about-card">
                <h3>Quick Facts</h3>
                <ul class="list-clean">
                    <li>🎓 Pursuing Master’s in Information Systems and Technology</li>
                    <li>⚙️ Background in Electronics and Communication Engineering</li>
                    <li>🧠 Skilled in Python, SQL, and Tableau</li>
                    <li>🧭 Focus: Front-end, Databases, Security</li>
                    <li>🌱 Always eager to learn and take on new challenges</li>
                </ul>
            </div>

            <div class="about-card">
                <h3>Technical Skills</h3>
                <ul class="skills chips">
                    <li>HTML</li>
                    <li>CSS</li>
                    <li>JavaScript</li>
                    <li>Python</li>
                    <li>MySQL</li>
                    <li>Tableau</li>

                </ul>
            </div>

            <div class="about-card">
                <h3>Currently Exploring</h3>
                <div class="chip-row">
                    <ul>
                        <li class="chip">Advanced data visualization techniques in Tableau</li>
                        <li class="chip">Data analytics workflows and dashboard automation</li>
                        <li class="chip">Exploring cloud data platforms and data storytelling</li>
                    </ul>
                </div>
            </div>
        </aside>
    </section>
</asp:Content>
