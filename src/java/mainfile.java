/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author dell
 */
public class mainfile {

    /**
     * @param args the command line arguments
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Scanner o=new Scanner(System.in);
        try (PrintWriter out = response.getWriter()) {
            String loc = request.getParameter("location");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn;
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/swiggy","root","7404282002Aa@");
            Statement stat=conn.createStatement();
            ResultSet rs=stat.executeQuery("inaert into location values(loc)");
            while(rs.next())
            {
                  System.out.println(rs.getString(1)
                  );
//                System.out.println(rs.getString(2));
//                System.out.println(rs.getInt(3));
//                //System.out.println(rs);
            }
        }
        catch(Exception e)
                {
                    System.out.println(e);
                }
    }
    
}
