<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../finfo/header2.jsp"%>
<!-- footer 스타일 떄문에 추가  -->

<div class="login-page">
	<div class="form">
		<form class="register-form">
				<input type="text" placeholder="이메일" /> <input type="password"
					placeholder="비밀번호" /> <input type="password"
					placeholder="입력한 비밀번호 확인" /> <input type="text" placeholder="이름" />
				
			<div class="like-one">
					<label style="text-align: left; color: #3ea282; font-weight: bold;">* 1순위 선호도</label>
						
						<input type="radio" id="radio1-1" name="radios1" checked>
	    			   <label for="radio1-1">재즈</label>
	    				<input type="radio" id="radio1-2" name="radios1">
	    				   <label for="radio1-2">클래식</label>
	    				<input type="radio" id="radio1-3" name="radios1">
	     				  <label for="radio1-3">락</label> 
	     				  <input type="radio" id="radio1-4" name="radios1">
	     				  <label for="radio1-4">EDM-힙합</label> 
			</div>
			
			<div class="like-two">
					<label style="padding-top: 2%; text-align: left; color: #3ea282; font-weight: bold;">* 2순위 선호도</label>
						
						<input type="radio" id="radio2-1" name="radios2" checked>
	    			   <label for="radio2-1">재즈</label>
	    				<input type="radio" id="radio2-2" name="radios2">
	    				   <label for="radio2-2">클래식</label>
	    				<input type="radio" id="radio2-3" name="radios2" >
	     				  <label for="radio2-3">락</label> 
	     				  <input type="radio" id="radio2-4" name="radios2">
	     				  <label for="radio2-4">EDM-힙합</label> 
			</div>
				<br>
				<button>join</button>
				<p class="message">
					회원이신가요?<a href="#"> 로그인하기</a>
		</form>
		
		
		<form class="login-form">
			<input type="text" placeholder="이메일" /> <input type="password" placeholder="비밀번호" />
			<button>login</button>
			<p class="message">
				F.INFO에 같이 참여하실래요?<a href="#"> 가입하러가기</a>
			</p>
		</form>
	</div>
</div>


<%@include file="../finfo/footer.jsp"%>
