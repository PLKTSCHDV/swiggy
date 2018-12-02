<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Checkout</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
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
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 5%;
    border-radius: 8%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}

.m {
    margin-top: 0px;
    margin-bottom: 0px;
    margin-right: 0px;
    margin-left: 1200px;
    }
    .mx {
    margin-top: 0px;
    margin-bottom: 0px;
    margin-right: 50px;
    margin-left: 200px;
    }

    .topnav {
    overflow: hidden;
 

}

/* Style the links inside the navigation bar */
.topnav a {
    float: left;
    display: block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
    background-color: ORANGE;
    color: black;
}

/* Style the "active" element to highlight the current page */
.topnav a.active {
    background-color: #2196F3;
    color: white;
}

/* Style the search box inside the navigation bar */
.topnav input[type=text] {
    float: right;
    padding: 6px;
    border: none;
    margin-top: 8px;
    margin-right: 16px;
    font-size: 17px;
}

/* When the screen is less than 600px wide, stack the links and the search field vertically instead of horizontally */
@media screen and (max-width: 600px) {
    .topnav a, .topnav input[type=text] {
        float: none;
        display: block;
        text-align: left;
        width: 100%;
        margin: 0;
        padding: 14px;
    }
    .topnav input[type=text] {
        border: 1px solid #ccc;
    }
}
.b {
	background-color:#212F3D;
}
.d
{
	margin-top: 0px;
    margin-bottom: 0px;
    margin-right: 0px;
    margin-left: 285px;
    
}
.stm
{
    margin-top: 25px;ma
 margin-bottom: : 0px;
 margin-left: 1300px;
       
}
    .bx {
    background-color: orange;
    border: none;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.m
{
    margin-left: 230px;
}
.mx
{
    margin-left: 70px;
}
.bx {
    background-color: orange;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

</style>
<body>
   <%
   String a=(String)session.getAttribute("uname");
   if(a==null)
   {
   
   %>
<div class="btext">
	<br><br>
	<div class="topnav">
  <img src="pics\s.png" length=55 width=55 align="bottom">&nbsp&nbsp
    <center><font color="#E67E22" size="10%" face="microsoft jhenghei"><b>Secure Checkout</b></font></center>
   
<font face="microsoft jhenghei">
  <a href="home.jsp">Home</a>
  <a href="signup.html">SignUp</a>

  <a href="login.html">Login</a>
  <a href="cart.jsp">Cart</a>
</div>
</div>
 <br><br><br>
 <h3>
   <font color="orangne"><center> Enter your login credentials to proceed Checkout or <A href="signup.html">signup</A> if you are new<br></font>
    <form action="final.jsp">
  <div class="imgcontainer">
    <img src="pics\s.png" alt="Avatar" class="avatar" height="5%" width="5%">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
<%
}
else
{
response.sendRedirect("final.jsp");
}

%>

    </center>
    </font>

</body>
</html>