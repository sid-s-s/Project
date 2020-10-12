<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view</title>
</head>
<body>
	<div
		style="width: 1250px; float: left; height: 70px; background: grey; margin: 10px">
		<h1 align="center">
			<font style="" color="white">New Finance Company </font><br>
		</h1>
	</div>

	<div align="center"
		style="width: 1250px; height: 500px; background: lavender; margin: 10px">
		<br>
		<h1 align="center">All Insurers</h1>
		<table border="1">
			<tr>
				<td colspan="2" align="center"><h2>List Of Customers</h2></td>
			</tr>
			<tr>
				<th>Serial No</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>User Name</th>
				<th>Password</th>
				<th>Mobile</th>
				<th>Email</th>
				<th>Delete</th>
				<th>Update</th>

			</tr>
			<c:forEach items="${view}" var="i">
				<tr>
					<td>${i.getSerialno()}</td>
					<td>${i.getFirstname()}</td>
					<td>${i.getLastname()}</td>
					<td>${i.getUsername()}</td>
					<td>${i.getPassword()}</td>
					<td>${i.getMobileno()}</td>
					<td>${i.getEmail()}</td>
					<%-- 				<td>${b.getId()}</td><td>${b.getName()}</td><td>${b.getPrice()}</td> --%>
					<td><a href="delete/${i.getSerialno()}">delete</a></td>
					<td><a
						href="/InsuranceWeb/admin/updateReg/${i.getSerialno()}/${i.getFirstname()}/${i.getLastname()}/${i.getUsername()}/${i.getPassword()}/${i.getMobileno()}/${i.getEmail()}">update</a></td>
				</tr>
			</c:forEach>
		</table>
		<a href="page">Add User</a>

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