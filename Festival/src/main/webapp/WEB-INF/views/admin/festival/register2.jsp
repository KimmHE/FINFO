<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../../finfo/header2.jsp"%>
<div class="login-page">
	<div class="form">
		<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">

			<h3>페스티벌 등록</h3>
			<div class="inputArea f_reg">
				<label>페스티벌 명</label><input type="text" id="f_SUBJECT"
					name="f_SUBJECT" placeholder="FESTIVAL NAME"/>
			</div>
			<%--
			<div class="inputArea">
				<label>페스티벌 명</label> <input type="text" id="f_SUBTITLE"
					name="f_SUBJTITLE" placeholder="FESTIVAL SUBTITLE"/>
			</div>
			 --%>
			<div class="inputArea">
				<label>시작 일</label> <input type="date" id="f_START" name="f_START" />
			</div>
			<div class="inputArea">
				<label>마감 일</label> <input type="date" id="f_END" name="f_END" />
			</div>
			<div class="inputArea">
				<label>장 소</label> <input type="text" id="f_PLACE" name="f_PLACE"
				placeholder="FESTIVAL PLACE" />
			</div>
			<div class="inputArea">
				<label>해시태그 1</label> <input type="text" id="f_TAG1" name="f_TAG1"
				placeholder="FESTIVAL TAG1" />
			</div>
			<div class="inputArea">
				<label>해시태그 2</label> <input type="text" id="f_TAG2" name="f_TAG2" 
				placeholder="FESTIVAL TAG2"/>
			</div>
			<div class="inputArea">
				<label>장르</label> <select class="category">
					<option value="">전체</option>
				</select>
			</div>
			<div class="inputArea">
				<label>썸네일</label> 
				<input type="file" id="f_THUMBNAIL"
					name="f_THUMBNAIL"/>
			</div>
			<div class="inputArea">
				<label>상세 설명</label> <textarea id="f_DESC" name="f_DESC" cols="40" rows="7" style="resize:none;"placeholder="FESTIVAL DESCRIPTION"></textarea>
			</div>
			<div class="inputArea">
				<label>이미지(라인업 등)</label> <input type="file" id="f_IMGURL"
					name="f_IMGURL" />
			</div>
			<div class="inputArea">
				<label>웹 URL</label> <input type="text" id="f_URL" name="f_URL" 
				placeholder="FESTIVAL WEB SITE"/>
			</div>
			<div class="inputArea">
				<label>가격</label> <input type="text" id="f_SHOWLOWERPRICE"
					name="f_SHOWLOWERPRICE" placeholder="FESTIVAL PRICE"/>
			</div>
			<div class="inputArea">
				<label>진행 상태</label>
				<input type="radio" id="f_STATE1" name="f_STATE" value="1" checked>
	    			   <label for="f_STATE1">예정</label>
	    				<input type="radio" id="f_STATE2" name="f_STATE" value="2">
	    				   <label for="f_STATE2">진행</label>
	    				<input type="radio" id="f_STATE3" name="f_STATE" value="3" >
	     				  <label for="f_STATE3">마감</label> 
			</div>
			<input type="button" value="등록하기" onclick="insertFestival()">
		</form>
	</div>
</div>
<%@include file="../../finfo/footer.jsp"%>
<script>
	var jsonData = JSON.parse('${genre}');
	console.log(jsonData);

	var genreArr = new Array();
	var genreObj = new Object();

	for (var i = 0; i < jsonData.length; i++) {
		genreObj = new Object();
		genreObj.g_NO = jsonData[i].g_NO;
		genreObj.g_NAME = jsonData[i].g_NAME;
		genreArr.push(genreObj);
	}

	for (var i = 0; i < genreArr.length; i++) {
		$("select.category").append(
				"<option value='" +genreArr[i].g_NO +"'>" + genreArr[i].g_NAME
						+ "</option>");
	}
</script>