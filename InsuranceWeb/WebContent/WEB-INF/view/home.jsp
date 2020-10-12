<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
	<div>
		<div
			style="width: 1250px; float: left; height: 70px; background: grey; margin: 10px">
			<h1 align="center"><font style="TimesNewRoman" color="white" >New Finance Company </font></h1> 
		</div>
		<div id="main">
			<div
				style="width: 320px; float: left; height: 950px; background: lightblue; margin: 10px">
				<br> <br> <br>
				<p>Insurance is a means of protection from financial loss. It is
					a form of risk management, primarily used to hedge against the risk
					of a contingent or uncertain loss. An entity which provides
					insurance is known as an insurer, insurance company, insurance
					carrier or underwriter</p>

			</div>
			<div
				style="width: 500px; float: left; height: 500px; background: lavender; margin: 10px">
				<center>
					<table align="center" border="0">

						<c:forEach items="${view}" var="i">
							<tr>
								<td colspan="3" align="center"></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><h2>Customer Details</h2></td>
							</tr>
							<tr>
								<th>Serial No</th>
								<td>${i.getSerialno()}</td>
							</tr>
							<tr>
								<th>First Name</th>
								<td>${i.getFirstname()}</td>
							</tr>
							<tr>
								<th>Last Name</th>
								<td>${i.getLastname()}</td>
							</tr>
							<tr>
								<th>User Name</th>
								<td>${i.getUsername()}</td>
							</tr>
							<!-- 						<tr> -->
							<!-- 							<th>Password</th> -->
							<%-- 							<td>${i.getPassword()}</td> --%>
							<!-- 						</tr> -->
							<tr>
								<th>Mobile</th>
								<td>${i.getMobileno()}</td>
							</tr>
							<tr>
								<th>Email</th>
								<td>${i.getEmail()}</td>
							</tr>
							
						</c:forEach>
					</table>
					
				</center>
			</div>

			<div
				style="width: 350px; float: left; height: 950px; background: yellow; margin: 10px">
				<ul>
					<br>
					<li>
						<h3>Try offers on our new Loan Schemes</h3>

						<h4>
							<a href="/InsuranceWeb/loa/loan">click here</a> to know more
						</h4>
					</li>
				</ul>
			</div>
		</div>
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