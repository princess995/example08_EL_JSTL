package com.ezen;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class delete
 */
@WebServlet("/sea")
public class search extends HttpServlet {
   private static final long serialVersionUID = 1L;
  
    public search() {
        super();
       
    }
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             Connection con;
              PreparedStatement psmt;
              ResultSet res;
              String driver = "oracle.jdbc.driver.OracleDriver";
              String url = "jdbc:oracle:thin:@localhost:1521:xe";
            
              String sers = request.getParameter("sers");
              String sert = request.getParameter("sert");
              try
              {
                 
               Class.forName(driver);
               try {
                  con=DriverManager.getConnection(url, "ezen311", "1234");
                  String sql = "select * from samservlet";
                  if(sers.equals("name"))
                  {
                     sql+="where name like ?";
                  }
                  else if(sers.equals("id"))
                  {
                     sql+="where id like ?";
                  }
                  else
                  {
                     System.out.println("잘못입력하셨습니다.");
                  }
                  psmt=con.prepareStatement(sql);
                  psmt.setString(1, "%"+sert+"%");
                  res= psmt.executeQuery();
                  
                  request.setAttribute("res", res);
            
               } catch (SQLException e) {
                  // TODO Auto-generated catch block
                  e.printStackTrace();
               }
            } 
              catch (ClassNotFoundException e)
              {
               // TODO Auto-generated catch block
               e.printStackTrace();
            }
              
              response.sendRedirect("serchrst.jsp");
   }

   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}