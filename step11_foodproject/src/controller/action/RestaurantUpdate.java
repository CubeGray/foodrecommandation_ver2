package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.FoodService;

public class RestaurantUpdate implements Action{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			FoodService.updateRestaurant(request.getParameter("rid"), request.getParameter("maplink"));
			request.getSession().setAttribute("restaurant",FoodService.getSingleRestaurant(request.getParameter("rid")));
			request.getSession().setAttribute("successMsg", "수정 완료");	
			url = "restaurantDetail.jsp";
		}catch(Exception s){
			request.getSession().setAttribute("errorMsg", s.getMessage());
			s.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
