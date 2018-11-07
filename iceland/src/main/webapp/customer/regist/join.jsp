<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home</title>
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

    <!-- 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Sunflower:300" rel="stylesheet">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
 <link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/customer/regist/regist.css">
</head>
<body class="animsition">
	
	
<%--  <jsp:include page="includes/header.jsp"/> --%>
 <%@include file="../../includes/header.jsp"%>

<%@include file="../../includes/cart.jsp"%>

<%@include file="../../includes/slider.jsp"%>
	
  
    <!-- Banner -->
  <div class="sec-banner bg0 p-t-80 p-b-50">
    <div class="container">
      <div class="row">
        
            <div class="logo">
            <img src="/iceland/images/icons/logo-01.png">
            
            </div>
            
            <form action="/iceland/customer/regist.es" method="POST" class="form login">
            <ul>
              <li>
                <div class="form__label">
                    <h4>아이디</h4></div>
                <div class="form__field">
                    <label for="login__username">
                        <svg class="icon">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#user"></use>
                        </svg><span class="hidden">Username</span></label>
                    <input id="login__userid" type="text" name="userid" class="form__input" placeholder="이쁜 아이디 입력" required> 
                    <input class="checkbtn" type="button" value="중복검사">
                </div>
                </li>
                
              <li>
                <div class="form__label"><h4>비밀번호</h4></div>
                <div class="form__field">
                    <label for="login__password">
                        <svg class="icon">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#lock"></use>
                        </svg><span class="hidden">Password</span></label>
                    <input id="login__password" type="password" name="password" class="form__input" placeholder="Password" required> </div>
                    </li>
                
                
               <li>
                <div class="form__label"><h4>비밀번호 확인</h4></div>
                <div class="form__field">
                    <label for="login__password__confirm">
                        <svg class="icon">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#lock"></use>
                        </svg><span class="hidden">PasswordConfirm</span></label>
                    <input id="login__password__confirm" type="password" name="passwordConfirm" class="form__input" placeholder="Password" required> </div>
              </li>
                
              <li>
                <div class="form__label"><h4>이름</h4></div>
                <div class="form__field">
                    <label for="userName">
                        <svg class="icon">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#user"></use>
                        </svg><span class="hidden">userName</span></label>
                    <input id="login__userName" type="text" name="userName" class="form__input" placeholder="userName" required> </div>
              </li>
              
               <li>
                <div class="form__label"><h4>휴대폰번호</h4></div>
                <div class="form__field">
                    <label for="userName">
                        <svg class="icon">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#user"></use>
                        </svg><span class="hidden">userName</span></label>
                    <input id="login__userName" type="text" name="userPhone" class="form__input" placeholder="휴대폰번호" required> </div>
              </li>
                
          	 <li>  
             <div class="form__label"><h4>생년월일</h4></div>
                <div class="form__field">
                    <label for="email">
                        <svg class="icon">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#user"></use>
                        </svg><span class="hidden">email</span></label> 
                    <input id="birth" type="text" name="birth" class="form__input" placeholder="생년월일" required> </div>
              </li>
              
            <li>    
               <div class="form__label"><h4>성별</h4></div>
                <div class="form__field">
                    <select name="gender">
                        <option selected>선택</option>
                        <option>남자</option>
                        <option>여자</option>
                    </select>
                        </div>
            </li>
            
             <li>
                <div class="form__label"><h4>이메일</h4></div> 
                <div class="form__field">
                    <label for="email">
                        <svg class="icon">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#lock"></use>
                        </svg><span class="hidden">email</span></label>
                    <input id="email" type="text" name="email" class="form__input" placeholder="이메일" required><label>@</label>
                    <select name="emailHost" id="emailHost">
                        <option selected>선택</option>
                        <option>naver.com</option>
                        <option>daum.net</option>
                        <option>google.com</option>
                        <option>직접입력</option>
                    </select>


                    </div>
                        <div class="form__field">
                          <input type="text">
                          <!-- 
						  이메일 인증을 위한 비동기 통신용 버튼
                           -->
                          <button type="button" class="checkbtn" id="emailCertify" onclick="send()">이메일 인증</button>
                    </div>
                </li>
                
              <li>
                <div class="form__label"><h4>주소</h4></div>
                <div class="form__field">  
                    <label for="address">
                        <svg class="icon">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#lock"></use>
                        </svg><span class="hidden">email</span></label>
                    <input id="postNum" type="text" name="postNum" class="form__input" placeholder="우편번호" required> 
                    <input type="button" class="checkbtn" value="주소찾기" onclick="sample2_execDaumPostcode()">
                </div>
                
             <div class="form__field">
                  <input id="address" type="text" name="roadAddress" class="form__input" placeholder="도로명 주소" required>
                        <input id="detail_address" type="text" name="detailAddress" class="form__input" placeholder="상세주소">
                    </div>
                </li>    
               <br>
               <li class="addtional_info">
              <div class="form__label"><h3>추가정보 입력</h3></div>
               </li>
               <br>
              <li class="addtional_info">
                <div class="form__label">
                    <h4>상의사이즈</h4></div>
                <div class="form__field">
                    <select name="jacketSize">
                        <option selected>선택해주세요.</option>
                        <option>90(S)</option>
                        <option>95(M)</option>
                        <option>100(L)</option>
                        <option>105(LX)</option>
                    </select>
                </div>     
                </li>
                
               <li class="addtional_info">
                <div class="form__label">
                    <h4>하의사이즈</h4></div>
                <div class="form__field">
                    <select name="pantsSize">
                        <option selected>선택해주세요.</option>
                        <option>26</option>
                        <option>28</option>
                        <option>30</option>
                        <option>32</option>
                        <option>34</option>
                    </select>
                </div>     
                </li>
                
              <li class="addtional_info">
                <div class="form__label">
                    <h4>키(신장)</h4></div>
                <div class="form__field">
                    <select name="height">
                        <option selected>선택해주세요.</option>
                        <option>155이상 ~ 160미만</option>
                        <option>160이상 ~ 165미만</option>
                        <option>165이상 ~ 170미만</option>
                        <option>170이상 ~ 175미만</option>
                        <option>175이상 ~ 180미만</option>
                        <option>180이상 ~ 185미만</option>
                        <option>185 이상</option>
                    </select>
                </div>     
                </li>
                
               </ul>
               <div class="form__field">
                    <input type="submit" value="Sign In"> </div>
            </form>
            

            
        <svg xmlns="http://www.w3.org/2000/svg" class="icons">
            <symbol id="arrow-right" viewBox="0 0 1792 1792">
                <path d="M1600 960q0 54-37 91l-651 651q-39 37-91 37-51 0-90-37l-75-75q-38-38-38-91t38-91l293-293H245q-52 0-84.5-37.5T128 1024V896q0-53 32.5-90.5T245 768h704L656 474q-38-36-38-90t38-90l75-75q38-38 90-38 53 0 91 38l651 651q37 35 37 90z" /> </symbol>
            <symbol id="lock" viewBox="0 0 1792 1792">
                <path d="M640 768h512V576q0-106-75-181t-181-75-181 75-75 181v192zm832 96v576q0 40-28 68t-68 28H416q-40 0-68-28t-28-68V864q0-40 28-68t68-28h32V576q0-184 132-316t316-132 316 132 132 316v192h32q40 0 68 28t28 68z" /> </symbol>
            <symbol id="user" viewBox="0 0 1792 1792">
                <path d="M1600 1405q0 120-73 189.5t-194 69.5H459q-121 0-194-69.5T192 1405q0-53 3.5-103.5t14-109T236 1084t43-97.5 62-81 85.5-53.5T538 832q9 0 42 21.5t74.5 48 108 48T896 971t133.5-21.5 108-48 74.5-48 42-21.5q61 0 111.5 20t85.5 53.5 62 81 43 97.5 26.5 108.5 14 109 3.5 103.5zm-320-893q0 159-112.5 271.5T896 896 624.5 783.5 512 512t112.5-271.5T896 128t271.5 112.5T1280 512z" /> </symbol>
        </svg>
    </div>
  </div>
</div>

<%@include file="../../includes/QuickMenu.jsp"%>

<%@include file="../../includes/footer.jsp"%>
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
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/iceland/js/address.js"></script>
<script src="/iceland/js/ajax.js"></script>
<!-- ============================================================================================== -->
	<script type="text/javascript">
		// 이메일 인증(비동기처리)을 위한 자바스크립트 코드 
		//emailCertify.addEventListener("click", send);
		
		function send(){
			var emailAdd = document.getElementById("email").value + "@" + document.getElementById("emailHost").value;
			var target; // 인증완료 확인메시지 띄울 엘리먼트
			var url = "/iceland/customer/emailCertify.es";
			ajax({
				method : "get",
				url : url,
				param : "emailAdd="+emailAdd,
				callback : setResult
			});
		}
		
		// 비동기통신 후 실행될 콜백함수
		function setResult(result){
			var emailCertifyCode = result.responseText; // 인증코드값
			alert("입력하신 이메일로 받은 인증번호를 입력해 주세요");
			
		}
	</script>
<!-- ============================================================================================== -->

</body>
</html>