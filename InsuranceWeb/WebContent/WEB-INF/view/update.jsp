<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insurance update</title>
</head>
<body>
	<div
		style="width: 1250px; float: left; height: 70px; background: grey; margin: 10px">
		<h1 align="center">
			<font style="" color="white">New Finance Company </font>
		</h1>
	</div>
	<div align="center"
		style="height: 500px; background: lavender; margin: 10px">

		<form:form action="/updateReg" method="post" commandName="adminreg">
			<table border="1">
				<tr>
					<td colspan="2" align="center"><h2>Insurance</h2></td>
				</tr>
				<tr>
					<td>Serial Number</td>
					<td><form:input path="serialno"
							value="${regForm.getSerialno()}" /></td>
				</tr>
				<tr>
					<td>First Name</td>
					<td><form:input path="firstname"
							value="${regForm.getFirstname()}" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><form:input path="lastname"
							value="${regForm.getLastname()}" /></td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><form:input path="username"
							value="${regForm.getUsername()}" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><form:input path="password"
							value="${regForm.getPassword()}" /></td>
				</tr>
				<tr>
					<td>Mobile Number</td>
					<td><form:input path="mobileno"
							value="${regForm.getMobileno()}" /></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><form:input path="email" value="${regForm.getEmail()}" />
					</td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Submit" /></td>
				</tr>


			</table>
		</form:form>
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