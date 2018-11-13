<%@page import="org.apache.log4j.Logger"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tt" uri="/WEB-INF/tlds/fordecode.tld"%> 
<script>
function replaceAll(str, searchStr, replaceStr) {
	return str.split(searchStr).join(replaceStr);
}
/*
 * 쿠키 세팅,가져오기
 */
var setCookie = function(name, value, exp) {
	  var date = new Date();
	  date.setTime(date.getTime() + exp*24*60*60*1000);
	  document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/iceland/';
	};

var getCookie = function(name) {
	  var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
	  return value? value[2] : null;
	};
	
	function getQuerystring(paramName){ 
		var _tempUrl = window.location.search.substring(1);//url에서 처음부터 '?'까지 삭제 
			var _tempArray = _tempUrl.split('&'); // '&'을 기준으로 분리하기 
			for(var i = 0; _tempArray.length; i++) {
				var _keyValuePair = _tempArray[i].split('='); // '=' 을 기준으로 분리하기 
			if(_keyValuePair[0] == paramName){ // _keyValuePair[0] : 파라미터 명 // _keyValuePair[1] : 파라미터 값 
				return _keyValuePair[1];
			} 
		} 
	} 
	function setCountCartList(){
		var num = 1;
		while(getCookie('cart' + num)){
		        num++;
		}
		$('#cartButton').attr('data-notify',num - 1);
		
	}
</script>
<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						
					</div>

					<div class="right-top-bar flex-w h-full">
						<c:choose>
   							<c:when test="${not empty cookie.loginId}">
   								<span style="color: white; vertical-align:middle">
   								${tt:testDecode(cookie.userName.value)} 고객님 환영합니다!</span>
   							</c:when>
   							<c:otherwise></c:otherwise>
  						</c:choose>
					
						<a href="#" class="flex-c-m trans-04 p-lr-25">
							Help & FAQs
						</a>
						
						<c:choose>
							<c:when test="${not empty cookie.loginId}">
								<a href="/iceland/customer/logout.es" class="flex-c-m trans-04 p-lr-25">
									로그아웃
								</a>
							</c:when>
							<c:otherwise>
								<a href="/iceland/customer/login.es" class="flex-c-m trans-04 p-lr-25">
									로그인
								</a>
								<a href="/iceland/customer/regist.es" class="flex-c-m trans-04 p-lr-25">
									회원가입
								</a>
							</c:otherwise>
						</c:choose>	

						<a href="/iceland/customer/mypage.es" class="flex-c-m trans-04 p-lr-25">
							MyPage
						</a>
						<a href="/iceland/customer/customizing/customizing.jsp" class="flex-c-m trans-04 p-lr-25">
							Customizing
						</a>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="/iceland/home.es" class="logo">
						<img src="/iceland/images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="/iceland/home.es">Home</a>
							</li>

							<li>
								<a href="/iceland/product.es">Shop</a>
							</li>

							<li class="label1" data-label1="hot">
								<a href="/iceland/order.es">Features</a>
							</li>

							<li>
								<a href="blog.html">Blog</a>
							</li>

							<li>
								<a href="about.html">About</a>
							</li>

							<li>
								<a href="/iceland/customer/mypage/mypage.jsp">Contact</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
                        <form style="display: inherit;">
                        <input type="text" style="border: 1px solid black;"/>
                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11">
							<i class="zmdi zmdi-search"></i>
						</div>
                            </form>
                        <!--mobile-->
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search" style="display: none;">
							<i class="zmdi zmdi-search"></i>
						</div>

						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" id="cartButton" data-notify="2">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-favorite" id="wishButton" data-notify="2">
							<i class="zmdi zmdi-favorite-outline"></i>
						</div>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="../index.jsp"><img src="/iceland/images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						Free shipping for standard order over $100
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m p-lr-10 trans-04">
							Help & FAQs
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							My Account
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							EN
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							USD
						</a>
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="../index.jsp">Home</a>
					<ul class="sub-menu-m">
						<li><a href="../index.jsp">Homepage 1</a></li>
						<li><a href="home-02.html">Homepage 2</a></li>
						<li><a href="home-03.html">Homepage 3</a></li>
					</ul>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="/iceland/product/product.jsp">Shop</a>
				</li>

				<li>
					<a href="/iceland/order/shoping-cart.jsp" class="label1 rs1" data-label1="hot">Features</a>
				</li>

				<li>
					<a href="blog.html">Blog</a>
				</li>

				<li>
					<a href="about.html">About</a>
				</li>

				<li>
					<a href="contact.html">Contact</a>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="/iceland/images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>