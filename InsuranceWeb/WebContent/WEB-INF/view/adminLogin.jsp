<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div>
		<div
			style="width: 1230px; float: left; height: 70px; background: grey; margin: 10px">
			<h1 align="center">New Finance Company</h1>
		</div>
		<div
			style="width: 340px; float: left; height: 950px; background: lightblue; margin: 10px">
			<ul>
				<h3>Offers Alert!!</h3>
				<li>Get 6 month No COST EMI <br> for all your new gadgets<br>
					shop now using our credit cards
				</li>
				<br>
				<br>
				<li>Use CODE123 to get 3% off on <br> loan EMI for 2
					months
				</li>
				<br>
				<li>Login now to get more details</li>
			</ul>
		</div>
		<div
			style="width: 500px; float: left; height: 950px; background: lightblue; margin: 10px">
			<form:form  commandName="adminLogin"
				action="loginProcess" method="post">
				<table align="center" border="0">
					<br>
					<br>
					<br>
					<tr>
						<h2 align="center">Enter your credentials Admin</h2>
					</tr>
					<tr>
						<td><form:label path="username">Username: </form:label></td>
						<td><form:input path="username" name="username" id="username" />
						</td>
					</tr>
					<tr>
						<td><form:label path="password">Password:</form:label></td>
						<td><form:password path="password" name="password"
								id="password" /></td>
					</tr>
					<tr>
						<td></td>
						<td align="left"><form:button id="login" name="login">Login</form:button>
						</td>
					</tr>
					<tr></tr>
					<tr>
						<td></td>
						<td><a href="adminreg">Register</a></td>
					</tr>
				</table>

			</form:form>
		</div>
		<table align="center">
			<tr>
				<td style="font-style: italic; color: red;">${err}</td>
			</tr>
		</table>
	</div>

	<div
		style="width: 350px; float: left; height: 950px; background: lightblue; margin: 10px"></div>

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
		<div
			style="width: 350px; float: left; height: 70px; background: grey; margin: 10px">
			<font color="white">
				<h3>HQ</h3>
				<ul>
					<li>New Finance Company San Fransisco - US</li>
				</ul>
			</font>
		</div>
	</div>
</body>
</html>