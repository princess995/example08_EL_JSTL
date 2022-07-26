package com.ezen;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/del")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String no, name, wrt, com, cover, wrtde, bookde;
		int price;
		
		request.setCharacterEncoding("utf-8");
		
		String savedir = "C:/Servlet/servlet2-1/src/main/webapp/image";
		int size = 1024*1024*10;
		String enctype="utf-8";
		DefaultFileRenamePolicy pol = new DefaultFileRenamePolicy();
		MultipartRequest mul = new MultipartRequest(request, savedir, size, enctype, pol);
		
		
		no = mul.getParameter("no");
		name = mul.getParameter("name");
		wrt = mul.getParameter("wrt");
		com = mul.getParameter("com");
		price = Integer.parseInt(mul.getParameter("price"));
		cover = mul.getFilesystemName("cover");
		wrtde = mul.getParameter("wrtde");
		bookde = mul.getParameter("bookde");
		
		DTO dto = new DTO(no, name, wrt, com, price, cover, wrtde, bookde);
		DAO dao = new DAO();
		dao.delete(dto);
		
		response.sendRedirect("home.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
