<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<h1 align="center">Welcome to Login Page</h1>
	<%
		Object message=session.getAttribute("message");
		if(message!=null){
			out.println("<font color='green' size='5' >"+message+"</font>");
		}
		Object error=session.getAttribute("error");
		if(error!=null){
			out.println("<font color='red' size='5' >"+error+"</font>");
		}
		session.invalidate();
	%>
<!-- "/EmpManagement/src/com/org/Login" -->
	<form action="${pageContext.request.contextPath}/Login" method="post" >
 
   	
        <div class="container">
        <div class="center">
            <H3><label>Username</label>
            <input type="text" placeholder="Enter Username" name="email" required></H3>
  
            <h3><label>Password</label>
            <input type="password" placeholder="Enter Password" name="password" required></h3>
  			
            <button type="submit">Login</button>
		</div>
		</div>
	</form>
	  <div class="center">
	<form action="${pageContext.request.contextPath}/register.jsp">
		<button type="submit" >REGISTER</button>
		</div>		
	</form>
	

</body>
</html>

