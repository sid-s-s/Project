<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<div
			style="width: 1250px; float: left; height: 90px; background: grey; margin: 10px">
			<h1 align="center"><font style="TimesNewRoman" color="white" >New Finance Company </font></h1> 
		</div>
	<div
		style="width: 1230px; float: left; height: 70px; background: lavender; margin: 10px">
		<h2 align="center">Admin Registration</h2>
	</div>
	<div align="center"
		style="width: 350px; float: left; height: 950px; background: lightblue; margin: 10px">
		<ul><h3>Offers Alert!!</h3>
		<li>Get 6 month No COST EMI <br>
			 for all your new gadgets<br>
			 shop now using our credit cards</li>
			 <br><br>
		<li>Use CODE123 to get 3% off on <br>
			loan EMI for 2 months</li>
		</ul>
	</div>
	<div
		style="width: 490px; float: left; height: 950px; background: lightblue; margin: 10px">

		<form:form action="insert" method="post" commandName="adminreg">
			<center>
				<table align="center">
					<tr>
						<td colspan="3" align="center"></td>
					</tr>
					<tr>
						<td><h2 align="center">Enter Your Details</h2></td>
					</tr>
					<tr>
						<td>Serial no</td>
						<td><form:input path="serialno" /> <form:errors
								path="serialno" cssStyle="color:red" /></td>
					</tr>
					<tr>
						<td>First Name</td>
						<td><form:input path="firstname" /> <form:errors
								path="firstname" cssStyle="color:red" /></td>
					</tr>
					<tr>
						<td>Last Name</td>
						<td><form:input path="lastname" /> <form:errors
								path="lastname" cssStyle="color:red" /></td>
					</tr>
					<tr>
						<td>User Name</td>
						<td><form:input path="username" /> <form:errors
								path="username" cssStyle="color:red" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><form:input path="password" /> <form:errors
								path="password" cssStyle="color:red" /></td>
					</tr>
					<tr>
						<td>Mobile Number</td>
						<td><form:input path="mobileno" /></td>
					</tr>
					<tr>
						<td>E-mail</td>
						<td><form:input path="email" /> <form:errors path="email"
								cssStyle="color:red" /></td>
					</tr>
					<!-- 				<tr> -->
					<!-- 					<td>D.O.B (dd-MMM-yyyy)</td> -->
					<%-- 					<td><form:input path="dob" /> <form:errors path="dob" --%>
					<%-- 							cssStyle="color:red" /></td> --%>
					<!-- 				</tr> -->

					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Submit" /></td>
					</tr>

				</table>
			</center>
		</form:form>
		<form:errors />
		<h4 align="center"> Already Registered? <a href="adminLogin">Login </a> here</h4>
	</div>
	<div
		style="width: 350px; float: left; height: 950px; background: lightblue; margin: 10px">
			<ul>
			<li>
			<p >
				Need Assistance? <br>
				You can call our agency for a quick door step assistance 
				
				<br>Dial 1800-111-080 <br>(toll-free)
			</p></li>
			
</ul>
	</div>
	<div
		style="width: 1230px; float: left; height: 100px; background: grey; margin: 10px">
		<div
			style="width: 350px; float: left; height: 70px; background: grey; margin: 10px">
			<font color="white"><ul>
					<h3>Contact us</h3>
					<li>080-9811224</li>
				</ul> </font>
		</div>
	
		<div
			style="width: 350px; float: left; height: 70px; background: grey; margin: 10px">
			<font color="white"><ul>
					<h3>Write us</h3>
					<li>newfinancecompany@outlook.com</li>
				</ul> </font>
		</div>
		<div style="width: 350px; float: left; height: 70px; background: grey; margin: 10px">
			<font color="white">
					<h3>HQ</h3><ul>
					<li>New Finance Company
					San Fransisco - US 
					</li>
				</ul> </font>
		</div>
	</div>
</body>
</html>