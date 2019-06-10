<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Festival-resister</title>
</head>
<body>
<form role="form" method="post" autocomplete="off">
	<div class="inputArea">
		<label>장르</label>
		<select class="category">
			<option value="">전체</option>
		</select>
	</div>
		
	<div class="inputArea">
		<label>페스티벌 명</label>
		<input type="text" id="f_NAME" name="f_NAME"/>
	</div>
	
</form>
	<script src="/resources/js/jquery-3.2.1.min.js"></script>
	<script src="/resources/styles/bootstrap4/popper.js"></script>
	<script src="/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="/resources/plugins/easing/easing.js"></script>
	<script src="/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="/resources/js/product_custom.js"></script>
	
	<script>
	var jsonData = JSON.parse('${genre}');
	console.log(jsonData);
	
	var genreArr = new Array();
	var genreObj = new Object();
	
	for(var i= 0; i<jsonData.length; i++){
		genreObj = new Object();
		genreObj.g_NO = jsonData[i].g_NO;
		genreObj.g_NAME = jsonData[i].g_NAME;
		genreArr.push(genreObj);
	}
	
	for(var i = 0; i<genreArr.length; i++){
		$("select.category").append("<option value='" +genreArr[i].g_NO +"'>"
				+genreArr[i].g_NAME+"</option>");
	}
</script>
</body>
</html>