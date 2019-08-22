<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital SignUp/SignIn</title>
<!-- Latest compiled and minified CSS -->
<link href="<c:url value="/jsp/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">


<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
/* enable absolute positioning */
.inner-addon {
  position: relative;
}

/* style glyph */
.inner-addon .glyphicon {
  position: absolute;
  padding: 10px;
  pointer-events: none;
  font-size: 25px;
  color:black;
}

/* align glyph */
.left-addon .glyphicon  { left:  5px;}
.right-addon .glyphicon { right: 0px;}

/* add padding  */
.left-addon input  { padding-left:  30px; }
.right-addon input { padding-right: 30px; }



body {
  margin: 10px;
}
.error {
	color: red
}
::placeholder {
	color: black;
}

#rcorners9 {
	text-align: center;
	color: black;
}

#rcorners10 {
	text-align: center;
	color: black;
}

#rcorners4 {
	text-align: center;
	color: black;
}

#rcorners5 {
	text-align: center;
	text-color: black;
}

#rcorners6 {
	text-align: center;
	color: black;
}

body {
	margin: 0;
	color: black;
	background: #c8c8c8;
	font: 600 16px/18px 'Open Sans', sans-serif;
}

*, :after, :before {
	box-sizing: border-box
}

.clearfix:after, .clearfix:before {
	content: '';
	display: table
}

.clearfix:after {
	clear: both;
	display: block
}

a {
	color: inherit;
	text-decoration: none
}

.login-wrap {
	width: 100%;
	margin: auto;
	max-width: 625px;
	min-height: 650px;
	margin-top:150px; 
	margin-bottom:50px;
	position: relative;
	background: url(bg2.jpg) no-repeat center;
	box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .4), 0 17px 50px 0
		rgba(0, 0, 0, .9);
}

.login-html {
	width: 100%;
	height: 100%;
	position: absolute;
	padding: 80px 70px 50px 70px;
	background: rgba(40, 57, 101, .75);
}

.login-html .sign-in-htm, .login-html .sign-up-htm {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	transform: rotateY(120deg);
	backface-visibility: hidden;
	transition: all .4s linear;
}

.login-html .sign-in, .login-html .sign-up, .login-form .group .check {
	display: none;
}

.login-html .tab, .login-form .group .label, .login-form .group .button
	{
	text-transform: uppercase;
}

.login-html .tab {
	font-size: 22px;
	margin-right: 50px;
	padding-bottom: 5px;
	margin: 0 15px 10px 0;
	display: inline-block;
	border-bottom: 2px solid transparent;
}

.login-html .sign-in:checked+.tab, .login-html .sign-up:checked+.tab {
	color: #fff;
	border-color: #1161ee;
}

.login-form {
	min-height: 345px;
	position: relative;
	perspective: 1000px;
	transform-style: preserve-3d;
}

.login-form .group {
	margin-bottom: 15px;
}

.login-form .group .label, .login-form .group .input, .login-form .group .button
	{
	width: 100%;
	color: #fff;
	display: block;
}

.login-form .group .input, .login-form .group .button {
	border: none;
	padding: 15px 20px;
	border-radius: 25px;
	background: rgba(255, 255, 255, .5);
}

.login-form .group input[data-type="password"] {
	text-security: circle;
	-webkit-text-security: circle;
}

.login-form .group .label {
	color: #aaa;
	font-size: 12px;
}

.login-form .group .button {
	background: #1161ee;
}

.login-form .group label .icon {
	width: 15px;
	height: 15px;
	border-radius: 2px;
	position: relative;
	display: inline-block;
	background: rgba(255, 255, 255, .1);
}

.login-form .group label .icon:before, .login-form .group label .icon:after
	{
	content: '';
	width: 10px;
	height: 2px;
	background: #fff;
	position: absolute;
	transition: all .2s ease-in-out 0s;
}

.login-form .group label .icon:before {
	left: 3px;
	width: 5px;
	bottom: 6px;
	transform: scale(0) rotate(0);
}

.login-form .group label .icon:after {
	top: 6px;
	right: 0;
	transform: scale(0) rotate(0);
}

.login-form .group .check:checked+label {
	color: #fff;
}

.login-form .group .check:checked+label .icon {
	background: #1161ee;
}

.login-form .group .check:checked+label .icon:before {
	transform: scale(1) rotate(45deg);
}

.login-form .group .check:checked+label .icon:after {
	transform: scale(1) rotate(-45deg);
}

.login-html .sign-in:checked+.tab+.sign-up+.tab+.login-form .sign-in-htm
	{
	transform: rotate(0);
}

.login-html .sign-up:checked+.tab+.login-form .sign-up-htm {
	transform: rotate(0);
}

.hr {
	height: 2px;
	margin: 30px 0 30px 0;
	background: rgba(255, 255, 255, .9);
}

.foot-lnk {
	text-align: center;
}


input:required:focus {
  border: 1px solid red;
  outline: none;
}


input:required:hover {
  opacity: 1;
}
</style>
</head>
<body
	style="background-image:url('<c:url value="images/bg1.jpg"/>'); display:block; background-size:cover; background-repeat:no-repeat;background-position: center;background-attachment: fixed;">
	<div class="login-wrap">
		<div class="login-html">
		<a href="#tab-2"><i class="glyphicon glyphicon-folder-close"  style="margin-left: -50px; color: white;  font-size: 30px; margin-top: -30px;"></i></a>
			<h1 style="color: white; font-family: Timesnewroman;">
				<center>
					<B> ADMIN LOGIN</B>
				</center>
			</h1>
			<br> <!-- <input id="tab-1" type="radio" name="tab" class="sign-in">
				<label for="tab-1" class="tab"
				style="margin-left: 100px; color: black;">Sign In</label>  -->
				<input id="tab-2" type="radio" name="tab" class="sign-up"checked>
				<label for="tab-2" class="tab" style="margin-left: 10px; color: black;">
				</label>
					
												<!-- SIGN IN -->
				
			<div class="login-form">
			<form action="Hospital2" method="post">
				<div class="sign-in-htm">
					<div class="group">
					<div class="inner-addon left-addon">
					<span class="glyphicon glyphicon-home"></span>
						<input type="text" class="input"
						placeholder="Organization Contact" id="rcorners9" name="cnumber" required minlength="3" maxlength="15">
					</div>
						</div>
					<div class="group">
					<div class="inner-addon left-addon">
					<i class="glyphicon glyphicon-lock"></i>
						<!--  	<label for="pass" class="label">Password</label> -->
						<input type="password" class="input" data-type="password" required
							placeholder="Password" id="rcorners5" name="pw"  minlength="3">
					</div>
						</div>
					
					<div>
						<p style="color:red">${failed}</p>
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign In">
					</div>
					<div class="hr"></div>
					
					<button type="button" class="btn btn-skin" data-toggle="modal"
                                                              data-target="#myModal" style="margin-left:120px; border-radius: 12px; color:black; background-color:rgb(255, 255, 255, .6);">Forgot Password?</button>
							
				</div>
				</form>
				
											<!-- SIGN UP -->
											
				<form:form action="adminlogin"  method="GET"   modelAttribute="admin">
					<div class="sign-up-htm">
						<div class="group">
					<div>
						<p style="color:yellow">${success}</p>
					</div>
						<div class="inner-addon left-addon">
						<i class="glyphicon glyphicon-user"></i>
							 <form:input type="text" class="input" path="adminUserName" required="adminUserName" minlength="3" name="login"
								placeholder="Username" id="rcorners5"  />
								<%-- <form:errors path="hname" cssClass="error" /> --%> 
						</div>
						</div>
							
					
						<div class="group">
							<div class="group">
							<div class="inner-addon left-addon">
							<i class="glyphicon glyphicon-lock"></i>
								<form:input type="text" class="input" path="passwordAdmin" name="login" required="login"
									placeholder="Password" id="rcorners5" />
									<!-- minlength="10" maxlength="10" -->
									<%-- <form:errors path="cnumber" cssClass="error" /> --%>
							</div>
								</div> 


							<%-- <div class="group">
							<div class="inner-addon left-addon">
							<i class="glyphicon glyphicon-envelope"></i>
								<form:input type="email" class="input" path="email" name="email" required="email"
									placeholder="Email" id="rcorners6" />
									<form:errors path="email" cssClass="error" />
							</div>
								</div>
							<div class="group">
							<div class="inner-addon left-addon">
							<i class="glyphicon glyphicon-lock"></i>
								<form:input type="password" class="input"  name="pw" path="pw" required="pw" minlength="3" maxlength="15"
									data-type="password" placeholder="Password" id="rcorners5" />
									<form:errors path="pw" cssClass="error" />
							</div>
								</div> --%>
						
							<div class="group">
								<input type="submit" class="button" value="Log In">
								<p style="color:red">${msg}</p>
							</div>
							<div class="hr"></div>
							<div class="foot-lnk">
								<label for="tab-1" style="color: white;">Already Member?</a>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		
				<div class="modal fade" id="myModal" role="dialog">
                     <div class="modal-dialog">

                        
                           
                                  <div class="modal-body" style=" top: 150px; height:100px; background-color:rgb(255, 255, 255, 1); border-radius:15px;">
                                  <center>
                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                                         <p><br><br>The reset password has been sent to your registered email address.</p>
                                         </center>
                                                                                  

                                  </div>

                           </div>

                     </div>
		
		
		
	</div>
</body>
</html>