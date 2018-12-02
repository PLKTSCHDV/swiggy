<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>checkout</title>
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
    <center><font color="#E67E22" size="10%" face="microsoft jhenghei"><b>Checkout</b></font></center>
    <hr color="white">
    
<font face="microsoft jhenghei">
  <a href="home.jsp">Home</a>
  <a href="signup.html">SignUp</a>

  <a href="login.html">Login</a>
  <a href="cart.jsp">Cart</a>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  
        </div>  
  <center>Items will be delievered to
   <%
       
       String a=(String)session.getAttribute("uname");
       if(a!=null)
       {
       out.println(a);
       }
       else
       {
            try{
            String user = request.getParameter("uname");
            String pass = request.getParameter("psw");
            
            String myurl="jdbc:mysql://localhost/project";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/signup?useSSL=false","root","7404282002Aa@");
                Connection conns=DriverManager.getConnection("jdbc:mysql://localhost/swiggy?useSSL=false","root","7404282002Aa@");
                PreparedStatement stat1=null;
                stat1=conn.prepareStatement("truncate table cart");
                 
                Statement st=conn.createStatement();
                String query1="select * from s where e='"+user+"' and p='"+pass+"'";
                ResultSet rs=st.executeQuery(query1);
                stat1=conn.prepareStatement("truncate table cart");
            
                String b;
           if(rs.next())
                    
                {
                    b=rs.getString("e");
                    out.println(b);
                    %>
<%
}
}
            catch(Exception e)
            {
                System.err.println("got an exception");
                System.err.println(e.getMessage());
            }

}
        %>

  
</font>
</div>
</div>
</body>
</html>