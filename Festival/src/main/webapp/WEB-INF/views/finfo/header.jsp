<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>F.INFO : Festival Info</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/resources/styles/main.css" />  <!-- 메인 부트스트랩 스타일 -->
		<link rel="stylesheet" href="/resources/styles/main2.css" /> <!-- 헤더스타일 -->
		<link rel="stylesheet" href="/resources/styles/main3.css" /> <!-- DDP리스트 스타일 -->
		
		<style type="text/css">
 			.music a:link { color: #ffffff; text-decoration: none;}
 			.music a:visited { color: #ffffff; text-decoration: none;}
			.music a:hover { color: #ffffff; text-decoration: none;}
		</style>


	</head>
	<body>
			<header id="header">
				<nav class="left">
					<a href="#menu"><span>Menu</span></a>
				</nav>
				<div class="logo"><img src="/resources/images/logo1.png" style="padding-top: 1.5%;width: 13%;">
				</div>
				<!--  <a href="index.html" class="logo">intensify</a>-->
				<nav class="right">
					<a href="login">Login</a>
				</nav>
			</header>
		

			<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="#">마이페이지</a></li>
					<li><a href="/festival/listPage">페스티벌</a>
						<ul class="music">
							<li><a href="#">K-POP</a></li>
							<li><a href="#">락앤롤</a></li>
							<li><a href="#">클래식</a></li>
						</ul>
					</li>
					<li><a href="#">Elements</a></li>
				</ul>
			</nav>
			
			
			
			
    