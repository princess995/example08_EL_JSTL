package com.ezen;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Infoin implements Infoservice{

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		DAO dao = new DAO();
		dao.input(request);
	}

}
