<%-- 
    Document   : cart
    Created on : 22 Nov, 2018, 10:20:58 AM
    Author     : dell
--%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<title>
CART
</title>
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
    margin-top: 25px;
 margin-bottom:  0 px;
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
.reset
{
    margin-left:1290px;
}
</style>
<body>
    <div class="btext">
    <br><br>
    <div class="topnav">
  <img src="pics\s.png" length=55 width=55 align="bottom">&nbsp&nbsp
    <center><font color="#E67E22" size="10%" face="microsoft jhenghei"><b>YOUR CART</b></font></center>
    <hr color="white">
    
<font face="microsoft jhenghei">
  <a href="home.jsp">Home</a>
  <a href="signup.html">SignUp</a>

  <a href="login.html">Login</a>
  <a href="cart.jsp">Cart</a>
  <br>
  <br>
  
   
  <div class="stm">
  
  
  </div>
</font>
</font>
</div>
</div>


<center>
<h1><font face="microsoft jhenghei" color="orange">
<%
            
            try{
          
                String myurl="jdbc:mysql://localhost/project";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/swiggy?useSSL=false","root","7404282002Aa@");
                Statement st=conn.createStatement();
                String query1="select * from cart";
                ResultSet rs=st.executeQuery(query1);
                String a;
                String b;
                int c=0;
                int total=0;
                String p;
                int price=0;
                if(rs.next())
 

 
                {
                    b=rs.getString("meal");
                    if(b!=null)
                    {
                    %>
    <center>
        
  <table class="w3-table-all w3-card-4">
    
    <tr>
        
      <th>S.no</th>
      <th>Item</th>
      <th>Price</th>
      </tr>

                    <tr>
           
        
            <td>
                <% c++;
                    out.println(c); %>
            </td>
            <td>
    <%
                out.println(rs.getString("meal"));
                %>
    </td>
            <td>
                <%
                out.println(rs.getString("price"));
                p=(rs.getString("price"));
                price=Integer.parseInt(p);
                total=total+price;
                }
                %>
            </td>
</tr>
                <%
                while(rs.next())
            {   
                
                 a=rs.getString("meal");
                 
                 %>
            

                <%
                 
                if(a!=null)
                {
                    c++;
                    %>
               

<tr>
            
           
        
            <td>
                <% out.println(c); %>
            </td>
      <td>

                <%
                out.println(a);
                %>
            </td>
            <td>
                <%
                out.println(rs.getString("price"));
                p=(rs.getString("price"));
                price=Integer.parseInt(p);
                total=total+price;               
%>
            </td>
        
        </tr>
                <%
                }
                }
%>
    
  </table></center><br><FONT COLOR="BLACK">
      <table class="w3-table-all w3-card-4">
    
    <tr>
      <th>TOTAL PAYABLE AMOUNT </th>
      <th>=</th>
      <th>    
<%
out.println(total);
%>
</th>
    </tr></table>
<br></center>
<center><a href="checkout.jsp">
        <input type="button" class="bx" value="checkout"></a>
<div class="sreset">
            <form action="reset">
                <input type="submit" class="bx" value="reset choices">
            </form>
        </div>
        
        <%
}

            else 
            {
                 
                 %>
                 NOTHING IS IN YOUR CART RIGHT NOW,SHOP TO FILL IT.
                 <%
                 st.close();
             
            
            }
%>


<%
}            catch(Exception e)
            {
                System.err.println("got an exception");
                System.err.println(e.getMessage());
            }
   
        %>
</B> </FONT>
</font>
</center>

<center>
    
        
</center>
</BODY>
</HTML>
