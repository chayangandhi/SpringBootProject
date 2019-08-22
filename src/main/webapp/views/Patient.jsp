<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>USER SignIn/SignUp</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.error {
	color: red
}

.inner-addon {
	position: relative
}
/* style glyph */
.inner-addon .glyphicon {
	position: absolute;
	padding: 10px;
	pointer-events: none;
	font-size: 25px;
	color: black;
}

/* align glyph */
.left-addon .glyphicon {
	left: 5px;
}

.right-addon .glyphicon {
	right: 0px;
}

/* add padding  */
.left-addon input {
	padding-left: 30px;
}

.right-addon input {
	padding-right: 30px;
}

body {
	margin: 10px;
}

#rcorners9 {
	text-align: center;
}

::placeholder {
	color: black;
}

#rcorners10 {
	text-align: center;
}

#rcorners4 {
	text-align: center;
	color: black;
}

#rcorners5 {
	text-align: center;
}

#rcorners6 {
	text-align: center;
}

body {
	margin: 0;
	color: #6a6f8c;
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
	max-width: 525px;
	min-height: 720px;
	margin-top:30px; 
	
	position: relative;
	box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0
		rgba(0, 0, 0, .19);
}

.login-html {
	width: 100%;
	height: 100%;
	position: absolute;
	padding: 15px 70px 50px 70px;
	background: rgba(40, 57, 101, .75);
}

.login-html .sign-in-htm, .login-html .sign-up-htm {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	transform: rotateY(90deg);
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
	color: black;
	background-color: transparent;
	display: block;
}

select {
	width: 400px;
	text-align-last: center;
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
	margin: 60px 0 50px 0;
	background: rgba(255, 255, 255, .2);
}

.foot-lnk {
	text-align: center;
}

option {
	background-color: transparent;
}

option:hover {
	color: red;
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
	style="background-image:url('<c:url value="images/bg4.jpg"/>'); display:block; background-size:cover; background-repeat:no-repeat;background-position: center;background-attachment: fixed;">

	<div class="login-wrap">
		<div class="login-html">
			<a href="HomePage1.jsp"><i class="glyphicon glyphicon-home"
				style="margin-left: -50px; color: white; font-size: 30px;"></i></a>
			<h1 style="color: white; font-family: Timesnewroman;">
				<center>
					<B>USER</B>
				</center>
			</h1>
			<br> <input id="tab-1" type="radio" name="tab" class="sign-in" checked>
			<label for="tab-1" class="tab"
				style="margin-left: 100px; color: black;">Sign In</label> <input
				id="tab-2" type="radio" name="tab" class="sign-up" >
			<label for="tab-2" class="tab"
				style="margin-left: 10px; color: black;">Register</label>
			<!-- <button class="btn btn-primary">Home</button> -->

			<!-- SIGN in FORM -->

			<div class="login-form">
				<form:form action="userlogin"  method="GET" modelAttribute="user" >
					<div class="sign-in-htm">
						<div class="group">
							<div class="inner-addon left-addon">

								<i class="glyphicon glyphicon-user"></i> 
								<form:input type="text" path="userName"
									 class="input" placeholder="Username"
									name="username" id="rcorners4"></form:input>
							</div>
						</div>
						<div class="group">
							<div class="inner-addon left-addon">

								<i class="glyphicon glyphicon-lock"></i> 
								<form:input type="password" path="password"
									 class="input" data-type="password" 
									placeholder="Password" id="rcorners5"></form:input>
							</div>
						</div>
					<!-- 	<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span> Keep me
								Signed in</label>
						</div> -->
						
						<div class="group">
							<input type="submit" class="button" value="login">
							<p style="color: red">${confirmed}</p>
						</div>
						
						<div class="hr"></div>
						<!-- <button type="button" class="btn btn-skin" data-toggle="modal"
                          data-target="#myModal" style="margin-left:120px; border-radius: 12px; color:black; background-color:rgb(255, 255, 255, .6);">Forgot Password?</button> -->
                         
                         <div class="foot-lnk">
                         <label for="tab-2" style="color: white; text-align: center;">Dont have an Account? Register Here.</a>
							 </div>
							
                          
					</div>
					
					
				</form:form>
				
				
				

				<!-- SIGN UP FORM -->
				

				<form:form action="saveUser"  method="POST"  modelAttribute="user">
					<div class="sign-up-htm">
						<div class="group">
							<%-- <div>
								<p style="color: yellow">${success}</p>
							</div> --%>
							<div class="inner-addon left-addon">
								<i class="glyphicon glyphicon-user"></i>
								<form:input type="text" class="input" path="userName" name="userName"
									placeholder="Username" id="rcorners9"/>
									  <%-- required="fname" minlength="3"
								<form:errors path="fname" cssClass="error" /> --%>
							</div>
						</div>
						<div class="group">
							<div class="inner-addon left-addon">
								<i class="glyphicon glyphicon-user"></i>

								<form:input type="text" class="input" name="password" path="password"
									required="password" placeholder="Password" id="rcorners9"
									 />
								<%-- minlength="3"
								<form:errors path="lname" cssClass="error" /> --%>
							</div>
						</div>
						<div class="group">
							<div class="inner-addon left-addon">
								<i class="glyphicon glyphicon-calendar"></i>

								<form:input type="email" class="input" placeholder="Email"
									name="email" path="email" id="rcorners10"/>
									 <%-- min="1" max="99" 
								<form:errors path="age" cssClass="error" /> --%>



							</div>
						</div>


						<%-- <form>
							<div class="group">
								<div class="inner-addon left-addon">
									<i class="fi-male-female"></i> <select class="input" id="sel1"
										name="gender" placeholder="Gender" required>
										<!-- <option>Gender</option> -->
										<option>Male</option>
										<option>Female</option>
										<option>Transgender</option>
									</select>
								</div>
							</div>
						</form> --%>



						<div class="group">
							<div class="inner-addon left-addon">
								<i class="glyphicon glyphicon-earphone"></i>

								<form:input type="text" class="input" name="phoneNumber" path="phoneNumber"
									required="phoneNumber" placeholder="Contact No." id="rcorners9"/>
									<%-- minlength="9" maxlength="10" 
								<form:errors path="cnum" cssClass="error" /> --%>
							</div>
						</div>

						<%-- <div class="group">

							<div class="inner-addon left-addon">
								<i class="glyphicon glyphicon-envelope"></i>
								<form:input type="email" class="input" name="email" path="email"
									placeholder="Email Address" id="rcorners6" maxlength="50" />
								<form:errors path="email" cssClass="error" />
							</div>
						</div>
						<div class="group">
							<div class="inner-addon left-addon">
								<i class="glyphicon glyphicon-lock"></i>

								<form:input type="password" class="input" name="pw" path="pw"
									data-type="password" placeholder="Password" id="rcorners5"
									minlength="3" maxlength="15" />
								<form:errors path="pw" cssClass="error" />
							</div>
						</div> --%>
						<div class="group">
							<input type="submit" class="button" onclick="myFunction()" value="Register">
							<span></span><br>
							<p style="color: red">${message}</p>
						</div>

						<div class="foot-lnk">
							<label for="tab-1" style="color: white;">Already Member?</a>
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