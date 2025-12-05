<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KK FUNDA Home Page</title>
<link href="images/kkfunda.jpg" rel="icon">
<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background: #f9f9f9;
        font-family: Arial, sans-serif;
    }
    header {
        background: linear-gradient(90deg, #007bff, #00c6ff);
        color: white;
        padding: 20px;
        text-align: center;
    }
    h1, h3 {
        margin: 10px 0;
    }
    .info-card {
        background: white;
        border-radius: 10px;
        box-shadow: 0px 4px 6px rgba(0,0,0,0.1);
        padding: 20px;
        margin: 20px auto;
        max-width: 700px;
    }
    footer {
        margin-top: 30px;
        background: #222;
        color: white;
        padding: 15px;
        text-align: center;
    }
    footer a {
        color: #00c6ff;
        text-decoration: none;
    }
</style>
</head>
<body>

<header>
    <h1>🚀 Welcome to Akhila's DevOps Portfolio 🚀</h1>
    <h3>DevOps | AWS | DevSecOps | SRE</h3>
</header>

<div class="container">

    <!-- Server Info -->
    <div class="info-card">
        <h3>About Me</h3>
        <p>I am an enthusiastic DevOps & Cloud Engineer looking for opportunities to begin my career. I have hands-on practice in AWS, Jenkins, Linux, GitHub, and CI/CD tools learned through projects and training.
            I enjoy automating tasks, solving technical problems, and learning new technologies every day.</p>
    </div>

    <!-- Skills Info -->
    <div class="info-card">
        <h3>🚀 Skills</h3>
        <hr>
        <p><b>DevOps Tools :</b></p>
        <ul>
           <li>Jenkins</li>
           <li>Git & GitHub</li>
           <li>Maven</li>
           <li>SonarQube</li>
           <li>Nexus Repository</li>
           <li>Tomcat Server</li>
           <li>Docker (Basics)</li>
           <li>Kubernetes (Basics)</li>
        </ul>
       <p><b>Cloud (AWS):</b></p>
    <ul>
        <li>EC2</li>

    </ul>

    <p><b>Linux:</b></p>
    <ul>
        <li>Basic Commands</li>
        <li>User & Permission Management</li>
        
    </ul>

    <p><b>Scripting:</b></p>
    <ul>
        <li>Shell Scripting (Basics)</li>
    </ul>

    <p><b>Web Technologies:</b></p>
    <ul>
        <li>HTML</li>
        <li>CSS</li>
        <li>Bootstrap</li>
    </ul>
       
    </div>

    <!-- Contact Info -->
    <div class="info-card">
        <h4>🛠 Projects</h4>
        <h2>1️⃣ CI/CD Pipeline (Fresher Level Project)</h2>
        <p><b>Tools:</b>Git → GitHub → Jenkins → Maven → SonarQube → Nexus → Tomcat</p>
        <ul>
           <li>Built a complete CI/CD pipeline for a sample Java application.</li>
           <li>Performed code build using Maven.</li>
           <li>Sent artifacts to Nexus.</li>
           <li>Deployed automatically to Tomcat server.</li>
        </ul>
        <h2>2️⃣ AWS EC2 Website Hosting</h2>
        <p>
        <ul>
          <li>Launched an EC2 Linux instance.</li>
          <li>Installed Apache/Tomcat and hosted a sample application</li>
        </ul>
        </p>

    </div>

    <!-- Service Links -->
    <div class="info-card">
        <h4>📚 Education</h4>
       
    <hr>

    <p><b>Master of Computer Applications (MCA)</b></p>
    <ul>
        <li>Avanti PG College</li>
        <li>Osmania University</li>
        <li>2022 – 2024</li>
    </ul>

    <p><b>Bachelor of Science – B.Sc (MPCs)</b></p>
    <ul>
        <li>Annie Besant Women's College</li>
        <li>Osmania University</li>
        <li>2019 – 2022</li>
    </ul>
    </div>

</div>
<!-- Contact Section -->
<div class="info-card">
    <h3>📞 Contact Me</h3>
    <hr>

    <p><b>Name:</b> Akhila Vodnala</p>
    <p><b>Email:</b>akhilavodnala29@gmail.com</p>
    <p><b>Phone:</b>+91 6303585954/p>
    <p><b>Location:</b>Hyderabad,Telangana,India</p>
    
    <p><b>LinkedIn:</b> 
        <a href="https://www.linkedin.com/in/your-link" target="_blank">
            Click Here
        </a>
    </p>

    <p><b>GitHub:</b>
        <a href="https://github.com/Akhila-DevOps" target="_blank">
            github.com/akhila6935
        </a>
    </p>
</div>


<!-- Footer Section -->
<footer style="background: #111; color: #fff; text-align: center; padding: 20px; margin-top: 40px;">
    <p>© 2025 Akhila | DevOps & Cloud Engineer</p>
    <p>Designed & Developed by Akhila</p>
</footer>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
