<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoping Cart</title>
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
	href="/iceland/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/iceland/css/util.css">
<link rel="stylesheet" type="text/css" href="/iceland/css/main.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=application.getContextPath()%>/customer/customizing/customizing.css">


<style>
.nav-tabs {
	border-bottom: 1px solid #ddd;
}

.nav {
	list-style: none;
}

.nav-tabs.nav-justified {
	width: 100%;
}

tr {
	display: table-row;
}
</style>
</head>
<body class="animsition">

	<%@include file="/iceland/../includes/header.jsp"%>

	<%@include file="/iceland/../includes/cart.jsp"%>
	<%@include file="/iceland/../includes/favorite.jsp"%>

	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.jsp" class="stext-109 cl8 hov-cl1 trans-04"> Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4"> Shoping Cart </span>
		</div>
	</div>

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
			<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
				<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div>
						<strong><h4 class="mtext-109 cl2 p-b-13">당신의 체형을 알려주세요</h4></strong>

						<div class="flex-w flex-t bor12 p-b-13">당신의 체형에 맞는 정장을
							추천해드립니다</div>
						</div>
						<table class="table-shopping-cart">
							<tr class="table_row-head">
								<td class="column-1" colspan="5"><strong>Q1. 당신의
										체형은 어떤 편이세요?</strong></td>
								<td class="column-2"></td>
								<td class="column-3"></td>
								<td class="column-4"></td>
								<td class="column-5"></td>
							</tr>

							<tr class="table_row-body">
								<td class="column-1"></td>
								<td class="column-2"><input type="radio" name="body"
									value="1" /> 마른 편</td>
								<td class="column-3"><input type="radio" name="body"
									value="2" /> 보통</td>
								<td class="column-4"><input type="radio" name="body"
									value="3" /> 통통한 편</td>
								<td class="column-5"></td>
							</tr>

							<tr class="table_row-head">
								<td class="column-1" colspan="5"><strong>Q2. 당신의
										어깨 체형은 어떤 편이세요?</strong></td>
								<td class="column-2"></td>
								<td class="column-3"></td>
								<td class="column-4"></td>
								<td class="column-5"></td>
							</tr>

							<tr class="table_row-body">
								<td class="column-1"></td>
								<td class="column-2"><input type="radio" name="shoulder"
									value="1" /> 좁은 편</td>
								<td class="column-3"><input type="radio" name="shoulder"
									value="2" /> 보통</td>
								<td class="column-4"><input type="radio" name="shoulder"
									value="3" /> 넓은 편</td>
								<td class="column-5"></td>
							</tr>

							<tr class="table_row-head">
								<td class="column-1" colspan="5"><strong>Q3. 당신의 팔
										체형은 어떤 편이세요? </strong></td>
								<td class="column-2"></td>
								<td class="column-3"></td>
								<td class="column-4"></td>
								<td class="column-5"></td>
							</tr>

							<tr class="table_row-body">
								<td class="column-1"></td>
								<td class="column-2"><input type="radio" name="shoulder"
									value="1" /> 짧은 편</td>
								<td class="column-3"><input type="radio" name="shoulder"
									value="2" /> 보통</td>
								<td class="column-4"><input type="radio" name="shoulder"
									value="3" /> 긴 편</td>
								<td class="column-5"></td>
							</tr>

							<tr class="table_row-head">
								<td class="column-1" colspan="5"><strong>Q4. 당신의
										다리 체형은 어떤 편이세요?</strong></td>
								<td class="column-2"></td>
								<td class="column-3"></td>
								<td class="column-4"></td>
								<td class="column-5"></td>
							</tr>

							<tr class="table_row-body">
								<td class="column-1"></td>
								<td class="column-2"><input type="radio" name="shoulder"
									value="1" /> 짧은 편</td>
								<td class="column-3"><input type="radio" name="shoulder"
									value="2" /> 보통</td>
								<td class="column-4"><input type="radio" name="shoulder"
									value="3" /> 긴 편</td>
								<td class="column-5"></td>
							</tr>
						</table>
						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							저장하기
						</button>
					</div>
				</div>
			</div>
		</div>	
	</form>


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
	<script
		src="/iceland/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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

		$('.how-itemcart1').bind("click", function(e) {
			e.currentTarget.parentElement.parentElement.remove();
		});
		/*
		$('.wrap-num-product').bind("click",function(e){
			console.log(e);
			console.log(e.previousElementSibling);
			console.log(e.currentTarget.children[1]);
			
		});
		 */
		$('.btn-num-product-down')
				.bind(
						"click",
						function(e) {
							/*
								갯수 세기
							 */
							var num = e.currentTarget.parentElement.children[1].value - 1;
							var price = e.currentTarget.parentElement.parentElement.parentElement.children[2].innerText;

							price = parseFloat(price);

							e.currentTarget.parentElement.parentElement.parentElement.children[4].innerText = (num * price);

							sumUp();
						});

		$('.btn-num-product-up')
				.bind(
						"click",
						function(e) {
							var num = parseInt(e.currentTarget.parentElement.children[1].value) + 1;
							var price = e.currentTarget.parentElement.parentElement.parentElement.children[2].innerText;

							price = parseFloat(price);

							e.currentTarget.parentElement.parentElement.parentElement.children[4].innerText = (num * price);

							sumUp();

						});

		function sumUp() {
			var sum = 0;
			var num = 0;
			$('.column-5').each(function(index, item) {
				if (index !== 0) {
					num = $(item).text();
					sum += parseInt(num);
				}
			});

			$('.mtext-110').each(function(index, item) {
				$(item).text(sum);
			})
		};

		$('#delete_All').bind('click', function(e) {
			$('.table_row').each(function(index, item) {
				item.remove();
			})

			sumUp();
		});

		sumUp();
	</script>
	<!--===============================================================================================-->
	<script src="/iceland/js/main.js"></script>

</body>
</html>