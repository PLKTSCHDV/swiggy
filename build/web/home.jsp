<%-- 
    Document   : main
    Created on : 23 Nov, 2018, 8:13:37 AM
    Author     : dell
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MAIN</title>
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

</style>
<body>
   
<div class="btext">
	<br><br>
	<div class="topnav">
  <img src="pics\s.png" length=55 width=55 align="bottom">&nbsp&nbsp
    <center><font color="#E67E22" size="10%" face="microsoft jhenghei"><b>SWIGGY CLONE</b></font></center>
    <hr color="white">
    
<font face="microsoft jhenghei">
  <a href="about.html">About</a>
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
            PreparedStatement stat1=null;
            
            stat=conn.prepareStatement("insert into location values(?)");
            //stat1=conn.prepareStatement("truncate table cart");
            
//            String sql=;
            //stat.setString(1,loc);
            stat.setString(1,loc);
            int count=stat.executeUpdate();
            //int c=stat1.executeUpdate();
        
        
        %>

  <select  class="bx">
      <option value="select location"><% out.print(loc);%>
          </option>
    <option value="1">Pinjore</option>
    <option value="2">Kalka</option>
    <option value="3">Nanakpur</option>
    <option value="4">Panchkula</option>
    <option value="5">Chandigarh</option>
    <option value="6">Baddi</option>
    <option value="7">Delhi</option>
    <option value="8">Shimla</option>
    <option value="9">Manali</option>
    </select>
  </div>
</font>
</font>
</div>
<br>
<br>
<div class="b">
	<div class="mx">
		<a href="offer.html">
<img src="pics\1.PNG" length=20% width=20% align="bottom" onmouseout="xxy(this)" onmouseover="xxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="offer.html"><img src="pics\2.PNG" length=35% width=20% align="bottom" onmouseout="xxy(this)" onmouseover="xxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="offer.html"><img src="pics\3.PNG" length=35% width=20% align="bottom" onmouseout="xxy(this)" onmouseover="xxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="offer.html"><img src="pics\4.PNG" height=35% width=20% align="bottom" onmouseout="xxy(this)" onmouseover="xxx(this)"></a>
	</div>
</div>
<script>
{

function xxx(x) {
x.style.height="37%";
x.style.width="22%";
}
function xxy(x) {
x.style.height="35%";
x.style.width="20%";
}
}
</script>
<br>
<br><br>
<br>
<BR>
<div class="d">
	<a href="jack.jsp"><img src="pics\D1.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <a href="jack.jsp"><img src="pics\D2.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   	<a href="jack.jsp"><img src="pics\D3.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>
</div>
<br>
<br>
<BR>
<div class="d">
	<a href="jack.jsp"><img src="pics\D4.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <a href="jack.jsp"><img src="pics\D5.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   	<a href="jack.jsp"><img src="pics\D6.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>
</div>
<br>
<br>
<BR>
<div class="d">
	<a href="jack.jsp"><img src="pics\D7.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <a href="jack.jsp"><img src="pics\D8.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   	<a href="jack.jsp"><img src="pics\D9.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>
</div>
<br>
<br>
<BR>
<div class="d">
	<a href="jack.jsp"><img src="pics\D10.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <a href="jack.jsp"><img src="pics\D11.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   	<a href="jack.jsp"><img src="pics\D12.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>
</div>
<br>
<br>
<BR>
<div class="d">
	<a href="jack.jsp"><img src="pics\D13.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <a href="jack.jsp"><img src="pics\D14.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   	<a href="jack.jsp"><img src="pics\D15.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>
</div>
<br>
<br>
<BR>
<div class="d">
	<a href="jack.jsp"><img src="pics\D16.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <a href="jack.jsp"><img src="pics\D17.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   	<a href="jack.jsp"><img src="pics\D18.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>
</div><br>
<br>
<BR>
<div class="d">
	<a href="jack.jsp"><img src="pics\D19.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <a href="jack.jsp"><img src="pics\D20.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   	<a href="jack.jsp"><img src="pics\D21.PNG" onmouseout="xxxy(this)" onmouseover="xxxx(this)"></a>
</div>
</div>
<script>
{

function xxxx(x) {
x.style.height="47%";
x.style.width="25%";
}
function xxxy(x) {
x.style.height="43%";
x.style.width="22%";
}
}
</script>

<br>
<br>
<CENTER>
	<H3>
	<FONT FACE="MICROSOFT JHENGHEI" COLOR="ORANGE">MORE DEALS UPLOADING SOON....</FONT>
	</H3>
</CENTER>
</div>

	</body>
</html>