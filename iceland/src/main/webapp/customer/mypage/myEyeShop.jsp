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
	<%@include file="../../includes/favorite.jsp"%>
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
									<th class="column-1">최근 본 상품</th>
									<th class="column-2"></th>
									<th class="column-3"></th>
									<th class="column-4"></th>
									<th class="column-5"></th>
								</tr>
								
								<tr class="table_head">
									<th class="column-1">제품</th>
									<th class="column-2"></th>
									<th class="column-3">가격</th>
									<th class="column-4">제조사</th>
									<th class="column-5">좋아요</th>
								</tr>
								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="/iceland/images/item-cart-04.jpg" alt="IMG">
										</div>
									</td>
									<td class="column-2">Fresh Strawberries</td>
									<td class="column-3">3600</td>
									<td class="column-4">
										<div class="wrap-num-product flex-w m-l-auto m-r-0">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" name="num-product1" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<td class="column-5">3600</td>
								</tr>

								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="/iceland/images/item-cart-05.jpg" alt="IMG">
										</div>
									</td>
									<td class="column-2">Lightweight Jacket</td>
									<td class="column-3">1600</td>
									<td class="column-4">
										<div class="wrap-num-product flex-w m-l-auto m-r-0">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" name="num-product2" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<td class="column-5">1600</td>
								</tr>
							</table>
						</div>

						<div
							class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input
									class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
									type="text" name="coupon" placeholder="Coupon Code">
							</div>
							<div
								class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
								선택 삭제</div>
							<div
								class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10"
								id="delete_All">전체 삭제</div>
						</div>

						<div
							class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm"
							style="display: block">
							<div class="select-ship">
								<ul class="nav nav-pills nav-justified">
									<li class="active"><a data-toggle="tab" href="#home">기본
											배송지</a></li>
									<li><a data-toggle="tab" href="#menu1">최근 배송지</a></li>
									<li><a data-toggle="tab" href="#menu2">새로운 배송지</a></li>
								</ul>
							</div>
							<div class="tab-content">
								<div id="home" class="tab-pane fade in active show">
									<div style="display: block">
										<table>
											<tbody>
												<tr>
													<th>받으시는 분</th>
													<td><input type="text"></td>
												</tr>

												<tr>
													<th>주소</th>
													<td>
														<address>
															<input type="text" id="zipcodeTxt" name="zipcodeTxt"
																maxlength="6" readonly=""
																onkeypress="javascript:common.onlyNumberInput(event);"
																style="ime-mode: disabled; width: 70px;" title="우편번호">
															<a href="javascript:searchAddr();"
																onclick="doCommonStat('ORAD002');" id="searchAddrBt"
																class="defbtn_lsm dtype6"
																data-log-actionid-label="zip_code_find"><span>주소찾기</span></a><br>
															<input type="text" id="rcvrBaseAddr" name="rcvrBaseAddr"
																maxlength="200" title="기본주소 입력"
																class="inp_address int-selected" readonly=""> <input
																type="text" id="rcvrBaseAddr" name="rcvrBaseAddr"
																maxlength="200" title="기본주소 입력"
																class="inp_address int-selected" readonly="">
														</address>
													</td>
												</tr>

												<tr>
													<th>휴대전화</th>
													<td><select id="tmprcvrPrtblNo1" name="tmprcvrPrtblNo"
														title="휴대전화-국번선택" style="width: 80px;">
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
													</select>&nbsp;-&nbsp; <input type="text" id="tmprcvrPrtblNo2"
														name="tmprcvrPrtblNo" maxlength="4"
														onkeypress="javascript:common.onlyNumberInput(event);"
														style="ime-mode: disabled; width: 70px;" title="휴대전화두번째자리"
														class="">&nbsp;-&nbsp; <input type="text"
														id="tmprcvrPrtblNo3" name="tmprcvrPrtblNo" maxlength="4"
														onkeypress="javascript:common.onlyNumberInput(event);"
														style="ime-mode: disabled; width: 70px;" title="휴대전화세번째자리"
														class=""> <input type="hidden"
														id="safeNumberUseYN" name="safeNumberUseYN" value="N"
														class=""> <span class="safenom_free"
														id="safenom_free_02"></span></td>
												</tr>

												<tr>
													<th>배송시 요청사항</th>
													<td><input type="text"></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<div id="menu1" class="tab-pane fade"></div>

								<div id="menu2" class="tab-pane fade"></div>


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