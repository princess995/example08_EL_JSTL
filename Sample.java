package com.ezen;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/inp") // <<"/매핑명" 여기를 바꿔주면 매핑명 바뀜. sam으로 만들었으나. main-input 사용을 위해 inp로 변경
public class Sample extends HttpServlet {	//extends사용 so 클래스를 상속받았다. HttpServlet은 클래스다. also 그 안의 메소드들도 다 상속받았을 것.
	private static final long serialVersionUID = 1L;


    public Sample() {	//메소드의 일종인데 class와 이름이 같다. so 이건 생성자.
    }

    Connection con;
    PreparedStatement pstmt;
    //ResultSet res;
    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:xe";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {	//get method. post를 하든, get을 하든 결국 다 여기로 오게 됨.
		//response.getWriter().append("Served at: ").append(request.getContextPath());		<<처음에 기본으로 생성된건데 지움. 왜냐면 여기에 우리가 작성한 코드를 넣을거라서.
		String id, name;
		int kor;
		
		id = request.getParameter("id");
		name = request.getParameter("name");
		kor = Integer.parseInt(request.getParameter("kor"));
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			con = DriverManager.getConnection(url, "ezen311", "1234");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		String sql = "insert into samsevlet values(?, ?, ?)";
	    try {
			pstmt = con.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    try {
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setInt(3, kor);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("Main.jsp");	//response 기능이 들어가있다. java에는 없었지!
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	//post method. post 하면 doGet으로 간다.
		doGet(request, response);
	}

}
