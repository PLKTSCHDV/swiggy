/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dell
 */
public class cart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
    
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.sendRedirect("cart.jsp");
        try (PrintWriter out = response.getWriter()) {
            String m1 = request.getParameter("meal1");
            String p1="250";
            String m2 = request.getParameter("meal2");
            String p2="250";
            String m3 = request.getParameter("meal3");
            String p3="135";
            String m4 = request.getParameter("meal4");
            String p4="250";
            String m5 = request.getParameter("meal5");
            String p5="150";
            String m6 = request.getParameter("meal6");
            String p6="335";
            String m7 = request.getParameter("meal7");
            String p7="150";
            String m8 = request.getParameter("meal8");
            String p8="350";
            String m9 = request.getParameter("meal9");
            String p9="135";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn;
            conn=DriverManager.getConnection("jdbc:mysql://localhost/swiggy?useSSL=false","root","7404282002Aa@");
            //PreparedStatement stat=conn.prepareStatement("insert into location values(?)");
            PreparedStatement stat=null;
            PreparedStatement stat1=null;
            stat=conn.prepareStatement("insert into cart values(?,?)");
            stat1=conn.prepareStatement("insert into adminx values(?,?)");
//            String sql=;
            //stat.setString(1,loc);
            stat.setString(1,m1);
            stat.setString(2,p1);
            
            int count=stat.executeUpdate();
            int countx=stat1.executeUpdate();
            stat=conn.prepareStatement("insert into cart values(?,?)");
            stat1=conn.prepareStatement("insert into adminx values(?,?)");
            stat.setString(1,m2);
            stat.setString(2,p2);
            
            count=stat.executeUpdate();
            countx=stat1.executeUpdate();
            stat=conn.prepareStatement("insert into cart values(?,?)");
            stat1=conn.prepareStatement("insert into adminx values(?,?)");
            stat.setString(1,m3);
            stat.setString(2,p3);
            
            count=stat.executeUpdate();
            countx=stat1.executeUpdate();
            stat=conn.prepareStatement("insert into cart values(?,?)");
            stat1=conn.prepareStatement("insert into adminx values(?,?)");
            stat.setString(1,m4);
            stat.setString(2,p4);
            
            
            count=stat.executeUpdate();
            countx=stat1.executeUpdate();
            stat=conn.prepareStatement("insert into cart values(?,?)");
            stat1=conn.prepareStatement("insert into adminx values(?,?)");
            stat.setString(1,m5);
            stat.setString(2,p5);
            count=stat.executeUpdate();
            countx=stat1.executeUpdate();
            stat=conn.prepareStatement("insert into cart values(?,?)");
            stat1=conn.prepareStatement("insert into adminx values(?,?)");
            stat.setString(1,m6);
            stat.setString(2,p6);
            count=stat.executeUpdate();
            countx=stat1.executeUpdate();
            stat=conn.prepareStatement("insert into cart values(?,?)");
            stat1=conn.prepareStatement("insert into adminx values(?,?)");
            stat.setString(1,m7);
            stat.setString(2,p7);
            count=stat.executeUpdate();
            countx=stat1.executeUpdate();
            stat=conn.prepareStatement("insert into cart values(?,?)");
            stat1=conn.prepareStatement("insert into adminx values(?,?)");
            stat.setString(1,m8);
            stat.setString(2,p8);
            
            count=stat.executeUpdate();
            countx=stat1.executeUpdate();
            stat=conn.prepareStatement("insert into cart values(?,?)");
            stat1=conn.prepareStatement("insert into adminx values(?,?)");
            stat.setString(1,m9);
            stat.setString(2,p9);
            
            count=stat.executeUpdate();
            countx=stat1.executeUpdate();
            
            
if(count==1)
{
    out.println("successful");
}
else
    out.println("failed");
//System.out.println(loc);
            //ResultSet rs=stat.executeQuery("inaert into location values(loc)");
        }

        catch(Exception e)
                {
                    System.out.println(e);
                }
            
        }
    }

