<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<!-- Footer -->
			<footer id="footer">
				<div class="container">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
					</ul>
				</div>
				
				<nav class="footer_nav">
						<ul>
							<li><a href="index.html">home</a></li>
							<li><a href="categories.html">festival</a></li>
							<li><a href="contact.html">contact</a></li>
						</ul>
				</nav>
				<div class="copyright">
					&copy; 2019 SEOIL COMPUTER-SOFTWARE(4) ALL RIGHT RESERVED
				</div>
			</footer>
			
			
			<!-- Scripts -->
			<script src="../resources/js/jquery.min.js"></script>
			<script src="../resources/js/jquery.scrollex.min.js"></script>
			<script src="../resources/js/skel.min.js"></script>
			<script src="../resources/js/util.js"></script>
			<script src="../resources/js/main3.js"></script>
			

			<script type="text/javascript">
				$(document).ready(function(){
					$(".logo").on("click", function(){
						self.location = "/finfo/main";
					});
					
					
					//로그인창 js
					$('.message a').click(function(){
						   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
					});
				});
			</script>
	</body>
</html>



    