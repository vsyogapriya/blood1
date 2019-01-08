<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

  <title>Blood</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/JavaScript" src='<c:url value='/resources/state.js'/>'></script>
    
  <script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

function checkBothPsw() {
  var psw = document.getElementById("signupForm").elements.namedItem("psw").value;
  var psw_re = document.getElementById("signupForm").elements.namedItem("psw-repeat").value;
  if (!(psw === psw_re)) {
    alert("Password and retyped password not matching");
  }
  return psw === psw_re;
}
</script>

<style type="text/css">
@charset "ISO-8859-1";

body, html {
	height: 100%;
}

.bg {
	/* The image used */
	background-image: url('bg.jpg');
	/* Full height */
	height: 100%;
	/* Center and scale the image nicely */
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

/* Full-width input fields */
input[type=email], input[type=password], input[type=text], input[type=number],
	select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

/*button:hover {
    opacity: 0.8;
    }*/

/* Extra styles for the cancel button */
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
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 2% auto 2% auto;
	/* 2% from the top, 2% from the bottom and centered */
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

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

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
<body style="background-image: url('bg.jpg');">

  <div class="h-100 w-100 row align-items-center mx-0">
    <div class="col" align="center">
      <div style="background:rgb(255, 255, 255, .5); width: 500px; padding: 50px;">
        <button type="button" class="btn btn-danger btn-lg" onclick="document.getElementById('modalLoginForm').style.display='block'" style="width: 300px;">Login</button>
        <br>
        <br>
        <button type="button" class="btn btn-primary btn-lg" onclick="document.getElementById('modalSignUpForm').style.display='block'" style="width: 300px;">Signup</button>
      </div>
    </div> 
  </div>
  <!-- Login modal -->
  <div id="modalLoginForm" class="modal">

    <form class="modal-content animate" action="login" method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('modalLoginForm').style.display='none'" class="close" title="Close">&times;</span>
        <img src="<c:url value='/resources/images/doctor.png'/>" alt="Avatar" class="avatar">
      </div>

      <div class="container">
        <label for="email"><b>Email</b></label>
        <input type="email" placeholder="Enter email" name="email" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>
        
        <button type="submit">Login</button>
        <label>
          <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
      </div>

      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('modalLoginForm').style.display='none'" class="cancelbtn">Cancel</button>
        <span class="psw"><a href="#">Forgot password?</a></span>
      </div>
    </form>
  </div>

  <!-- Signup modal -->
  <div id="modalSignUpForm" class="modal">
    
    <form id = "signupForm" class="modal-content animate"  method="post" action="signup">
      <div class="imgcontainer">
        <span onclick="document.getElementById('modalSignUpForm').style.display='none'" class="close" title="Close">&times;</span>
        <img src="<c:url value='/resources/images/doctor_men.png'/>" alt="Avatar" class="avatar">
      </div>

      <div class="container">
        <label for="email"><b>Email</b></label>
        <input type="email" placeholder="Enter email" name="email" value="aki@gmail.com">

        <label for="contact-no"><b>Contact no.</b></label>
        <input type="text" placeholder="Enter contact number" name="contactNo" value="1234567890" pattern="^\d{6,12}$" title="6 to 8 length number only allowed" >

        <label for="state"><b>State</b></label>
        <select id="listBox" onchange='selct_district(this.value)' name="state"></select>
        <!-- <input type="text" placeholder="Enter your state" name="state" > -->

        <label for="District"><b>District</b></label>
        <select id='secondlist' name="district"></select>

        <!-- <input type="text" placeholder="Enter the district" name="district" > -->

        <label for="hospital-name"><b>Hospital name</b></label>
        <input type="text" placeholder="Enter hospital name" name="name" value="Ganga">

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter password" value="123456" name="password" pattern=".{6,}" title="Password must be equal or more than 6 characters" >
        
        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" placeholder="Repeat password" value="123456" name="psw-repeat" pattern=".{6,}" title="Password must be equal or more than 6 characters" >

        <button type="submit" onclick="return checkBothPsw();">Signup</button>
        <label>
          <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
        <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
      </div>


      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('modalSignUpForm').style.display='none';" class="cancelbtn">Cancel</button>
      </div>
    </form>
  </div>


</body>
</html>
