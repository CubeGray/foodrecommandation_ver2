<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<body>
<br><br><br>

	<center>
		<h2>죄송합니다. 문제가 발생했습니다.</h2> <br>
		<h3>발생문제 : ${sessionScope.errorMsg}</h3>
			
		<br><br><br>
		<a href="${pageContext.request.contextPath}/index.html">메인 화면으로 이동하기</a>&nbsp;&nbsp;&nbsp;<a href="javascript:history.back(1)">뒤로가기</a>
	</center>
	
</body>
</html>