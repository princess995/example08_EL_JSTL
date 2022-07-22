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


@WebServlet("/inp") // <<"/���θ�" ���⸦ �ٲ��ָ� ���θ� �ٲ�. sam���� ���������. main-input ����� ���� inp�� ����
public class Sample extends HttpServlet {	//extends��� so Ŭ������ ��ӹ޾Ҵ�. HttpServlet�� Ŭ������. also �� ���� �޼ҵ�鵵 �� ��ӹ޾��� ��.
	private static final long serialVersionUID = 1L;


    public Sample() {	//�޼ҵ��� �����ε� class�� �̸��� ����. so �̰� ������.
    }

    Connection con;
    PreparedStatement pstmt;
    //ResultSet res;
    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:xe";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {	//get method. post�� �ϵ�, get�� �ϵ� �ᱹ �� ����� ���� ��.
		//response.getWriter().append("Served at: ").append(request.getContextPath());		<<ó���� �⺻���� �����Ȱǵ� ����. �ֳĸ� ���⿡ �츮�� �ۼ��� �ڵ带 �����Ŷ�.
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
		
		response.sendRedirect("Main.jsp");	//response ����� ���ִ�. java���� ������!
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	//post method. post �ϸ� doGet���� ����.
		doGet(request, response);
	}

}
