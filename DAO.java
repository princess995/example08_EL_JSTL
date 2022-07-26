package com.ezen;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
	
	Connection con;
    PreparedStatement pstmt;
    ResultSet res;
    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    
    public void input(DTO dto)
    {
    	try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, "ezen311", "1234");
	    	String sql = "insert into book values(?, ?, ?, ?, ?, ?, ?, ?)";
	    	pstmt = con.prepareStatement(sql);
	    	pstmt.setString(1, dto.getNo());
	    	pstmt.setString(2, dto.getName());
	    	pstmt.setString(3, dto.getWrt());
	    	pstmt.setString(4, dto.getCom());
	    	pstmt.setInt(5, dto.getPrice());
	    	pstmt.setString(6, dto.getCover());
	    	pstmt.setString(7, dto.getWrtde());
	    	pstmt.setString(8, dto.getBookde());
	    	pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }

    public void update(DTO dto)
    {
    	try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, "ezen311", "1234");
	    	String sql = "update book set name=?, wrt=?, com=?, price=?, cover=?, wrtde=?, bookde=?  where no = ?";
	    	pstmt = con.prepareStatement(sql);
	    	pstmt.setString(1, dto.getName());
	    	pstmt.setString(2, dto.getWrt());
	    	pstmt.setString(3, dto.getCom());
	    	pstmt.setInt(4, dto.getPrice());
	    	pstmt.setString(5, dto.getCover());
	    	pstmt.setString(6, dto.getWrtde());
	    	pstmt.setString(7, dto.getBookde());
	    	pstmt.setString(8, dto.getNo());
	    	pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
    }
    
    public void delete(DTO dto)
    {
    	try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, "ezen311", "1234");
	    	String sql = "delete from book where no = ?";
	    	pstmt = con.prepareStatement(sql);
	    	pstmt.setString(1, dto.getNo());
	    	pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
    }
}
