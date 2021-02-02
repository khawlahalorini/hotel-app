<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <jsp:include page="../shared/_layout.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
	background-color: #474e5d;
    background-position: center; 
	background-repeat: no-repeat; 
	background-size: cover;  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 450px;
}


.button:hover {
  background-color: #555;
}

 .image{
   width:100px;
   height:200px;
} 

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<div class="about-section">
<img src="http://adel-kalu.com/index/images/logo.png" width="60" height="50"/>
  <h1>About Us</h1>
  <p>We are students of Misk Academy and General Assembly.</p>
  <p>This is our project for Java-Spring boot I hope you like it.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">

  <div class="column">
    <div class="card">
      <img class="image" src="../images/think.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Adel Kalu</h2>
        <p class="title">Software Engineer</p>
        <p>The more you learn, the more you earn.</p>
        <p>adel.b.kalu@gmail.com</p>
       <p><a href="http://adel-kalu.com/"><button class="button">Contact</button></a></p>       
      </div>
    </div>
  </div>

   <div class="column">
    <div class="card">
      <img class="image" src="../images/think.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Aeshah Alshammari</h2>
        <p class="title">Software Engineer</p>
        <p>The more you learn, the more you earn.</p>
        <p>aisha379aisha@gmail.com</p>
       <p><a href="https://www.linkedin.com/in/aeshah-alshammari-35ba12201"><button class="button">Contact</button></a></p> 
      </div>
    </div>
  </div>
  
   <div class="column">
    <div class="card">
      <img class="image" src="../images/think.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Khawlah Alorini</h2>
        <p class="title">Software Engineer</p>
        <p>The more you learn, the more you earn.</p>
        <p>khawlahoraini@gmail.com</p>
       <p><a href="https://www.linkedin.com/in/khawlahsaleh"><button class="button">Contact</button></a></p>
      </div>
    </div>
  </div>

   <div class="column">
    <div class="card">
      <img class="image" src="../images/think.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Bushra Al-Ghamdi</h2>
        <p class="title">Software Engineer</p>
        <p>The more you learn, the more you earn.</p>
        <p>Bushra.gh96@gmail.com</p>
       <p><a href=""><button class="button">Contact</button></a></p>
      </div>
    </div>
  </div>
  
</div>
</body>
</html>
