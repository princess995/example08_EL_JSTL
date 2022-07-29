package com.ezen;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

public class DAO {
	
	public void input(HttpServletRequest request)
	{
		String id, pw, name, gender, address;
		Connection con;
		PreparedStatement pstmt;
		DataSource ds;
		
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		gender = request.getParameter("gender");
		address = request.getParameter("address");
		
		Context cont;
		try {
			cont = new InitialContext();
			ds = (DataSource)cont.lookup("java:comp/env/jdbc/oracle");
			con = ds.getConnection();
			
			String sql = "insert into dbcpex values(?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw); 
			pstmt.setString(3, name);
			pstmt.setString(4, gender);
			pstmt.setString(5, address);
			int k = pstmt.executeUpdate();
			con.close();
			System.out.println(k);
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void serch(HttpServletRequest request)
	{
		String id;
		Connection con;
		PreparedStatement pstmt;
		ResultSet res;
		DataSource ds;
		
		id = request.getParameter("id");
		
		Context cont;
		try {
			cont = new InitialContext();
			ds = (DataSource)cont.lookup("java:comp/env/jdbc/oracle");
			con = ds.getConnection();
			
			String sql = "select * from dbcpex where id like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			res = pstmt.executeQuery();
			
			request.setAttribute("res", res);
			con.close();
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void update(HttpServletRequest request)
	{
		String id, pw, name, gender, address;
		Connection con;
		PreparedStatement pstmt;
		DataSource ds;
		
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		gender = request.getParameter("gender");
		address = request.getParameter("address");
		
		Context cont;
		try {
			cont = new InitialContext();
			ds = (DataSource)cont.lookup("java:comp/env/jdbc/oracle");
			con = ds.getConnection();
			
			String sql = "update dbcpex set pw=?, name=?, gender=?, address=? where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pw); 
			pstmt.setString(2, name);
			pstmt.setString(3, gender);
			pstmt.setString(4, address);
			pstmt.setString(5, id);
			pstmt.executeUpdate();
			con.close();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void delete(HttpServletRequest request)
	{
		String id, pw;
		Connection con;
		PreparedStatement pstmt;
		DataSource ds;
		
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		Context cont;
		try {
			cont = new InitialContext();
			ds = (DataSource)cont.lookup("java:comp/env/jdbc/oracle");
			con = ds.getConnection();
			
			String sql = "delete from dbcpex where id = ? AND pw = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id); 
			pstmt.setString(2, pw);
			pstmt.executeUpdate();
			con.close();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
