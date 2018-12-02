package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("\n");
      out.write("<title>\n");
      out.write("ADMIN\n");
      out.write("</title>\n");
      out.write("<style>\n");
      out.write(".m {\n");
      out.write("    margin-top: 0px;\n");
      out.write("    margin-bottom: 0px;\n");
      out.write("    margin-right: 0px;\n");
      out.write("    margin-left: 1200px;\n");
      out.write("    }\n");
      out.write("    .mx {\n");
      out.write("    margin-top: 0px;\n");
      out.write("    margin-bottom: 0px;\n");
      out.write("    margin-right: 50px;\n");
      out.write("    margin-left: 200px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .topnav {\n");
      out.write("    overflow: hidden;\n");
      out.write(" \n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the links inside the navigation bar */\n");
      out.write(".topnav a {\n");
      out.write("    float: left;\n");
      out.write("    display: block;\n");
      out.write("    color: black;\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 14px 16px;\n");
      out.write("    text-decoration: none;\n");
      out.write("    font-size: 17px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Change the color of links on hover */\n");
      out.write(".topnav a:hover {\n");
      out.write("    background-color: ORANGE;\n");
      out.write("    color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the \"active\" element to highlight the current page */\n");
      out.write(".topnav a.active {\n");
      out.write("    background-color: #2196F3;\n");
      out.write("    color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the search box inside the navigation bar */\n");
      out.write(".topnav input[type=text] {\n");
      out.write("    float: right;\n");
      out.write("    padding: 6px;\n");
      out.write("    border: none;\n");
      out.write("    margin-top: 8px;\n");
      out.write("    margin-right: 16px;\n");
      out.write("    font-size: 17px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* When the screen is less than 600px wide, stack the links and the search field vertically instead of horizontally */\n");
      out.write("@media screen and (max-width: 600px) {\n");
      out.write("    .topnav a, .topnav input[type=text] {\n");
      out.write("        float: none;\n");
      out.write("        display: block;\n");
      out.write("        text-align: left;\n");
      out.write("        width: 100%;\n");
      out.write("        margin: 0;\n");
      out.write("        padding: 14px;\n");
      out.write("    }\n");
      out.write("    .topnav input[type=text] {\n");
      out.write("        border: 1px solid #ccc;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write(".b {\n");
      out.write("    background-color:#212F3D;\n");
      out.write("}\n");
      out.write(".d\n");
      out.write("{\n");
      out.write("    margin-top: 0px;\n");
      out.write("    margin-bottom: 0px;\n");
      out.write("    margin-right: 0px;\n");
      out.write("    margin-left: 285px;\n");
      out.write("    \n");
      out.write("}\n");
      out.write(".stm\n");
      out.write("{\n");
      out.write("    margin-top: 25px;\n");
      out.write(" margin-bottom:  0 px;\n");
      out.write(" margin-left: 1300px;\n");
      out.write("       \n");
      out.write("}\n");
      out.write("    .bx {\n");
      out.write("    background-color: orange;\n");
      out.write("    border: none;\n");
      out.write("    color: white;\n");
      out.write("    padding: 10px 25px;\n");
      out.write("    text-align: center;\n");
      out.write("    text-decoration: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    font-size: 16px;\n");
      out.write("    margin: 4px 2px;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write(".m\n");
      out.write("{\n");
      out.write("    margin-left: 230px;\n");
      out.write("}\n");
      out.write(".mx\n");
      out.write("{\n");
      out.write("    margin-left: 70px;\n");
      out.write("}\n");
      out.write(".bx {\n");
      out.write("    background-color: orange;\n");
      out.write("    border: none;\n");
      out.write("    color: white;\n");
      out.write("    padding: 15px 32px;\n");
      out.write("    text-align: center;\n");
      out.write("    text-decoration: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    font-size: 16px;\n");
      out.write("    margin: 4px 2px;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write(".reset\n");
      out.write("{\n");
      out.write("    margin-left:1290px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("    <div class=\"btext\">\n");
      out.write("    <br><br>\n");
      out.write("    <div class=\"topnav\">\n");
      out.write("  <img src=\"pics\\s.png\" length=55 width=55 align=\"bottom\">&nbsp&nbsp\n");
      out.write("    <center><font color=\"#E67E22\" size=\"10%\" face=\"microsoft jhenghei\"><b>WELCOME ADMIN</b></font></center>\n");
      out.write("    <hr color=\"white\">\n");
      out.write("    \n");
      out.write("<font face=\"microsoft jhenghei\">\n");
      out.write("  <a href=\"home.jsp\">Home</a>\n");
      out.write("  <br>\n");
      out.write("  <br>\n");
      out.write("  \n");
      out.write("   \n");
      out.write("  <div class=\"stm\">\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  </div>\n");
      out.write("</font>\n");
      out.write("</font>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("<h1><font face=\"microsoft jhenghei\" color=\"orange\">\n");

            
            
          
                String myurl="jdbc:mysql://localhost/project";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/swiggy?useSSL=false","root","7404282002Aa@");
                Statement st=conn.createStatement();
                String query1="select * from adminx";
                ResultSet rs=st.executeQuery(query1);
                String a;
                String b;
                String u;
                int c=0;
                int total=0;
                String p;
                int price=0;
                if(rs.next())
 

 
                {
                    b=rs.getString("meal");
                    if(b!=null)
                    {
                    
      out.write("\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("  <table class=\"w3-table-all w3-card-4\">\n");
      out.write("    \n");
      out.write("    <tr>\n");
      out.write("        \n");
      out.write("      <th>S.no</th>\n");
      out.write("      <th>Item</th>\n");
      out.write("      <th>Price</th>\n");
      out.write("      <th>User</th>\n");
      out.write("      </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("           \n");
      out.write("        \n");
      out.write("            <td>\n");
      out.write("                ");
 c++;
                    out.println(c); 
      out.write("\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("    ");

                out.println(rs.getString("meal"));
                
      out.write("\n");
      out.write("    </td>\n");
      out.write("            <td>\n");
      out.write("                ");

                out.println(rs.getString("price"));
                p=(rs.getString("price"));
                price=Integer.parseInt(p);
                total=total+price;
                }
                
      out.write("\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("                ");

                out.println(rs.getString("uname"));
                
                
                
      out.write("\n");
      out.write("            </td>\n");
      out.write("</tr>\n");
      out.write("                ");

                while(rs.next())
            {   
                
                 a=rs.getString("meal");
                 
                 
      out.write("\n");
      out.write("            \n");
      out.write("\n");
      out.write("                ");

                 
                if(a!=null)
                {
                    c++;
                    
      out.write("\n");
      out.write("               \n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("        \n");
      out.write("            <td>\n");
      out.write("                ");
 out.println(c); 
      out.write("\n");
      out.write("            </td>\n");
      out.write("      <td>\n");
      out.write("\n");
      out.write("                ");

                out.println(a);
                
      out.write("\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("                ");

                out.println(rs.getString("price"));
                p=(rs.getString("price"));
                price=Integer.parseInt(p);
                total=total+price;               

      out.write("\n");
      out.write("            </td>\n");
      out.write("        <td>\n");
      out.write("                ");

                out.println(rs.getString("uname"));
                
                
                
      out.write("\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("                ");

                }
                }

      out.write("\n");
      out.write("    \n");
      out.write("  </table></center><br><FONT COLOR=\"BLACK\">\n");
      out.write("    \n");
      out.write("<br></center>\n");
      out.write("<center>\n");
      out.write("<div class=\"sreset\">\n");
      out.write("            <form action=\"doneall\">\n");
      out.write("                <input type=\"submit\" class=\"bx\" value=\"done all\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        ");

}

 else 
            {
                 
                 
      out.write("\n");
      out.write("                 NOTHING IS PURCHASE CART RIGHT NOW.\n");
      out.write("                 ");

                 
             
            
            }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</B> </FONT>\n");
      out.write("</font>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("</center>\n");
      out.write("</BODY>\n");
      out.write("</HTML>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
