<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>my page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="/iceland/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/iceland/css/util.css">
<link rel="stylesheet" type="text/css" href="/iceland/css/main.css">
<!--===============================================================================================-->



<style>
.my_cont {
	position: relative;
	z-index: 30;
}

.my_container {
	font-family: '나눔고딕', NanumGothic, '맑은고딕', MalgunGothic, '돋움', Dotum,
		Helvetica, sans-serif;
}

.member_sc {
	position: relative;
	margin: -1px 0 0 -1px;
	padding-top: 27px;
	background: #bbbfc3;
	z-index: 20;
}

.my_aside {
	float: left;
	width: auto;
}

.my_nav .lst dt {
	font-size: 18px;
	color: #222;
	margin-top: 23px;
	padding: 21px 0 0 6px;
	border-top: 1px solid #eaebec;
}

.home_info {
	position: relative;
	height: 180px;
	margin: -40px -40px 0 20%;
	padding: 34px 0 35px;
	border-bottom: 1px solid #e5e5e5;
	background: #f7f8f8;
	z-index: 30;
}

.home_info .lst {
	zoom: 1;
}

.home_info .lst li {
	position: relative;
	float: left;
	width: 170px;
	height: 141px;
	border-left: 1px solid #e2e2e2;
	text-align: center;
}

.home_info .lst .lnk {
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	cursor: pointer;
}

.myInfoHeader {
	text-align: center;
	color: #007bff;
	height : 40px;
	border-top: 2px;
}

.myInfoContent {
	height : 80px;
	border-bottom : 2px;
}

#myInfoUpdateTable {
	width: 100%;
	border-left: none;
	border-right: none;
	border-top: 2px;
	border-bottom: 2px;
}

.myInfoText {
    display: inline;
	width : 31%;
	height : 40px;
}

.myInfoEmailText {
    display: inline;
	width : 28%;
	height : 40px;
}


.myInfoButton {
	display: inline;
	width: 163px;
	height: 40px;
	text-align: center;
}

.myInfoButtonWrap {
	text-align: center;
}

#emailHostField {
	width: 20%;
	height: 40px;
}

#myInfoEmailTextField {
	width: 20%;
	hegith: 40px;
}

#myInfoPostCodeTextField {
	width: 20%;
	height: 40px;
}
#myInfoStreetAddressTextField, #myInfoDetailAddressTextField {
	width: 30%;
	height: 40px;
}


body{
  font-family: 'Roboto','나눔고딕','Nanum Gothic','맑은고딕','Malgun Gothic','돋움',Dotum,AppleGothic,sans-serif;
  margin-left : auto;
  margin-right: auto;
}

/* 회원안내  */
.xans-myshop-asyncbenefit{
  margin: 0 0 20px;
  color: #353535;
}

.ec-base-box.typeMember.gMessage{
  border-width: 1px;
  border-color: #d7d5d5;
}

.ec-base-box.typeMember .information{
  display: table;
  table-layout: fixed;
  padding: 10px 0;
  width: 100%;
  box-sizing: border-box;
}


.ec-base-box.typeMember .information > .title, .ec-base-box.typeMember .information > .thumbnail{
  display: table-cell;
  padding : 0 15px;
  width: 70px;
  text-align: center;
  vertical-align: middle;
}

.ec-base-box.typeMember .information > .thumbnail img{
  max-width: 70px;
}

.ec-base-box.typeMember.gMessage{border-width: 1px; border-color: #d7d5d5;}
.ec-base-box.typeMember .information .description{
  display: table-cell;
  padding: 0 10px;
  width: auto;
  line-height: 1.5em;
  border-left: 1px solid #e8e8e8;
  vertical-align: middle;
}
/* 회원정보 수정  */
#-common{
  position: relative;
  width: 100%;
  margin: 20px 0 100px;
}

.ec-base-table table{
  position: relative;
  margin: 0 0 0 0;
  border: 1px solid #d7d5d5;
  border-left: 0;
  border-right: 0;
  border-top-color: #fff;
  color: #fff;
  line-height: 1.5;
}

.ec-base-table tbody th{
  color: #007bff;
  text-align: center;
  font-weight: normal;
  background-color: white;
  border-left: none;
  border-right: none;
  height: 55px;
}

.ec-base-table td{
  padding: 11px 10px 10px;
  color: #353535;
  vertical-align: middle;
  border-left: none;
  border-right: none;
  height: 55px;
}

.ec-base-table.typeWrite td{
  padding: 8px 0px 7px; 
}

input[type='text'], input[type='password'], select{
  padding: 0 10px;
  height: 28px;
  line-height: 28px;
  border: 1px solid #ddd;
  vertical-align: middle;
  box-sizing: border-box;
}

.ec-base-layer{
  position: absolute;
  z-index: 100;
  border: 1px solid #757575;
  background: #fff;
}

.ec-base-button.justify{
  position: relative;
}

.ec-base-button{
  padding: 10px 0;
  text-align: center;
}

.ec-base-button.justify .gRight{
  position:absolute;
  right: 0; 
}

.ec-base-button .gRight{
  float: right;
  text-align: right;
}

.xans-member-edit .layerLeave{
  position: fixed;
  top: 50%;
  left: 50%;
  z-index: 1000;
  width: 600px;
  margin: -205px 0 0 -300px;
  display: none;
}

.xans-member-edit #postcode1, .xans-member-edit #postcode2{
  width: 100px;
  text-align: center;
}

.xans-member-edit #addr1, .xans-member-edit #addr2{
  width: 280px;
  margin : 5px 0 0;
}

.xans-member-edit #phone2, .xans-member-edit #phone3, .xans-member-edit #mobile2, .xans-member-edit #mobile3{
  width: 50px;
  margin: 0 4px;
}

.xans-member-edit #email1{
  margin-right: 4px;
}

.xans-member-edit #email2{
  margin: 0 4px; 
}

.xans-member-edit .required{
  margin : -25px 0 10px;
  color: #353535;
  text-align: right;
}

.ec-base-box{
  padding: 20px;
  margin-left: auto;
  margin-right: auto;
  border: 5px solid #e8e8e8;
  color: #404040;
}

.ec-base-table .typeWrite{
  margin-left : 10%;
  padding: 0%;
}

#addr1, #addr2 {
	width: 45%;
	height:28px;
	display: inline;
}

#postcode1 {
	height:28px;
	display: inline;
}

#mobile1, #mobile2, #mobile3 {
	height:40px;
	width: 50px;
	display: inline;
}

#birth, #is_solar_calendar0, #is_solar_calendar1 {
	height:28px;
	display: inline;
}

#email1, #email2, #email3 {
	vertical-align: middle;
	height:28px;
	width: 22%;
	display: inline;
}

#myInfoTable {
	border-left: none;
	border-right: none;
}

#myInfoTable > th * {
	color: #0056b3;
}
</style>




</head>
<body class="animsition">

	<%@include file="../../includes/header.jsp"%>

	<%@include file="../../includes/cart.jsp"%>

	<%@include file="../../includes/slider.jsp"%>

	<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<div class="m-l--200 row">
				<!-- mypage의 nav -->
				<%@include file="../../includes/mypage-nav.jsp"%>
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l--200 m-r--300 m-lr-0-xl">
						<div class="-frame">
							<div class="wrap-table-shopping-cart">
						        <form id="editForm" name="editForm" action="/exec/front/Member/edit/" method="post" enctype="multipart/form-data">
         
            
          <div class="xans-element- xans-member xans-member-edit">
            <!-- $login_page = /member/login.html -->
          
            <div class="ec-base-table typeWrite">
              <table border="1" summary="" id="myInfoTable" class="table-shopping-cart">
                <colgroup>
                  <col style="width: 150px;">
                  <col style="width: auto;">
                </colgroup>
                
                <tbody>
                  <tr class="table_head">
					<th style="background-color: white;">회원정보수정</th>
					<td></td>
				  </tr>
                  <tr>
                    <th scope="row" class="myInfoHeader">아이디</th>
                    <td>
                    	<input id="member_id" name="member_id" class="inputTypeText" readonly="readonly"  type="text">
                    </td>
                  </tr>
                  <tr>
                    <th scope="row" class="myInfoHeader">비밀번호</th>
                    <td>
                    	<input id="passwd" name="passwd" class="myInfoText" autocomplete="off" maxlength="16" value="" type="password" placeholder="공백일 경우, 기존 비밀번호로 저장">
                    </td>
                  </tr>
                  <tr class="displaynone">
                    <th scope="row" class="myInfoHeader">새 비밀번호</th>
                    <td>
                    	<input id="new_passwd" class="myInfoText" name="new_passwd" maxlength="16" value="" type="password" placeholder="공백일 경우, 기존 비밀번호로 저장">
                    </td>
                  </tr>
                  <tr class="displaynone">
                    <th scope="row" class="myInfoHeader">새 비밀번호 확인</th>
                    <td>
                      <input id="new_passwd_confirm" name="new_passwd_confirm" maxlength="16" value="" type="password"> 
                      <span id="new_pwConfirmMsg"></span>
                    </td>
                  </tr>
                  <tr style="display:">
                    <th scope="row" class="myInfoHeader">이름</th>
                    <td>
                      <input id="name" name="name" class="ec-member-name" placeholder="" maxlength="30" readonly="readonly" value="" type="text">
                    </td>
                  </tr>
                  
                  <tr class="">
                    <th scope="row" class="myInfoHeader">주소</th>
                    <td>
                      <input id="postcode1" name="postcode1" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text">
                      <button class="flex-c-m stext-101 cl2 size-210-1 bg8 bor14 hov-btn3 p-lr-5 trans-04 pointer myInfoButton">주소찾기</button><br> 
                      <input id="addr1" name="addr1"  class="inputTypeText" placeholder="도로명주소" readonly="readonly" value="" type="text"> 
                      <input id="addr2" name="addr2" class="inputTypeText" placeholder="상세주소" value="" type="text">
                    </td>
                  </tr>

                  <tr class="">
                    <th scope="row" class="myInfoHeader">휴대전화</th>
                    <td>
                        <input id="mobile" name="mobile[]" maxlength="11" readonly="readonly" value="" type="text">
                    </td>
                  </tr>
                  
                  <tr>
                  	<th scope="row" class="myInfoHeader">생년월일</th>
                  	<td>
                  		<input id="birth" name="birth_year" class="inputTypeText" placeholder="" maxlength="8" readonly="readonly" value="" type="text">&nbsp;&nbsp;
                      	
                  	</td>
                  </tr>
                  
                  <tr>
                    <th scope="row" class="myInfoHeader">이메일</th>
                    <td>
                    	<input id="email1" name="email1" class="mailId" value="" type="text">
                    	@<input id="email2" name="email2" class="mailAddress" readonly="readonly" value=""type="text">
                      	<select id="email3">
	                        <option value="" selected="selected">-
	                          이메일 선택 -</option>
	                        <option value="naver.com">naver.com</option>
	                        <option value="daum.net">daum.net</option>
	                        <option value="nate.com">nate.com</option>
	                        <option value="hotmail.com">hotmail.com</option>
	                        <option value="yahoo.com">yahoo.com</option>
	                        <option value="empas.com">empas.com</option>
	                        <option value="korea.com">korea.com</option>
	                        <option value="dreamwiz.com">dreamwiz.com</option>
	                        <option value="gmail.com">gmail.com</option>
	                        <option value="etc">직접입력</option>
                    	</select>&nbsp;&nbsp;<button class="flex-c-m stext-101 cl2 size-210-1 bg8 bor14 hov-btn3 p-lr-5 trans-04 pointer myInfoButton">이메일 인증</button>
                    <span id="emailMsg"></span>
                  	</td>
                  </tr>
                </tbody>
              </table>
              <br>
            </div>
   		</div>
              <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm myInfoButtonWrap">
	              <input type="submit" class="flex-c-m stext-101 cl2 size-210-1 bg8 bor14 hov-btn3 p-lr-5 trans-04 pointer myInfoButton" value="수정">&nbsp;&nbsp;
    	          <button class="flex-c-m stext-101 cl2 size-210-1 bg8 bor14 hov-btn3 p-lr-5 trans-04 pointer myInfoButton">취소</button>
              </div>
        </form>
           </div>
      </div>
    </div>
  </div>
				</div>
			</div>
	</div>

	<%@include file="/iceland/../includes/footer.jsp"%>

	<%@include file="/iceland/../includes/QuickMenu.jsp"%>

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
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
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
	<script
		src="/iceland/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="/iceland/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="/iceland/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').html();

					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to cart !", "success");
					});
				});
	</script>
	<!--===============================================================================================-->
	<script
		src="/iceland/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="/iceland/js/main.js"></script>

</body>
</html>