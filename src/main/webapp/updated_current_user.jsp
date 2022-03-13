<%@page import="com.org.beans.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

body {
  background-image: url("https://wallpaperaccess.com/full/4321984.jpg");
  background-repeat: no-repeat;
  background-size: 1700px 900px;
}
  .center {
  text-align: center;

}
    form {border: 1px solid #f1f1f1;}
    
    input[type=text],
    input[type=password] {
        width: 50%;
        padding: 12px 20px;
        margin: 5px 0;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }
      
    button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        text-align: center;
        width: 25%;
    }
      
     button:hover {
        opacity: 0.8;
    }

    
   
</style>
<body>
	<h2 align="center">Welcome to Update Profile Page</h2>
	<%
		Object objEmp = session.getAttribute("emp");
		Emp emp = null;

		if (objEmp != null) {
			emp = (Emp) objEmp;
		}

		if (emp == null) {
			session.setAttribute("error", "Please login Before Continue");
			request.getRequestDispatcher("index.jsp").forward(request, response);

		}
	%>
	<br>
	<div class="center">
	<form action="${pageContext.request.contextPath}/Update?current_user=true" method="post">
		<label for="fname"> ID:</label><br> <input type="number"
			name="id" value="<%=emp.getId()%>" disabled><br> <input
			type="number" name="id" value="<%=emp.getId()%>"
			style="display: none"><br> <label for="fname">Name:</label>
		<br> <input type="text" name="name"
			value="<%=emp.getName()%>"> <br> <label
			for="fname">Email:</label> <br> <input type="text" name="email"
			value="<%=emp.getEmail()%>"> <br> <label
			for="fname">Password:</label> <br> <input type="text"
			name="password" value="<%=emp.getPassword()%>"> <br>
		<label for="fname">Salary:</label> <br> <input type="text"
			name="salary" value="<%=emp.getSalary()%>"> <br>

		<input type="text" value="true" name="current_user" style="display: none"  />
		<br> <button type="submit" value="Update Details">UPDATE</button>

	</div>
	</form>

</body>
</html>