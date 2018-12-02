<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>uncle jack's</title>
<style>
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


</style>
<body>
   
<div class="btext">
	<br><br>
	<div class="topnav">
  <img src="pics\s.png" length=55 width=55 align="bottom">&nbsp&nbsp
    <center><font color="#E67E22" size="10%" face="microsoft jhenghei"><b>WELCOME FOODY</b></font></center>
    <hr color="white">
    
<font face="microsoft jhenghei">
  <a href="home.jsp">Home</a>
  <a href="signup.html">SignUp</a>

  <a href="login.html">Login</a>
  <a href="cart.jsp">Cart</a>

  <div class="stm">
       <%
        
            String loc = request.getParameter("loca");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn;
            conn=DriverManager.getConnection("jdbc:mysql://localhost/swiggy?useSSL=false","root","7404282002Aa@");
            //PreparedStatement stat=conn.prepareStatement("insert into location values(?)");
            PreparedStatement stat=null;
            stat=conn.prepareStatement("insert into location values(?)");
//            String sql=;
            //stat.setString(1,loc);
            stat.setString(1,loc);
            int count=stat.executeUpdate();
        
        
        %>

  
  </div>
</font>
</font>
</div>
</div>


<form action="cart1.jsp">
<br><br><div class="m">
<img src="pics\uj\1.PNG">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<img src="pics\uj\2.PNG">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<img src="pics\uj\3.PNG">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<br>
   <div class="mx">Rs.250&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="meal1" value="Chilli Mint Mojito">Add to cart
    <font color="white">..................................................</font>
    Rs.250&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="meal2" value="Butter Scotch">Add to cart
    <font color="white">................................................</font>
    Rs.135&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="meal3" value="Cheese Fries">Add to cart
</div>
</div>
<br><div class="m">
<img src="pics\uj\4.PNG">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<img src="pics\uj\5.PNG">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<img src="pics\uj\6.PNG">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<br>
   <div class="mx">Rs.250&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="meal4" value="Chocolate shake">Add to cart
    <font color="white">..................................................</font>
    Rs.150&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="meal5" value="Kiwi">Add to cart
    <font color="white">................................................</font>
    Rs.335&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="meal6" value="Mushroom and cheese fries">Add to cart
</div>
</div>
<br><div class="m">
<img src="pics\uj\7.PNG">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<img src="pics\uj\8.PNG">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<img src="pics\uj\9.PNG">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<br>
   <div class="mx">Rs.150&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="meal7" value="Pizza veg fries">Add to cart
    <font color="white">..................................................</font>
    Rs.350&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="meal8" value="Strawberry">Add to cart
    <font color="white">................................................</font>
    Rs.135&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="meal9" value="Chocolate mud pot">Add to cart
</div>
</div>
<br>
<br>
<center>
<input type="submit" value="proceed to cart" class="bx">
</center>
</form>








</body>
</html>




