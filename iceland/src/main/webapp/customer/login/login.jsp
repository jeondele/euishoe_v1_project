<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login - 로그인</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================
    페이지의 상단 아이콘 이미지
-->	
	<link rel="icon" type="image/png" href="/iceland/images/icons/favicon.png"/>
<!--===============================================================================================
    부트스트랩
-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================
    폰트어썸(폰트)
-->
	<link rel="stylesheet" type="text/css" href="/iceland/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================
    머티리얼 디자인 폰트
-->
	<link rel="stylesheet" type="text/css" href="/iceland/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================
    애니메이션
-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/animate/animate.css">
<!--===============================================================================================

-->	
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/css/util.css">
	<link rel="stylesheet" type="text/css" href="/iceland/css/main.css">
	
<!--===============================================================================================
      로그인 폼
-->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
<link rel="stylesheet" href="<%=application.getContextPath()%>/customer/login/login.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/css/toastMessage.css">
    <!-- 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Sunflower:300" rel="stylesheet">
<script type="text/javascript" src="<%= application.getContextPath() %>/js/toastMessage.js"></script>

</head>
<body class="animsition">
<%--  <jsp:include page="includes/header.jsp"/> --%>
 <%@include file="../../includes/header.jsp"%>

<%@include file="../../includes/cart.jsp"%>

<%@include file="../../includes/slider.jsp"%>

	<input type="hidden" value="${loginCookie.name}">
	<input type="hidden" value="${loginCookie.value}">
	<input type="hidden" value="${cookie.rememberCookie.name}">
	<input type="hidden" value="${cookie.rememberCookie.value}">
	<!-- Banner -->
	<div class="sec-banner bg0 p-t-80 p-b-50">
		<div class="container" id="login_main">
			<div class="row">
	
<!-- 	<div class="align">
        <div class="grid"> -->
        
          	<div>
              <div class="logo_img">
              <img src="/iceland/images/login_set.jpg">
             </div>
            </div>
        
            <div class="right_form">
                <div>
                	<h2>로그인</h2><br>
		            <h4>euishoe에 오신것을 환영합니다.</h4>
		            <c:choose>
		            <c:when test="${not empty loginCookie}">
			            <div id="snackbar"></div>
		            </c:when>
		            </c:choose>
		            
                </div>
                
            <form action="/iceland/customer/login.es" method="POST" class="form login">
                <div class="form__field">
                    <label for="login__username">
                        <svg class="icon">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#user"></use>
                        </svg><span class="hidden">Username</span></label>
                    <c:choose>
                    	<c:when test="${not empty cookie.rememberCookie}">
                    		<input id="login__username" type="text" name="username" class="form__input" placeholder="Username" value="${cookie.rememberCookie.value}" required> 
                    	</c:when>
                    	<c:otherwise>
                    		<input id="login__username" type="text" name="username" class="form__input" placeholder="Username" required>
                    	</c:otherwise>
                    </c:choose>
                </div>
                <div class="form__field">
                    <label for="login__password">
                        <svg class="icon">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#lock"></use>
                        </svg><span class="hidden">Password</span>
                    </label>
                    <input id="login__password" type="password" name="password" class="form__input" placeholder="Password" required> 
                </div>
                <div class="form__field">
                	<c:choose>
                    	<c:when test="${not empty cookie.rememberCookie}">
		                    <label id="memory_id"><input type="checkbox" checked="checked" name="idRemember"/>로그인 정보 기억</label>
                    	</c:when>
                    	<c:otherwise>
                    		<label id="memory_id"><input type="checkbox" name="idRemember"/>로그인 정보 기억</label>
                    	</c:otherwise>
                    </c:choose>
                </div>
                <div class="form__field">
                    <input type="button" value="HOME">
                    <input type="submit" value="Sign In">
                </div>
            </form>
            
            
            <br>
            <p class="text--center">회원이 아니세요? <a href="/iceland/customer/regist/join.jsp">지금 가입!</a>
                <svg class="icon">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/images/icons.svg#arrow-right"></use>
                </svg>
            </p>
            <p class="text--center"><a href="/iceland/../searchPassword/searchPassword.html">아이디/비밀번호 찾기</a>
                <svg class="icon">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/images/icons.svg#arrow-right"></use>
                </svg>
            </p>
        </div>
            
    </div>
    
        <svg xmlns="http://www.w3.org/2000/svg" class="icons">
            <symbol id="arrow-right" viewBox="0 0 1792 1792">
                <path d="M1600 960q0 54-37 91l-651 651q-39 37-91 37-51 0-90-37l-75-75q-38-38-38-91t38-91l293-293H245q-52 0-84.5-37.5T128 1024V896q0-53 32.5-90.5T245 768h704L656 474q-38-36-38-90t38-90l75-75q38-38 90-38 53 0 91 38l651 651q37 35 37 90z" />
            </symbol>
            <symbol id="lock" viewBox="0 0 1792 1792">
                <path d="M640 768h512V576q0-106-75-181t-181-75-181 75-75 181v192zm832 96v576q0 40-28 68t-68 28H416q-40 0-68-28t-28-68V864q0-40 28-68t68-28h32V576q0-184 132-316t316-132 316 132 132 316v192h32q40 0 68 28t28 68z" />
            </symbol>
            <symbol id="user" viewBox="0 0 1792 1792">
                <path d="M1600 1405q0 120-73 189.5t-194 69.5H459q-121 0-194-69.5T192 1405q0-53 3.5-103.5t14-109T236 1084t43-97.5 62-81 85.5-53.5T538 832q9 0 42 21.5t74.5 48 108 48T896 971t133.5-21.5 108-48 74.5-48 42-21.5q61 0 111.5 20t85.5 53.5 62 81 43 97.5 26.5 108.5 14 109 3.5 103.5zm-320-893q0 159-112.5 271.5T896 896 624.5 783.5 512 512t112.5-271.5T896 128t271.5 112.5T1280 512z" />
            </symbol>
        </svg>

        </div>
    
          </div>
<!--     </div>
  </div> -->
    

<%@include file="../../includes/footer.jsp"%>

<%@include file="../../includes/QuickMenu.jsp"%>

<!--===============================================================================================-->	
	<script src="/iceland/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/bootstrap/js/popper.js"></script>
	<script src="/iceland/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/daterangepicker/moment.min.js"></script>
	<script src="/iceland/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/slick/slick.min.js"></script>
	<script src="/iceland/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="/iceland/js/main.js"></script>

</body>
<script type="text/javascript">
/* if(${cookie} == null) {
	var target = document.getElementById('snackbar');
	target.innerHTML = '로그인 실패! 계정 정보를 확인하세요!';
	toast();
} */
</script>
</html>