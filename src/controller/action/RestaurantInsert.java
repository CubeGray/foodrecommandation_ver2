package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.FoodService;
import model.entity.RestaurantEntity;
import model.entity.SpecificEntity;

public class RestaurantInsert implements Action{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		String rid = request.getParameter("rid");
		String rname = request.getParameter("rname");
		SpecificEntity sid=null;
		String maplink = request.getParameter("maplink");
		String pagelink = request.getParameter("pagelink");
		
		try{
			sid = FoodService.getSpecificEntity(request.getParameter("sname"));
			RestaurantEntity restaurant = new RestaurantEntity(rid, rname, sid, maplink, pagelink);
			
			if(rid!=null && rid.length() !=0 && rname!=null && rname.length() !=0
					&& request.getParameter("sname")!=null && request.getParameter("sname").length() !=0 
					&& maplink!=null && maplink.length() !=0 && pagelink!=null && pagelink.length() !=0) {

				boolean result = FoodService.addRestaurant(restaurant);
				
				if(result){
					request.getSession().setAttribute("restaurant", restaurant);
					request.getSession().setAttribute("successMsg", "레스토랑 추가완료");
					
					url = "restaurantDetail.jsp";
				}else{
					request.getSession().setAttribute("errorMsg", "레스토랑 생성시 오류");
				}
			}else {
				request.getSession().setAttribute("errorMsg", "모든 요소 값들을 입력해주세요!");
			}
		}catch(Exception s){
			request.getSession().setAttribute("errorMsg", s.getMessage());
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
