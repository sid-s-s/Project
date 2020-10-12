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
			<li><a href="personalloan">Personal loan</a> <br>
			<br></li>

			<li><a href="educational">Education loan</a> <br>
			<br></li>
			<li><a href="homeloan">Home loan</a> <br>
			<br></li>
			<li><a href="automobile">Auto-Mobile loan</a><br><br></li>
		</ul>
		</div>
		<div style="width: 1000px; float: right; height: 940px; background: #F1ABD9; margin: 10px">
			<form:form action="educationalloan" method="post" commandName="education">
			<h1 align="center">Educational Loan</h1>
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
						<td>Student Name</td>
						<td><input type="text" name="nominee" /></td>
					</tr>
					<tr>
						<td>College Name</td>
						<td><input type="text" name="collegename" /></td>
					</tr>
					<tr>
						<td>College address </td>
						<td><textarea name="coladdress" id = "coladdress" rows = "3" cols = "15">
                 		 </textarea></td>
					</tr>
					<tr>
						<td>Course</td>
						<td><input type="radio" name="course" value="UG"/>UG</td>
						<td><input type="radio" name="course" value="PG"/>PG</td>
						<td><input type="radio" name="course" value="Phd"/>Phd</td>
					</tr>
					<tr>
						<td>Course Duration</td>
						<td><select name="duration">
								<option value="2">2 years</option>
								<option value="3" selected>3 years</option>
								<option value="4">4 years</option>
						</select></td>
					</tr>
					<tr>
						<td>PAN number</td>
						<td><input type="text" name="pan" /></td>
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