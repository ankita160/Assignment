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
		boolean isAdmin = false;
		if (objEmp != null) {
			emp = (Emp) objEmp;
			session.setAttribute("emp", emp);
			isAdmin = emp.getPermission().equals("admin");
		}
		//System.out.println("session in home : " + emp);

		if (emp == null) {
			session.setAttribute("error", "Please login Before Continue");
			request.getRequestDispatcher("index.jsp").forward(request, response);

		}
		//session.invalidate();

		Object list = request.getSession().getAttribute("empList");
		List<Emp> listEmp = (List<Emp>) list;
		
		Emp updateUser = listEmp.get(Integer.parseInt(request.getParameter("index")));
		System.out.println("updateUser : " + updateUser);
		boolean edit=Boolean.parseBoolean(request.getParameter("edit"));
	%>
	<br>
	<div class="center">
	<form action="${pageContext.request.contextPath}/Update"
		method="post">
		<label for="fname"> ID:</label><br> 
		<input type="number" name="id"
			value="<%=updateUser.getId()%>"  disabled><br>
			<input type="number" name="id"
			value="<%=updateUser.getId()%>" style="display: none"><br>
		<c:if test="<%=isAdmin && edit %>">
			<label for="fname">Name:</label>
			<br>
			<input type="text" name="name" value="<%=updateUser.getName()%>"
				>
			<br>
			<label for="fname">Email:</label>
			<br>
			<input type="text" name="email" value="<%=updateUser.getEmail()%>"
				>
			<br>
			<label for="fname">Password:</label>
			<br>
			<input type="text" name="password"
				value="<%=updateUser.getPassword()%>" >
			<br>
			<label for="fname">Salary:</label>
			<br>
			<input type="text" name="salary" value="<%=updateUser.getSalary()%>"
				>
			<br>

		</c:if>
		
		<c:if test="<%=!isAdmin  || !edit%>">
			<label for="fname">Name:</label>
			<br>
			<input type="text" name="name" value="<%=updateUser.getName()%>"
				disabled="false">
			<br>
			<label for="fname">Email:</label>
			<br>
			<input type="text" name="email" value="<%=updateUser.getEmail()%>"
				disabled="true">
			<br>
			<label for="fname">Password:</label>
			<br>
			<input type="text" name="password"
				value="<%=updateUser.getPassword()%>" disabled="false">
			<br>
			<label for="fname">Salary:</label>
			<br>
			<input type="text" name="salary" value="<%=updateUser.getSalary()%>"
				disabled="true">
			<br>

		</c:if>

		<c:if test="<%=isAdmin  && edit%>">
			<br> <button type="submit" value="Update Details">UPDATE</button>
		</c:if>
				<input type="text" value="false" name="current_user" style="display: none"  />
		</div>
	</form>

</body>
</html>