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
<h1 align="center">Welcome to Registration Page</h1>
<div class="center">
<form action="${pageContext.request.contextPath}/Register" method="post">
  <label for="fname"> ID:</label><br>
  <input type="text" name="id"><br>
  
  <label for="fname">Name:</label><br>
  <input type="text"  name="name"><br>
  
  <label for="fname">Email:</label><br>
  <input type="text"  name="email"><br>
  
  <label for="fname">Password:</label><br>
  <input type="text"  name="password"><br>
  
  <label for="fname">Salary:</label><br>
  <input type="text" name="salary"><br>
  </div>
  <br>
  <div class="center">
  <button type="submit" value="Submit">SUBMIT</button>
  </div>
</form> 
</body>
</html>