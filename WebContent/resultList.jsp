<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>음식점 추천 결과 화면</title>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
	function tokakaomap(r) {
		console.log(r);
		document.getElementById("tid").innerHTML = "<iframe id='test' marginheight='0' marginwidth='0' width='1000' height='500' src='kakaoMap.jsp?value="
				+ r + "' frameBorder='1'></iframe>"
	}
</script>
</head>
<body>
	<br>
	<br>
	<br>
	<center>
		<div id="tid">
			<h3>restaurant 추천 결과 두둥!</h3>
			<hr>
			<p>
			<table border="1">
				<tr>
					<th>No</th>
					<th>Name</th>
					<th>Map</th>
					<th>Restaurant Info</th>
				</tr>
				<%-- <c:forEach begin="10" end="20" step="2" var="data" varStatus="status"> --%>
				<c:forEach var="data" items="${sessionScope.restaurants}"
					varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${data.rname}</td>
						<td>
							<button onclick="tokakaomap('${data.rname}')">지도보기</button>
						</td>
						<td>
							<button onclick="location.href='${data.pagelink}'">상세정보</button>
						</td>
					</tr>
				</c:forEach>
			</table>
			<br> <br> <br>
			<font color="blue">Map과 Page 버튼을 클릭하시면 각 음식점의 지도와 상세정보를 보실 수 있습니다. </font>
		</div>
		<br> <br> <br> &nbsp;&nbsp;&nbsp;
		<a href="total">메인 화면 이동</a>
	</center>
	<hr>
</body>
</html>