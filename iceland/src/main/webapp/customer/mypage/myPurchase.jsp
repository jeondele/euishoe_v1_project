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
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-1">구매 완료 내역</th>
									<th class="column-2"></th>
									<th class="column-3"></th>
									<th class="column-4"></th>
									<th class="column-5"></th>
								</tr>

								<tr class="table_head">
									<th class="column-1">주문번호 / 상품주문번호</th>
									<th class="column-2 txt-center">상품명</th>
									<th class="column-3 txt-center">상품금액 (수량)</th>
									<th class="column-4 txt-center">배송상태 / 도착완료</th>
									<th class="column-5 txt-left">환불 요청하기</th>
								</tr>
								
								<tr class="table_row">
									<td class="column-1">(주문일자)D(주문번호)<br>(주문일자)D(상품번호)</td>
									<td class="column-2 txt-center"> 아디다스나이키정장</td>
									<td class="column-3 txt-center">3600 (XX개)</td>
									<td class="column-4 txt-center">구매완료 / ~ 도착완료</td>
									<td class="column-5">
										<button class="float-r flex-c-m stext-101 cl0 size-210-1 bg3 bor14 hov-btn3 p-lr-5 trans-04 pointer">
										환불요청</button></td>
								</tr>
								
								<tr class="table_row">
									<td class="column-1">(주문일자)D(주문번호)<br>(주문일자)D(상품번호)</td>
									<td class="column-2 txt-center"> 아디다스나이키정장</td>
									<td class="column-3 txt-center">3600 (XX개)</td>
									<td class="column-4 txt-center">구매완료 / ~ 도착완료</td>
									<td class="column-5">
										<button class="float-r flex-c-m stext-101 cl0 size-210-1 bg3 bor14 hov-btn3 p-lr-5 trans-04 pointer">
										환불요청</button></td>
								</tr>
							</table>
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