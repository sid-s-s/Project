<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Loan</title>
</head>
<body>
<div style="width: 1230px; float: left; height: 950px; background: lavender; margin: 10px">
		<div style="width: 1210px; float: left; height: 70px; background: #FFB760; margin: 10px">
			<h1 align="center">Loans</h1>
		</div>
	
		<div style="width: 170px; float: left; height: 950px; background: #FFB760; margin: 10px">
		<ul>
			<li><a href="personalloan">Personal loan</a> <br><br></li>

			<li><a href="educational">Education loan</a> <br><br></li>
			<li><a href="homeloan">Home loan</a> <br><br></li>
			<li><a href="automobile">Auto-Mobile loan</a><br><br></li>
		</ul>
		</div>
		<div style="width: 1000px; float: right; height: 940px; background: #F1ABD9; margin: 10px">
			<form:form action="homeloan" method="post" commandName="homeloan">
			<h1 align="center">Home Loan</h1>
				<table align="center">
					<tr>
						<td>Serial Number</td>
						<td><input type="text" name="serialno" /></td>
					</tr>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="username" /></td>
					</tr>
					<tr>
						<td>Nominee Name</td>
						<td><input type="text" name="nominee" /></td>
					</tr>
					<tr>
						<td>PAN number</td>
						<td><input type="text" name="pan" /></td>
					</tr>
					<tr>
						<td>Property Location</td>
						<td><input type="text" name="propertylocation" /></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><textarea name="address" id = "address" rows = "3" cols = "15">
                 		 </textarea></td>
					</tr>
					<tr>
						<td>Amount</td>
						<td><input type="text" name="amount" /></td>
					</tr>

					<tr>
						<td>Submit application</td>
						<td><input type="submit" value="submit" /></td>
					</tr>
				</table>
			</form:form>
		</div>
</div>

</body>
</html>