<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<h3>식당 정보</h3>
<hr><p>

<form action="total?command=restaurantInsert" method="post">                                 
	<input type="hidden" name="command" value="restaurantInsert">
	<table border="1">
		<tr>
			<td>R_ID</td><td><input type="text" name="rid"></td>
		</tr>
		<tr>
	 		<td>식당 이름</td><td><input type="text" name="rname"></td>
		</tr>
		<tr>	
			<td>세부카테고리 이름</td><td><input type="text" name="sname"></td>
	 	</tr>
	 	<tr>
	 		<td>지도 link</td><td><input type="text" name="maplink"></td>
	 	</tr>
	 	<tr>
	 		<td>상세정보 link</td><td><input type="text" name="pagelink"></td>
	 	</tr>
	 	<tr>

	 		<td colspan="5"><input type="submit" value="저장">&nbsp;&nbsp;&nbsp;<input type="reset" value="취소"></td>
	 	</tr>
	</table>
</form>
<br><br><br>
<a href="total?command=restaurantgetAll">모든 음식점 보기</a>