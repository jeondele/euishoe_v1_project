<%@ page contentType="text/html; charset=utf-8"%>
<%@page import="java.util.List"%>
<%@page import="com.euishoe.reviews.dto.Review"%>
<%@page import="com.euishoe.qnas.dto.Qna"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Product Detail</title>
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 상품 문의, 상품 리뷰 css-->
<link rel="stylesheet" type="text/css" href="product_detail.css">
<!--===============================================================================================-->

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <!-- toggle  -->
  <script>
  $( function() {

    // run the currently selected effect
    function runRankpoint() {
      var selectedEffect = $( "#effectTypes" ).val();
      var options = {};
      $("#info_content" ).toggle( selectedEffect, options, 500 );
    };

    
    function showReview() {
        var selectedEffect = $( "#effectTypes" ).val();
        var options = {};
        $("#dvQnqContDtl1" ).toggle(selectedEffect, options, 500);
      };
    
      function writeReview() {
          var selectedEffect = $( "#effectTypes" ).val();
          var options = {};
          $("#dvQnqContDtl0" ).toggle( selectedEffect, options, 500 );
        };
      
      /*
      	박호준
      	리뷰 클릭하면 답변 보기
      */
      function showAnswer(tag) {
        	if(tag.style.display == 'none'){
        		tag.style.display = 'table-cell';
        	}else{
        		tag.style.display = 'none';
        	}
          };
          
    
    // Set effect from select menu value
    $( "#detailViewGrade" ).on( "click", function() {
      runRankpoint();
    });
    
    
    $( "#admin_Answer" ).on( "click", function() {
    	showReview();
      });
    
    $( "#write_Answer" ).on( "click", function() {
    	writeReview();
      });
    
    /*
    	박호준
    	
    	리뷰 클릭하면 답변 보기
    */
    $(".txt_ellipsis" ).on( "click", function(e) {
    	if($($($(this.parentElement.parentElement).next()[0]).children()[0]).hasClass('qna_expand')){
    	showAnswer($($(this.parentElement.parentElement).next()[0]).children()[0]);
    	}
      });
    
  } );
  </script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- toggle  -->
<script>
	$(function() {

		// run the currently selected effect
		function runRankpoint() {
			var selectedEffect = $("#effectTypes").val();
			var options = {};
			$("#info_content").toggle(selectedEffect, options, 500);
		}
		;

		function showReview() {
			var selectedEffect = $("#effectTypes").val();
			var options = {};
			$("#dvQnqContDtl1").toggle(selectedEffect, options, 500);
		}
		;

		function writeReview() {
			var selectedEffect = $("#effectTypes").val();
			var options = {};
			$("#dvQnqContDtl0").toggle(selectedEffect, options, 500);
		}
		;

		/*
			박호준
			리뷰 클릭하면 답변 보기
		 */
		function showAnswer(tag) {
			if (tag.style.display == 'none') {
				tag.style.display = 'table-cell';
			} else {
				tag.style.display = 'none';
			}
		}
		;

		// Set effect from select menu value
		$("#detailViewGrade").on("click", function() {
			runRankpoint();
		});

		$("#admin_Answer").on("click", function() {
			showReview();
		});

		$("#write_Answer").on("click", function() {
			writeReview();
		});

		/*
			박호준
			
			리뷰 클릭하면 답변 보기
		 */
		$(".txt_ellipsis").on(
				"click",
				function(e) {
					if ($(
							$($(this.parentElement.parentElement).next()[0])
									.children()[0]).hasClass('qna_expand')) {
						showAnswer($(
								$(this.parentElement.parentElement).next()[0])
								.children()[0]);
					}
				});

	});
</script>

</head>
<body class="animsition">

	<%@include file="/iceland/../includes/header.jsp"%>
	<%@include file="/iceland/../includes/cart.jsp"%>
	<%@include file="/iceland/../includes/favorite.jsp"%>

	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04"> Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <a href="product.html" class="stext-109 cl8 hov-cl1 trans-04">
				Men <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4"> Lightweight Jacket </span>
		</div>
	</div>


	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
							<input type="hidden" id="productCode" value="">
							<input type="hidden" id="pantsCode" value="">
							<input type="hidden" id="jacketCode" value="">
							<div class="slick3 gallery-lb">
								<c:forEach items="${selectAllById}" var="product">
								<c:set var ="imageRef" value="${product.imageRef}"/>
								<c:if test="${fn:contains(imageRef,'main')}">
								<div class="item-slick3"
									data-thumb="${product.imageRef}">
									<div class="wrap-pic-w pos-relative">
										<img src="${product.imageRef}"
											alt="IMG-PRODUCT"> <a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="/iceland/images/product-detail-01.jpg"> <i
											class="fa fa-expand"></i>
										</a>
									</div>
								</div>
								</c:if>
								</c:forEach>

								<!-- 								<div class="item-slick3" data-thumb="/iceland/images/product-detail-02.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="/iceland/images/product-detail-02.jpg" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="/iceland/images/product-detail-02.jpg">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3" data-thumb="/iceland/images/product-detail-03.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="/iceland/images/product-detail-03.jpg" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="/iceland/images/product-detail-03.jpg">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div> -->
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<h4 class="mtext-105 cl2 js-name-detail p-b-14">${selectAllById.get(1).productName} </h4>

						<span class="mtext-106 cl2"> ₩ ${selectAllById.get(1).productListPrice} 원</span>

						<p class="stext-102 cl3 p-t-23">${selectAllById.get(1).productBriefInfomation}</p>

						<!--  -->
						<div class="p-t-33">
							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">상의</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select id="clothSize" class="js-select2" name="time">
											<option>Choose an option</option>
											<option value="s">Size S</option>
											<option value="m">Size M</option>
											<option value="l">Size L</option>
											<option value="xl">Size XL</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">하의</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select id="pantsSize" class="js-select2" name="time">
											<option>Choose an option</option>
											<option value="26">26inch</option>
											<option value="28">28inch</option>
											<option value="30">30inch</option>
											<option value="32">32inch</option>
											<option value="34">34inch</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-304 flex-w flex-m respon6-next">
									<div class="wrap-num-product flex-w m-r-20 m-tb-10"
										style="margin-left: 100px;">
										<div
											class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>

										<input class="mtext-104 cl3 txt-center num-product"
											type="number" name="num-product" value="1">

										<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>

									<input type="button"
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"
										value="장바구니 담기" style="margin-left: 10px;" /> <input
										type="button"
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04"
										value="즉시구매" style="margin-left: 10px;" />
								</div>
							</div>
						</div>

						<!--  -->
						<div class="flex-w flex-m p-l-100 p-t-40 respon7">
							<div class="flex-m bor9 p-r-10 m-r-11">
								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
									data-tooltip="Add to Wishlist"> <i
									class="zmdi zmdi-favorite"></i>
								</a>
							</div>

							<a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
							</a> <a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
							</a> <a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
							</a>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		
		<%-- 상품 상세 정보 page include 시작 --%>
		<%@include file="/iceland/../includes/product-detail-information.jsp"%>
		<%-- 상품 상세 정보 page include 끝 --%>
				



		<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
			<span class="stext-107 cl6 p-lr-25">SKU: JAK-01</span>
			<span class="stext-107 cl6 p-lr-25">Categories: Jacket, Men</span>
		</div>

	</section>


	<!-- Related Products -->
	<section class="sec-relate-product bg0 p-t-45 p-b-105">
		<div class="container">
			<div class="p-b-45">
				<h3 class="ltext-106 cl5 txt-center">Related Products</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">
					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-01.jpg" alt="IMG-PRODUCT">

								<a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="/iceland/product/details.es"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Esprit Ruffle Shirt </a> <span class="stext-105 cl3">
										$16.64 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="images/product-02.jpg" alt="IMG-PRODUCT"> <a
									href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="/iceland/product/details.es"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Herschel supply </a> <span class="stext-105 cl3"> $35.31 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-03.jpg" alt="IMG-PRODUCT">

								<a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="/iceland/product/details.es"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Only Check Trouser </a> <span class="stext-105 cl3"> $25.50
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-04.jpg" alt="IMG-PRODUCT">

								<a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Classic Trench Coat </a> <span class="stext-105 cl3">
										$75.00 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-05.jpg" alt="IMG-PRODUCT">

								<a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Front Pocket Jumper </a> <span class="stext-105 cl3">
										$34.75 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-06.jpg" alt="IMG-PRODUCT">

								<a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Vintage Inspired Classic </a> <span class="stext-105 cl3">
										$93.20 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-07.jpg" alt="IMG-PRODUCT">

								<a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Shirt in Stretch Cotton </a> <span class="stext-105 cl3">
										$52.66 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="images/product-08.jpg" alt="IMG-PRODUCT"> <a
									href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Pieces Metallic Printed </a> <span class="stext-105 cl3">
										$18.96 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	
	<%-- 리뷰 작성 Modal include 시작 --%>
	<%@include file="/iceland/../includes/reviewModal.jsp"%>
	<%-- 리뷰 작성 Modal include 끝 --%>
	
	<%-- 문의 작성 Modal include 시작 --%>
	<%@include file="/iceland/../includes/qnaModal.jsp"%>
	<%-- 문의 작성 Modal include 끝 --%>
	
	

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
	<script>
		$('#clothSize, #pantsSize').on('change', function(e) {
			var cloth = $("#clothSize option:selected").val();
			var pants = $("#pantsSize option:selected").val();
			var imageRef = '${selectAllById.get(1).imageRef}';
			var str = imageRef.substring(imageRef.lastIndexOf('/'));
			var productName = str.split('$')[0].replace("/","").replace("_","$");
			var productBrand =  productName.split('$')[0];
			var productColor =  productName.split('$')[1];
			var productCode = productBrand+'$'+ cloth +'$'+ pants +'$'+ productColor;
			var pantsCode = productBrand+'$'+ cloth +'$'+ productColor;
			var jacketCode = productBrand+'$'+ pants +'$'+ productColor;
			$('#productCode').val(productCode);
			$('#pantsCode').val(pantsCode);
			$('#jacketCode').val(jacketCode);
			alert($('#productCode').val());
			alert($('#pantsCode').val());
			alert($('#jacketCode').val());
		});
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
<<<<<<< HEAD
=======
<%--     <script type="text/javascript">
    $('.prdc_qna').css('display','none');
    $($('.nav-item')[3]).on('click',function(){ $('.prdc_qna').css('display','block');});
    </script>--%>
>>>>>>> feature/qna/review_final(es)
	<script type="text/javascript">
	$('.flex-c-m.stext-101.cl0.size-101.bg1.bor1.hov-btn1.p-lr-15.trans-04.js-addcart-detail').unbind("click").on('click',function(e){
		sumToMakeJson();
		console.log(1);
	});
	
	function sumToMakeJson(){
		var ProductName = $('.mtext-105.cl2.js-name-detail.p-b-14')[0].innerText;
		var ProductImg = $('img[alt="IMG-PRODUCT"]')[0].src;
		var ProductCount = parseInt($('.mtext-104.cl3.txt-center.num-product')[0].value);
		var ProductPrice = parseInt($('.mtext-106.cl2')[0].innerText.substring(3,$('.mtext-106.cl2')[0].innerText.length - 2));
		var ProductNum = getQuerystring('productNum');
		var ProductCode = $('#productCode').val();
	    var pantsCode = $('#pantsCode').val();
	    var jacketCode = $('#jacketCode').val();
	    
	    var prior = 1;
	    var duplicate = false;
	    
	    while(getCookie('cart' + prior)){
	    	var obj = decodeURIComponent(getCookie('cart' + prior)).substring(1,decodeURIComponent(getCookie('cart' + prior)).length - 1);
			var jsonObj = JSON.parse(obj);
	    	
			if(jsonObj.PRODUCT_NAME == productName){
				duplicate = true;
				break;
			}
	        prior++;
	    }
	    
	    if(duplicate){
	        // 객체 생성
	        var data = new Object() ;
	        // String으로 index.jsp 내 객체
	        data.image_ref = productImg;
	        data.PRODUCT_PRICE = productPrice;
	        data.product_count = productCount;
	        data.PRODUCT_NAME = productName;
	        data.PRODUCT_NUM = productNum;
	        data.PRODUCT_CODE = productCode;
	        data.JACKET_CODE = jacketCode;
	        data.PANTS_CODE = pantsCode;
	        
	         
	        // 리스트에 생성된 객체 삽입
	        var arrayCookie = '"' + encodeURIComponent(JSON.stringify(data)) + '"';
	        setCookie('cart' + prior,arrayCookie,1);
	        
	        $('.header-cart-item-info')[prior - 1].innerHTML = (productCount + ' x ' + productPrice);
	    	return;
	    }
	    
	    // 객체 생성
	    var data = new Object();
	    // String으로 index.jsp 내 객체
	    data.image_ref = ProductImg;
	    data.PRODUCT_PRICE = ProductPrice;
	    data.product_count = ProductCount;
	    data.PRODUCT_NAME = ProductName;
	    data.PRODUCT_NUM = ProductNum;
	    data.PRODUCT_CODE = ProductCode;
        data.JACKET_CODE = jacketCode;
        data.PANTS_CODE = pantsCode;
	     
	    // 리스트에 생성된 객체 삽입
	    var arrayCookie = '"' + encodeURIComponent(JSON.stringify(data)) + '"';
	    setCookie('cart' + prior,arrayCookie,1);
	    
	    $('#cartButton').attr('data-notify',parseInt($('#cartButton').attr('data-notify')) + 1)
	    
	        
	    var str = "";
	        
	    str += '<li class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img cart" value=' + prior + '>';
	    str += '<img class="cartItems" src="' + ProductImg + '" alt="IMG"></div><div class="header-cart-item-txt p-t-8">';
	    str += '<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">' + ProductName + '</a>'
	    str += '<span class="header-cart-item-info">' + ProductCount + ' x ' + ProductPrice + '</span></div></li>';        
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
	    })
	    
	};
	
	</script>
</body>
</html>