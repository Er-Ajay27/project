<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="bean.Employee,model.Dboperations,com.servlet.EmployeeList,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>BigBull</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
</head>
<body>
	<%
		Dboperations db = new Dboperations();

		ArrayList<Employee> alp = db.getEmployeeList();
	%>
	<div class="main">

		<section class="signup">
			<!-- <img src="images/signup-bg.jpg" alt=""> -->
			<div class="cont">
				<div class="list-content">

					<table class="table table-responsive table-hover table-bordered">
						<tr style="background-color:hsla(9, 100%, 64%, 0.5)">
							<th>ID</th>
							<th>Name</th>
							<th>Address</th>
							<th>Contact</th>
							<th>Department</th>
							<th>Salary</th>
							<th>E-mail</th>
							<th>User Name</th>
							<th>Password</th>
						</tr>
						<%
							for (Employee e : alp) {
						%>
						<tr>
							<td><%=e.getId()%></td>
							<td><%=e.getName()%></td>
							<td><%=e.getAddress()%></td>
							<td><%=e.getContact()%></td>
							<td><%=e.getDepartment()%></td>
							<td><%=e.getSalary()%></td>
							<td><%=e.getE_mail()%></td>
							<td><%=e.getUsername()%></td>
							<td><%=e.getPassword()%></td>
							<td><a href="./Delete?emp_id=<%=e.getId()%>"
								class="btn btn-outline-danger">Delete</a>&nbsp;&nbsp;&nbsp;</td>
							<td><a href="update.jsp?emp_id=<%=e.getId()%>"
								class="btn btn-outline-warning">Edit</a></td>
						</tr>
						<%
							}
						%>
					</table>
					<div class="text-center">
						<a href="index.html" class="btn btn-info btn-lg active"
							role="button" aria-pressed="false">Home page</a>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>
