<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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



.roundedOne {
    width: 28px;
    height: 28px;
    background: #fcfff4;
    background: -webkit-linear-gradient(top, #fcfff4 0%, #dfe5d7 40%, #b3bead 100%);
    background: linear-gradient(to bottom, #fcfff4 0%, #dfe5d7 40%, #b3bead 100%);
    border-radius: 100%;
    box-shadow: inset 0 1px 1px #fff, 0 1px 3px rgba(0, 0, 0, 0.7);
	display: inline;
}
.roundedOne label {
    width: 20px;
    height: 20px;
    cursor: pointer;
    position: absolute;
    left: 4px;
    top: 4px;
    background: -webkit-linear-gradient(top, #222222 0%, #45484d 100%);
    background: linear-gradient(to bottom, #222222 0%, #45484d 100%);
    border-radius: 50px;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.5), 0 2px 0 #fff;
}
.roundedOne label:after {
    content: "";
    width: 16px;
    height: 16px;
    position: absolute;
    top: 2px;
    left: 2px;
    background: #27ae60;
    background: -webkit-linear-gradient(top, #27ae60 0%, #145b32 100%);
    background: linear-gradient(to bottom, #27ae60 0%, #145b32 100%);
    border-radius: 100%;
    box-shadow: inset 0 1px 1px #fff, 0 1px 3px rgba(0, 0, 0, 0.5);
    opacity: 0;
}
.roundedOne label:hover::after {
    opacity: 0.4;
}
.roundedOne input[type=checkbox]:checked + label:after {
    opacity: 1;
}
</style>
</head>
<body class="animsition">

	<%@include file="../../includes/header.jsp"%>

	<%@include file="../../includes/cart.jsp"%>
	<%@include file="../../includes/favorite.jsp"%>
	<%@include file="../../includes/slider.jsp"%>
    <input type="hidden" id="cart" value='${carts.value}'>
    <input type="hidden" id="wish" value='${wishes.value}'>
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
									<th class="column-1">My 장바구니</th>
									<th class="column-2"></th>
									<th class="column-3"></th>
									<th class="column-4"></th>
									<th class="column-5"></th>
									<th class="column-6"></th>
								</tr>
								
								<tr class="table_head">
									<th class="column-1 txt-center">선택</th>
									<th class="column-2 txt-center">상품이미지</th>
									<th class="column-3 txt-center">상품명</th>
									<th class="column-4 txt-center">금액</th>
									<th class="column-5 txt-center">수량</th>
									<th class="column-6 txt-center">총금액</th>
								</tr>
								
							</table>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<button class="float-r flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-5 trans-04 pointer">구매</button>
							<div class="float-r flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">선택삭제</div>
							<div class="float-r flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10" id="delete_All">전체삭제</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  
	<script src="/iceland/vendor/jquery/jquery-3.2.1.min.js"></script>

	<%@include file="/iceland/../includes/footer.jsp"%>

	<%@include file="/iceland/../includes/QuickMenu.jsp"%>

	<!--===============================================================================================-->
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
			
	$('.how-itemcart1').bind("click",function(e){
		e.currentTarget.parentElement.parentElement.remove();
	});
	/*
	$('.wrap-num-product').bind("click",function(e){
		console.log(e);
		console.log(e.previousElementSibling);
		console.log(e.currentTarget.children[1]);
		
	});
	*/
	$('.btn-num-product-down').bind("click",function(e){
		/*
			갯수 세기
		*/
		var num = e.currentTarget.parentElement.children[1].value - 1;
		var price = e.currentTarget.parentElement.parentElement.parentElement.children[2].innerText;
		
		price = parseFloat(price);
		
		e.currentTarget.parentElement.parentElement.parentElement.children[4].innerText = (num * price);
		
		sumUp();
	});
		
	$('.btn-num-product-up').bind("click",function(e){
		var num = parseInt(e.currentTarget.parentElement.children[1].value) + 1;
		var price = e.currentTarget.parentElement.parentElement.parentElement.children[2].innerText;
		
		price = parseFloat(price);
		
		e.currentTarget.parentElement.parentElement.parentElement.children[4].innerText = (num * price);
		
		sumUp();
		
	});
	
	function sumUp(){
		var sum = 0;
		var num = 0;
		$('.column-5').each(function(index,item){
			if(index !== 0){
				num = $(item).text();
				sum += parseInt(num);
			}
		});

		$('.mtext-110').each(function(index,item){
				$(item).text(sum);
		})
	};
	
	$('#delete_All').bind('click',function(e){
		$('.table_row').each(function(index,item){
			item.remove();
		})
		
		sumUp();
	});
	
	sumUp();
	

	var Test = '';

	
	$(document).ready(function() {
		var obj = decodeURIComponent(getCookie('carts'));
		var jsonObj = JSON.parse(obj);
		// row 뿌리기
		
		console.log(jsonObj);
		Test = jsonObj;
		
		for(var i = 0; i < jsonObj.length; i++){
			
			var str = "";
			str += '<tr class="table_row">';
			str += ' <td class="column-1 txt-center">';
			str += ' <input type="checkbox" value="None" class="roundedOne" id="" name="check" checked /></td>';
			str += ' <td class="column-2 txt-center"><div class="how-itemcart1">';
			str += ' <img src="' + jsonObj[i].image_ref + '" alt="IMG"></div></td>';
			str += ' <td class="column-3 txt-center">' + jsonObj[i].PRODUCT_NAME + '</td>';
			str += ' <td class="column-4 txt-center">' + jsonObj[i].PRODUCT_PRICE + '</td><td class="column-5 txt-center">';
			str += ' <div class="wrap-num-product flex-w m-l-auto m-r-auto">';
			str += ' <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">';
			str += ' <i class="fs-16 zmdi zmdi-minus"></i></div>';
			str += ' <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product2" value="' + jsonObj[i].product_count + '">';
			str += ' <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">';
			str += ' <i class="fs-16 zmdi zmdi-plus"></i></div></div></td>';
			str += ' <td class="column-6 txt-center">' + (jsonObj[i].product_count*jsonObj[i].PRODUCT_PRICE) + '</td></tr>';

			$('tbody').append(str);
		}

		
		// json 객체로 cart 가져오기
		}
	);
	
		</script>
</body>
</html>