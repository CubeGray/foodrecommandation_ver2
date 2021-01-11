package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.RestaurantDAO;

public class RestaurantUpdate implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		String maplink = request.getParameter("maplink");
		boolean flag=true;
	
		for(int i=0;i<maplink.length();i++) {
			if(maplink.charAt(i)==' ') {
				flag=false;
				break;
			}
		}
		
		if (flag && maplink != null && (maplink.trim()).length() == maplink.length()) {

			try {
				RestaurantDAO.updateRestaurant(request.getParameter("rid"), maplink);
				request.getSession().setAttribute("restaurant",
						RestaurantDAO.getSingleRestaurant(request.getParameter("rid")));
				request.getSession().setAttribute("successMsg", "수정 완료");
				url = "restaurantDetail.jsp";

			} catch (Exception s) {
				request.getSession().setAttribute("errorMsg", s.getMessage());
				s.printStackTrace();
			}

		} else {
			request.getSession().setAttribute("errorMsg", "지도 링크 입력값을 다시 한번 확인해주세요.");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
