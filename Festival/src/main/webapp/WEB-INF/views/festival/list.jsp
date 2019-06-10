<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../finfo/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"> 
<link rel="stylesheet" href="http://cdn.jsdelivr.net/font-nanum/1.0/nanumbarungothic/nanumbarungothic.css">
<link rel="stylesheet" type="text/css" href="/resources/styles/product.css">
<link rel="stylesheet" type="text/css" href="/resources/styles/product_responsive.css">
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/styles/bootstrap4/popper.js"></script>
<script src="/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/resources/plugins/easing/easing.js"></script>
<script src="/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="/resources/js/product_custom.js"></script>
</head>
<body>
<%-- <table border="1">
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
            </tr>
        </thead>
        <tbody>
        	<c:forEach items="${list}" var="list">
	        	<tr>
	        		<td> ${list.f_NO} </td>
	        		<td> <a href="/festival/read?f_NO=${list.f_NO} ">${list.f_SUBJECT} </a></td>
	        	</tr>
        	</c:forEach>
        </tbody>
    </table>
    
    <section id="container">
    	<div id= "container-box">
    		<section id="content">
    			<ul>
    				<c:forEach items="${list}" var="list">
    					<li>
    						<div class="festivalList">
    						<div class="festivalThumb">
    							<a href="/festival/read?f_NO=${list.f_NO}">
    								<img src="/resources/images/${list.f_URL}" alt="">
    							</a>
    						</div>
    						<div class="festivalName"> 
    							<a href="/festival/read?f_NO=${list.f_NO}">${list.f_SUBJECT}</a>
    						</div>
    						</div>
    					</li>
    				</c:forEach>
    			</ul>
    		</section>
    	</div>
    </section>
    --%>
    
    <section id="one" class="wrapper style2">
				<div class="inner">
					<div class="grid-style">

					<c:forEach items="${list}" var="list">
						<div>
							<div class="box">
								<div class="image fit">
									<a href="/festival/read?f_NO=${list.f_NO}">
    								<img src="/resources/images/${list.f_URL}" alt="">
    								</a>
								</div>
								<div class="content">
									<header class="align-center">
										<p>
										<fmt:formatDate pattern="yyyy.MM.dd" value="${list.f_START}"/>
										~
										<fmt:formatDate pattern="yyyy.MM.dd" value="${list.f_END}"/>
										</p>
									<h3> ${list.f_SUBJECT}</h3>
									</header>
									<footer class="align-center">
										<a href="#" class="button alt">상세보기</a>
									</footer>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
			</section>
    <%@include file="../finfo/footer.jsp"%>
</body>
</html>