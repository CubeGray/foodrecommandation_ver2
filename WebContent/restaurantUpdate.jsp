<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<title>Insert title here</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">

<header class="w3-container w3-theme w3-padding" id="myHeader">
  <i onclick="w3_open()" class="fa fa-bars w3-xlarge w3-button w3-theme"></i> 
  <div class="w3-center">
  <h1 class="w3-xxxlarge w3-animate-bottom"></h1>
  </div>
</header>

<body>
<center>

<h3>식당 정보 수정하기 - 식당 정보 수정</h3>
<hr><p>

<form action="total?command=restaurantUpdate" method="post">
<table border="1">
	<thead>
		<tr>
			<th>rid</th><th>rname</th><th>pagelink</th>
		</tr>
 	<tr>
 		<td><input type="text" name="rid"  value="${sessionScope.re.rid}" readonly></td>
 		<td>${sessionScope.re.rname}</td>
 		<td><input type="text" name="pagelink" value="${sessionScope.re.pagelink}"></td>
 	</tr>
 	
 	<tr>
 		<td colspan="4">
 			<input type="submit" value="수정">
 			&nbsp;&nbsp;&nbsp;
 			<input type="reset" value="취소">
 		</td>
 	</tr>
</table>
</form>
</center>
</body>
</html>