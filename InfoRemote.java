package com.ezen;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InfoRemote
 */
@WebServlet("*.do")
public class InfoRemote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public InfoRemote() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullpath = request.getRequestURI();
		String pjname = request.getContextPath();
		String fname = fullpath.substring(pjname.length());

		Infoservice comm;
		String view = null;
		
		if(fname.equals("/in.do"))
		{
			comm = new Infoin();
			comm.exec(request, response);
			view="infohome.jsp";
		}
		
		if(fname.equals("/out.do"))
		{
			view="infoout.jsp";
		}
		
		if(fname.equals("/ser.do"))
		{
			comm = new Infoser();
			comm.exec(request, response);
			view="infoserrst.jsp";
		}
		
		if(fname.equals("/up.do"))
		{
			comm = new Infoup();
			comm.exec(request, response);
			view="infoout.jsp";
		}
		
		if(fname.equals("/del.do"))
		{
			comm = new Infodel();
			comm.exec(request, response);
			view="infoout.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
