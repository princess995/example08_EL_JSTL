package com.ezen;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/search")
public class SearchTest extends HttpServlet {
   private static final long serialVersionUID = 1L;
 
    public SearchTest() {
        super();
        // TODO Auto-generated constructor stub
    }

   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      String sname=request.getParameter("sname");
      String svalue=request.getParameter("svalue");
      Connection con;
      PreparedStatement psmt;
      ResultSet res;
      String driver="oracle.jdbc.driver.OracleDriver";
      String url ="jdbc:oracle:thin:@localhost:1521:xe";
      try {
         Class.forName(driver);
         try {
            con=DriverManager.getConnection(url, "ezen311", "1234");
            String sql="select * from samservlet ";
            if(sname.equals("name"))
            {
               sql += " where name ? ";
            }
            else if(sname.equals("id"))
            {
               sql += " where id like ?";
            }
            psmt=con.prepareStatement(sql);
            psmt.setString(1,"%"+ svalue+"%");
            res=psmt.executeQuery();
            request.setAttribute("res", res);   
            RequestDispatcher rd = request.getRequestDispatcher("search1.jsp");
            rd.forward(request, response);
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      } catch (ClassNotFoundException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}