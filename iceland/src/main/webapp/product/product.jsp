<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.google.gson.Gson" %>
<%@ taglib prefix="tt" uri="/WEB-INF/tlds/fordecode.tld"%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Product</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<script src="/iceland/vendor/jquery/jquery-3.2.1.min.js"></script>
	<link rel="icon" type="image/png" href="/iceland/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/iceland/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/animate/animate.css">
<!--===============================================================================================-->	
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
<!--===============================================================================================-->	
	
<!--===============================================================================================-->
<!--===============================================================================================-->
</head>
<body class="animsition">
	
<%@include file="../../includes/header.jsp"%>
<script type="text/javascript">



function setCountCartList(){
	var num = 1;
	while(getCookie('cart' + num)){
	        num++;
	}
	$('#cartButton').attr('data-notify',num - 1);
	
}

  function sumToMakeJson(){
    var prior = 1;
    while(getCookie('cart' + prior)){
        prior++;
    }
    
    console.log(prior);
    
    var productName = $('#addCart').parents()[3].childNodes[1].innerText;
    var productImg = $('#productImg')[0].src
    var productCount = parseInt(document.getElementsByName('num-product')[0].value);
    var productPrice = parseInt($('#productPrice').text().trim().substring(2,$('#productPrice').text().trim().length - 2));
    var productNum = parseInt($('#productNum').val());
    // 객체 생성
    var data = new Object();
    // String으로 index.jsp 내 객체
    data.image_ref = productImg;
    data.PRODUCT_PRICE = productPrice;
    data.product_count = productCount;
    data.PRODUCT_NAME = productName ;
    data.PRODUCT_NUM = productNum;
     
    // 리스트에 생성된 객체 삽입
    var arrayCookie = '"' + encodeURIComponent(JSON.stringify(data)) + '"';
    setCookie('cart' + prior,arrayCookie,1);
    
    $('#cartButton').attr('data-notify',parseInt($('#cartButton').attr('data-notify')) + 1)
    
        
    var str = "";
        
    str += '<li class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img cart" value=' + prior + '>';
    str += '<img class="cartItems" src="' + productImg + '" alt="IMG"></div><div class="header-cart-item-txt p-t-8">';
    str += '<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">' + productName + '</a>'
    str += '<span class="header-cart-item-info">' + productCount + ' x ' + productPrice + '</span></div></li>';        
    $('#miniCarts').append(str);
          
    //checksum += jsonObj.product_count * jsonObj.PRODUCT_PRICE;
    
    //$('.header-cart-total')[0].innerText = ("Total: " + checksum) + '원';
   
    $('.header-cart-item-img.cart').unbind("click").on('click',function(e){
    	/*if(doubleSubmitCheck()) return;*/

        console.log(this);
        Test2 = this;
        console.log(e);
        Test = e;
        console.log($(e.currentTarget).attr('value'));
        
        var deleteNum = parseInt($(e.currentTarget).attr('value'));
        setCookie('cart' + deleteNum,'',0);
        
        // 지운 후 정렬 
        var testNum = deleteNum + 1;
        
        while(getCookie('cart' + testNum)){
            testNum++;
        }
        console.log(testNum);
        
        for(var i = deleteNum + 1; i < testNum; i++){
            console.log(i);
            setCookie('cart' + (i-1),getCookie('cart' + i),1);
            if(i == testNum - 1){
                setCookie('cart' + i,'',0);
            }
        }
        
        $(e.currentTarget).parents()[0].remove();
        setCountCartList();
    });
}
</script>    

<%@include file="../../includes/cart.jsp"%>
<%@include file="..//../includes/favorite.jsp"%>
<%@include file="../../includes/slider.jsp"%>

	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<div class="flex-w flex-sb-m p-b-52">
<!-- 				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
						전체
					</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".women">
						뷰티
					</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".men">
						헬스
					</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".bag">
						간편식
					</button>
				</div> -->

				<div class="flex-w flex-c-m m-tb-10">
					<div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
						<i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
						<i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						 Filter
					</div>

					<div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
						<i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Search
					</div>
				</div>
				
				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>

						<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="Search">
					</div>	
				</div>

				<!-- Filter -->
				<!-- Filter -->
            <div class="dis-none panel-filter w-full p-t-10">
               <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
                  <div class="filter-col1 p-r-15 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">By T.P.O</div>
                     <ul>
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">전체</a>
                        </li>
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">하객용</a>
                        </li>
                        
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">상견례용</a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">면접용</a>
                        </li>
                        
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">데이트용</a>
                        </li>
                     </ul>
                     <br>
                     <div class="mtext-102 cl2 p-b-15">By Season</div>
                     <ul>
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">사계절(All Season)</a>
                        </li>
                        
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">봄(Spring)</a>
                        </li>
                        
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">여름(Summer)</a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">가을(Fall)</a>
                        </li>
                        
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">겨울(Winter)</a>
                        </li>
                     </ul>
                     
                  </div>

                  <div class="filter-col2 p-r-15 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">By Price</div>

                     <ul>
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">전체(All Price)</a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">50,000 ~ 100,000 원대</a>
                        </li>
                        
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">100,000 ~ 150,000 원대</a>
                        </li>
                        
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">150,000 ~ 200,000 원대</a>
                        </li>
                        
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">200,000 원 이상</a>
                        </li>
                        
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">낮은 가격 순</a>
                        </li>
                        
                        <li class="p-b-6">
                           <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">높은 가격 순</a>
                        </li>
                     </ul>
                     <br>
                     <div class="mtext-102 cl2 p-b-15">By Fabric</div>

                        <ul>
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">전체(All Fabric)</a>
                           </li>
   
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">실크(Silk)</a>
                           </li>
                           
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">울(Wool)</a>
                           </li>
                           
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">캐시미어(Cashmere)</a>
                           </li>
                           
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">시어서커(Seersucker)</a>
                           </li>
                           
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">린넨(Linen)</a>
                           </li>
                        </ul>
                     </div>

                  <div class="filter-col3 p-r-15 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">By Color</div>
                     <ul>
                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: brown;"><i class="zmdi zmdi-circle"></i></span>
                           <a href="#" class="filter-link stext-106 trans-04" style="color: brown;">Brown</a>
                        </li>
                        
                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: black;"><i class="zmdi zmdi-circle"></i></span>
                           <a href="#" class="filter-link stext-106 trans-04" style="color: black;">Black</a>
                        </li>
                        
                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #E8E1BE;"><i class="zmdi zmdi-circle"></i></span>
                           <a href="#" class="filter-link stext-106 trans-04" style="color: #E8E1BE;">Beige</a>
                        </li>
                        
                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: gray;"><i class="zmdi zmdi-circle"></i></span>
                           <a href="#" class="filter-link stext-106 trans-04" style="color: gray;">Gray</a>
                        </li>
                        
                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: navy;"><i class="zmdi zmdi-circle"></i></span>
                           <a href="#" class="filter-link stext-106 trans-04" style="color: navy;">Navy</a>
                        </li>
                        
                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: khaki;" ><i class="zmdi zmdi-circle"></i></span>
                           <a href="#" class="filter-link stext-106 trans-04" style="color: khaki;">Khaki</a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: blue;"><i class="zmdi zmdi-circle"></i></span>
                           <a href="#" class="filter-link stext-106 trans-04" style="color: blue;">Blue</a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #4b4b4b;"><i class="zmdi zmdi-circle"></i></span>
                           <a href="#" class="filter-link stext-106 trans-04" style="color: #4b4b4b;">Charcoal</a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: lightgray;"><i class="zmdi zmdi-circle"></i></span>
                           <a href="#" class="filter-link stext-106 trans-04" style="color: lightgray;">LightGray</a>
                        </li>
                     </ul>
                  </div>

                  <div class="filter-col4 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">By BodySize</div>
                     <div class="mtext-100 cl2 p-b-15" style="font-weight: bold;">1. Shoulder Type</div>
                        <ul>
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">좁음</a>
                           </li>
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">보통</a>
                           </li>
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">넓음</a>
                           </li>
                        </ul>   
                     <br>
                     <div class="mtext-100 cl2 p-b-15" style="font-weight: bold;">2. Arm Length</div>
                        <ul>
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">좁음</a>
                           </li>
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">보통</a>
                           </li>
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">넓음</a>
                           </li>
                        </ul>   
                     <br>
                     <div class="mtext-100 cl2 p-b-15" style="font-weight: bold;">3. Leg Length</div>
                        <ul>
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">좁음</a>
                           </li>
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">보통</a>
                           </li>
                           <li class="p-b-6">
                              <a href="#" class="flex-c-m stext-107 cl6 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5">넓음</a>
                           </li>
                        </ul>   
                     </div>
                  </div>
               </div>
			</div>

			<div class="row isotope-grid">
				<c:forEach items="${jsonObjectList}" var="product">
				<c:set var ="imageRef" value="${product.imageRef}"/>
				<c:if test="${fn:contains(imageRef,'main$1')}">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="${product.get('imageRef')}" alt="IMG-PRODUCT">

							<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1 brief-view">
								<input type="hidden" value="${product.productNum}">
								Quick View
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="/iceland/product/details.es?productNum=${product.productNum}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${product.productName}
								</a>

								<span class="stext-105 cl3">
									₩ ${product.productListPrice} 원
								</span>
							</div>

							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
									<img class="icon-heart1 dis-block trans-04" src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
									<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
								</a>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				</c:forEach>
			</div>

			<!-- Load more -->
			<div class="flex-c-m flex-w w-full p-t-45">
				<input type="button" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04" value="더보기">
			</div>
		</div>
	</div>
		

	<%@include file="/iceland/../includes/QuickMenu.jsp"%>
	<%@include file="/iceland/../includes/footer.jsp"%>

    


<!--===============================================================================================-->
	<script src="/iceland/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/bootstrap/js/popper.js"></script>
	<script src="/iceland/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script>
		function setResult(result){
			// 이메일인증컨트롤러에서 임의로 생성된 인증코드값
			emailCertifyCode = result.responseText; 
			// 이메일인증을 위한 textfeild와 button을 붙일 div el
			var emailDiv = document.getElementById('emailCertifyDiv'); 
			// 기존 이메일인증버튼을 display:none, 사용자에게 코드값을 입력받을 텍스트필드와 확인버튼 생성
			document.getElementById('emailCertify').style.display="none";
			var $inputCode = $("<input type='text' id='inputCode'>");
			var $certifyBtn = $("<button type='button' id='certifyBtn' onclick='sendCode()'>확인</button>");
			// 생성된 el을 document에 붙임
			$inputCode.appendTo(emailDiv);
			$certifyBtn.appendTo(emailDiv);
		}
	</script>
<!--===============================================================================================-->
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
	   <%--  var Test = '';
		$('.brief-view').on('click', function(e){
			Test = e;
			console.log(e);
	 		var value = $(this).find('input').val();
			$('#productNum').value = value;
			var myList = <%=request.getAttribute("gsonListAll")%>;
		    for ( var i in myList) {
				if(myList[i]['productNum']==$('#productNum').val()) {
					console.log(i);
					$('#productName').value = myList[i]['productName'];
				};
			}
		}); --%>
		$('.js-show-modal1').on('click',function(e){
			$("#itemPic").empty();
	    	var productNum = $(this).find("input").val();
		    $('#productNum').val(productNum);
	        e.preventDefault();
			var myList = <%=request.getAttribute("gsonListAll")%>;
		    for ( var i in myList) {
				if(myList[i]['productNum']==$('#productNum').val()) {
					$("#productName").html(myList[i]['productName']);
					$("#productPrice").html("₩ " + myList[i]['productListPrice'] + " 원");
					$("#productBrief").html(myList[i]['productBriefInfomation']);
					$("#productNumHref").attr("href", "/iceland/product/details.es?productNum="+$('#productNum').val());
					break;
				};
		    }
		    for ( var i in myList) {
				if((myList[i]['productNum']==$('#productNum').val())&&(myList[i]['imageRef'].match('main'))) {
					var appendString = appendPic(myList[i]['imageRef']);
					var appendBriefString = appendBriefPic(myList[i]['imageRef']);
					$("#itemPic").append(appendString);
					break;
				};
			}
		    $('.js-modal1').addClass('show-modal1');
	    });

	    $('.js-hide-modal1').on('click',function(){
	        $('.js-modal1').removeClass('show-modal1');
	    });
		
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
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
	
		function appendPic(url) {
			var text = "<div class='item-slick3'><div class='wrap-pic-w pos-relative'>"+
						   "<img id='productImg' src='"+url +"' alt='IMG-PRODUCT'><a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04' href='/iceland/images/product-detail-01.jpg'>"+
							"<i class='fa fa-expand'></i></a></div></div>";
			return text;				
		};
		
		function appendBriefPic(url) {
			var text = "<img src='"+url+"'>";
			return text;				
		};
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
	<script type="text/javascript">
	
	  $('.btn-addwish-b2').unbind("click").on('click',function(e){
		  console.log(e);
		  
		  Test = e;
		  var str = "btn-addwish-b2 dis-block pos-relative js-addwish-b2";
		  
		  if( $(e.currentTarget).attr('class')=== str){
		  $(e.currentTarget).attr('class',"btn-addwish-b2 dis-block pos-relative js-addwish-b2 js-addedwish-b2");
		  
		  var array = $(e.currentTarget).parents()[1].innerText.split('₩');
		  var PRODUCT_NAME = array[0].trim();
		  var PRODUCT_PRICE = array[1].trim().substring(0,array[1].trim().length - 2);
		  var image_ref = $(e.currentTarget).parents()[2].children[0].children[0].currentSrc;
		  
		  // 찜목록 등록
		  
		  /*
		     image_ref,PRODUCT_NAME,product_manufacturer,PRODUCT_PRICE,PRODUCT_NUM
		  */
		  
		  }else{
		  $(e.currentTarget).attr('class',"btn-addwish-b2 dis-block pos-relative js-addwish-b2");
		  // 찜목록 삭제
		  var deleteNum = parseInt($(e.currentTarget).attr('value'));
		  // 변경 필요
          setCookie('wish' + deleteNum,'',0);
          
          // 지운 후 정렬 
          var testNum = deleteNum + 1;
          
          while(getCookie('wish' + testNum)){
              testNum++;
          }
          
          console.log(testNum);
          
          for(var i = deleteNum + 1; i < testNum; i++){
              console.log(i);
              setCookie('wish' + (i-1),getCookie('wish' + i),1);
              if(i == testNum - 1){
                  setCookie('wish' + i,'',0);
              }
          }
          $(e.currentTarget).parents()[0].remove();
          $('#cartButton').attr('data-notify',testNum - 2);

		  }
	  });
	</script>
</body>
</html>