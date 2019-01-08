<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
	  <title>Profile</title>
	  <meta charset="ISO-8859-1">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	  <script language="Javascript" src="scripts/jquery.js"></script>
    <script type="text/JavaScript" src='scripts/state.js'></script>
    
    <script type="text/javascript">
     var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
} 
    </script>
    <style type="text/css">
	  body, html {
  height: 100%;
}
	  	.bg {
  /* The image used */
  background-image: url("images/bg.jpg");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.flex-fill {
	text-align: center;
}
td {
  padding: 10px;
}
td.header {
  font-weight: bold;
}

/* Full-width input fields */
input[type=email], input[type=password], input[type=text], input[type=number], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
.cancelbtn {
      width: auto;
      padding: 10px 18px;
      background-color: #f44336;
    }

    /* Center the image and position the close button */
    .imgcontainer {
      text-align: center;
      margin: 24px 0 12px 0;
      position: relative;
    }

    img.avatar {
      width: 100px;
      border-radius: 50%;
    }

    .container {
      padding: 16px;
    }

    span.psw {
      float: right;
      padding-top: 16px;
    }

    /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      padding-top: 60px;
    }

    /* Modal Content/Box */
    .modal-content {
      background-color: #fefefe;
      margin: 2% auto 2% auto; /* 2% from the top, 2% from the bottom and centered */
      border: 1px solid #888;
      width: 50%; /* Could be more or less, depending on screen size */

    }

    /* The Close Button (x) */
    .close {
      position: absolute;
      right: 25px;
      top: 0;
      color: #000;
      font-size: 35px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: red;
      cursor: pointer;
    }

    /* Add Zoom Animation */
    .animate {
      -webkit-animation: animatezoom 0.6s;
      animation: animatezoom 0.6s
    }

    @-webkit-keyframes animatezoom {
      from {-webkit-transform: scale(0)} 
      to {-webkit-transform: scale(1)}
    }
    
    @keyframes animatezoom {
      from {transform: scale(0)} 
      to {transform: scale(1)}
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
      span.psw {
       display: block;
       float: none;
     }
     .cancelbtn {
       width: 100%;
     }
   }

 </style>
	</head>
	<body class = "bg">
    <nav class="navbar navbar-expand-sm bg-danger navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">Profile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="requests.html">Requests</a>
    </li>
  </ul>
  <ul class="navbar-nav ml-auto">
  	<li class="nav-item"> ${name} </li>
    <li class="nav-item">
      <a class="nav-link" href="logout">Logout</a>
    </li>
</ul>
</nav>
<div class="card" style="margin: 20px 150px auto 150px;">
  <div class="card-header bg-primary" style="color: white; text-align: center;">Profile</div>
  <div class="card-body">
    <table align="center">
      <tr>
        <td class="header">Name</td><td>${email}</td>
      </tr>
      <tr>
       <td class="header">Contact no.</td><td>123456789</td>
      </tr>
      <tr>
        <td colspan="2" style="text-align: right;"><button type="button" class="btn btn-danger" onclick="document.getElementById('modalProfile').style.display='block'">Edit</button></td>
        </tr>
    </table>
  </div>
</div>
<div id="modalProfile" class="modal">
    
    <form id = "profileForm" class="modal-content animate"  method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('modalProfile').style.display='none'" class="close" title="Close">&times;</span>
        <img src="images/doctor_men.png" alt="Avatar" class="avatar">
      </div>
      <div class="container">
        <label for="email"><b>Email</b></label>
        <input type="email" placeholder="Enter email" name="email" >

        <label for="contact-no"><b>Contact no.</b></label>
        <input type="text" placeholder="Enter contact number" name="contact-no" pattern="^\d{6,12}$" title="6 to 8 length number only allowed" >

        <label for="state"><b>State</b></label>
        <select id="listBox" onchange='selct_district(this.value)'></select>
        <!-- <input type="text" placeholder="Enter your state" name="state" > -->

        <label for="District"><b>District</b></label>
        <select id='secondlist'></select>

        <!-- <input type="text" placeholder="Enter the district" name="district" > -->

        <label for="hospital-name"><b>Hospital name</b></label>
        <input type="text" style="margin-bottom: 20px;" placeholder="Enter hospital name" name="hospital-name" >

        <button type="submit" class="btn btn-success">Save</button>
      
          <button type="button" style="margin-left: 20px;" onclick="document.getElementById('modalProfile').style.display='none';" class="btn btn-danger">Cancel</button>
      </div>
    </form>
  </div>
	</body> 
</html>