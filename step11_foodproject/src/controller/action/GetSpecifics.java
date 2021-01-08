package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.FoodService;

public class GetSpecifics implements Action{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String url = "showError.jsp";
		
		try {
			String cid = FoodService.getCid(request.getParameter("cname"));
			request.getSession().setAttribute("successMsg", "검색 성공");
			request.getSession().setAttribute("specifics", FoodService.getSpecific(cid));
			url = "specificList.jsp";
		}catch(Exception s){
			request.getSession().setAttribute("errorMsg", s.getMessage());
			s.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
