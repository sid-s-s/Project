<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Finance Company</title>
</head>
<body>
	<form:form action="index" method="post" commandName="index">
		<div
			style="width: 1250px; float: left; height: 70px; background: grey; margin: 10px">
			<h1 align="center">
				<font style="" color="white">New Finance Company </font>
			</h1>
		</div>
		<div style="width: 600px; float: left; height: 950px; background: skyblue; margin: 10px">
		<center>
			<h3>Admin</h3>
			<h3>
				Register<a href="/InsuranceWeb/admin/adminreg">click here</a>
			</h3>
			<h3>
				Login <a href="/InsuranceWeb/admin/adminLogin">click here</a>
			</h3></center>
		</div>
		<div style="width: 600px; float: left; height: 950px; background: skyblue; margin: 10px">
		<center>
			<h3>Customer</h3>
			<h3>
				Register<a href="/InsuranceWeb/ins/register">click here</a>
			</h3>
			<h3>
				Login<a href="/InsuranceWeb/ins/login">click here</a>
			</h3></center>
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
	</form:form>
</body>
</html>