<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>categorylist</title>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>

<body>
	<br>
	<br>
	<br>
	<center>
	
	<div id="categorytable">		
		<h1 >카테고리를 선택하세요.</h1>			
			<table border="1">
				<tr>
					<td id="td1">
						<h3>1. 한식</h3> <a onmouseover="mouseon1('한식','td1')"><img
							src="https://upload.wikimedia.org/wikipedia/commons/0/09/Flag_of_South_Korea.svg"
							width="300" height="200"></a>
					</td>

					<td id="td2">
						<h3>2. 양식</h3> <a onmouseover="mouseon1('양식','td2')"><img
							src="https://upload.wikimedia.org/wikipedia/commons/0/03/Flag_of_Italy.svg"
							width="300" height="200"></a>
					</td>
				</tr>

				<tr>
					<td id="td3">
						<h3 >3. 중식</h3> <a onmouseover="mouseon1('중식','td3')"><img
							src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/225px-Flag_of_the_People%27s_Republic_of_China.svg.png"
							width="300" height="200"></a>
					</td>
					<td id="td4">
						<h3 >4. 일식</h3> <a onmouseover="mouseon1('일식','td4')"><img
							src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg"
							width="300" height="200"></a>
					</td>
				</tr>
			</table>
		</div>
	</center>
</body>

<script>	
	function mouseon1(category,tid) {
		axios.get("total", {
			params: {
				command:"getSpecifics",
				cname:category
			}
		})
			.then(response => {	//정상응답시 자동실행
				document.getElementById(tid).innerHTML = response.data;

			})
			.catch(error => {	//비정상 응답시 자동실행되는 블록
				console.log("예외 발생");
			});
	}	

	document.getElementById("categorytable").addEventListener('mouseleave', () => {
		setTimeout(function () {
		        location.reload();
		});
	});

</script>

</html>
