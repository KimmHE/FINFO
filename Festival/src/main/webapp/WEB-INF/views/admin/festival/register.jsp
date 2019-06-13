<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>F.INFO : Admin page</title>

<!-- Fontfaces CSS-->
<link href="/resources/admin/css/font-face.css" rel="stylesheet"
	media="all">
<link
	href="/resources/admin/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link
	href="/resources/admin/vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link
	href="/resources/admin/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="/resources/admin/vendor/bootstrap-4.1/bootstrap.min.css"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link href="/resources/admin/vendor/animsition/animsition.min.css"
	rel="stylesheet" media="all">
<link
	href="/resources/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link href="/resources/admin/vendor/wow/animate.css" rel="stylesheet"
	media="all">
<link href="/resources/admin/vendor/css-hamburgers/hamburgers.min.css"
	rel="stylesheet" media="all">
<link href="/resources/admin/vendor/slick/slick.css" rel="stylesheet"
	media="all">
<link href="/resources/admin/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="/resources/admin/vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="/resources/admin/css/theme.css" rel="stylesheet" media="all">
</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="index.html"> <img
							src="/resources/admin/images/icon/logo1.png" alt="Finfo"
							style="max-width: 28%;" />
						</a>
						<button class="hamburger hamburger--slider" type="button">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<nav class="navbar-mobile">
				<div class="container-fluid">
					<ul class="navbar-mobile__list list-unstyled">
						<li><a href="ulist"> <i class="far fa-user"></i>Users
						</a></li>
						<li class="active"><a href="flist"> <i
								class="fas fa-table"></i>Festival
						</a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- END HEADER MOBILE-->

		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="#"> <img src="/resources/admin/images/icon/logo1.png"
					alt="Finfo" />
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li><a href="ulist"> <i class="far fa-user"></i>Users
						</a></li>
						<li class="active"><a href="flist"> <i
								class="fas fa-table"></i>Festival
						</a></li>
					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<header class="header-desktop">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="header-wrap">
							<form class="form-header" action="" method="POST">
								<input class="au-input au-input--xl" type="text" name="search"
									placeholder="Search" />
								<button class="au-btn--submit" type="submit">
									<i class="zmdi zmdi-search"></i>
								</button>
							</form>
							<div class="header-button">
								<div class="account-wrap">
									<div class="account-item clearfix js-item-menu">
										<div class="image">
											<img src="/resources/admin/images/icon/avatar-01.jpg"
												alt="John Doe" />
										</div>
										<div class="content">
											<a class="js-acc-btn" href="#">john doe</a>
										</div>
										<div class="account-dropdown js-dropdown">
											<div class="info clearfix">
												<div class="image">
													<a href="#"> <img
														src="/resources/admin/images/icon/avatar-01.jpg"
														alt="John Doe" />
													</a>
												</div>
												<div class="content">
													<h5 class="name">
														<a href="#">john doe</a>
													</h5>
													<span class="email">johndoe@example.com</span>
												</div>
											</div>
											<div class="account-dropdown__footer">
												<a href="#"> <i class="zmdi zmdi-power"></i>로그아웃
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- END HEADER DESKTOP-->

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-6">
								<!-- USER DATA-->
								<div class="user-data m-b-30">
									<h3 class="title-3 m-b-30">
										<i class="fas fa-table"></i>페스티벌 등록
									</h3>
									<div class="table-responsive table-data">
										<table class="insertTable">
											<tr>
												<th>이름</th>
												<td><input type="text" id="f_SUBJECT" name="f_SUBJECT"
													placeholder="FESTIVAL NAME" /></td>
											</tr>
											<%--  <tr>
												<th>부 제목</th>
												<td><input type="text" id="f_SUBTITLE"
													name="f_SUBJTITLE" placeholder="FESTIVAL SUBTITLE" /></td>
											</tr>
											--%>
											<tr>
												<th>시작 일</th>
												<td><input type="date" id="f_START" name="f_START" /></td>
											</tr>
											<tr>
												<th>마감 일</th>
												<td><input type="date" id="f_END" name="f_END" /></td>
											</tr>
											<tr>
												<th>장소</th>
												<td><input type="text" id="f_PLACE" name="f_PLACE"
													placeholder="FESTIVAL PLACE" /></td>
											</tr>
											<tr>
												<th>해시태그1</th>
												<td><input type="text" id="f_TAG1" name="f_TAG1"
													placeholder="FESTIVAL TAG1" /></td>
											</tr>
											<tr>
												<th>해시태그2</th>
												<td><input type="text" id="f_TAG2" name="f_TAG2"
													placeholder="FESTIVAL TAG2" /></td>
											</tr>
											<tr>
												<th>장르</th>
												<td><select class="category">
														<option value="">전체</option>
												</select></td>
											</tr>
											<tr>
												<th>썸네일</th>
												<td><input type="file" id="f_THUMBNAIL"
													name="f_THUMBNAIL" /></td>
											</tr>
											<tr>
												<th>상세 설명</th>
												<td><textarea id="f_DESC" name="f_DESC"
														placeholder="FESTIVAL DESCRIPTION"></textarea></td>
											</tr>
											<tr>
												<th>이미지</th>
												<td><input type="file" id="f_IMGURL" name="f_IMGURL" /></td>
											</tr>
											<tr>
												<th>웹 URL</th>
												<td><input type="text" id="f_URL" name="f_URL"
													placeholder="FESTIVAL WEB SITE" /></td>
											</tr>
											<tr>
												<th>가격</th>
												<td><input type="text" id="f_SHOWLOWERPRICE"
													name="f_SHOWLOWERPRICE" placeholder="FESTIVAL PRICE" /></td>
											</tr>
											<tr>
												<th>진행상태</th>
												<td><input type="radio" id="f_STATE1" name="f_STATE"
													value="1" checked> <label for="f_STATE1">예정</label>
													<input type="radio" id="f_STATE2" name="f_STATE" value="2">
													<label for="f_STATE2">진행</label> <input type="radio"
													id="f_STATE3" name="f_STATE" value="3"> <label
													for="f_STATE3">마감</label></td>
											</tr>
											<!-- END USER DATA-->
											<tr>
												<td colspan="2"><button class="au-btn--submit insert-btn" type="submit">
														등록</button></td>
											</tr>
										</table>
									</div>

								</div>
							</div>
							<div class="col-md-12">
								<div class="copyright">
									<p>&copy; 2019 SEOIL COMPUTER-SOFTWARE(4) ALL RIGHT
										RESERVED.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script src="/resources/admin/vendor/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap JS-->
	<script src="/resources/admin/vendor/bootstrap-4.1/popper.min.js"></script>
	<script src="/resources/admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script src="/resources/admin/vendor/slick/slick.min.js">
		
	</script>
	<script src="/resources/admin/vendor/wow/wow.min.js"></script>
	<script src="/resources/admin/vendor/animsition/animsition.min.js"></script>
	<script
		src="/resources/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
	</script>
	<script
		src="/resources/admin/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script
		src="/resources/admin/vendor/counter-up/jquery.counterup.min.js">
		
	</script>
	<script
		src="/resources/admin/vendor/circle-progress/circle-progress.min.js"></script>
	<script
		src="/resources/admin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="/resources/admin/vendor/chartjs/Chart.bundle.min.js"></script>
	<script src="/resources/admin/vendor/select2/select2.min.js">
		
	</script>

	<!-- Main JS-->
	<script src="/resources/admin/js/main.js"></script>

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
					"<option value='" +genreArr[i].g_NO +"'>"
							+ genreArr[i].g_NAME + "</option>");
		}
	</script>
</body>
</html>