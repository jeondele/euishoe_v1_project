<%@page import="java.util.List"%>
<%@page import="com.euishoe.products.dto.ProductInfo"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tt" uri="/WEB-INF/tlds/fordecode.tld"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================
    페이지의 상단 아이콘 이미지
-->
<link rel="icon" type="image/png"
	href="/iceland/images/icons/favicon.png" />
<!--===============================================================================================
    부트스트랩
-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================
    폰트어썸(폰트)
-->
<link rel="stylesheet" type="text/css"
	href="/iceland/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================
    머티리얼 디자인 폰트
-->
<link rel="stylesheet" type="text/css"
	href="/iceland/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================
    애니메이션-->
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
<!--===============================================================================================
      로그인 폼
-->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">
<link rel="stylesheet" href="/iceland/css/style.css">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon|Sunflower:300"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=application.getContextPath()%>/css/toastMessage.css">
<script src="/iceland/vendor/jquery/jquery-3.2.1.min.js"></script>

<script type="text/javascript"
	src="<%=application.getContextPath()%>/js/toastMessage.js"></script>
<script type="text/javascript">

function sumToMakeJson(){
    var productName = $('#addCart').parents()[3].childNodes[1].innerText;
    var productImg = $('#productImg')[0].src
    var productCount = parseInt(document.getElementsByName('num-product')[0].value);
    var productPrice = parseInt($('#productPrice').text().trim().substring(2,$('#productPrice').text().trim().length - 2));
    var productNum = parseInt($('#productNum').val());
    var productCode = $('#productCode').val();
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
    
    $('#cartButton').attr('data-notify',parseInt($('#cartButton').attr('data-notify')) + 1)
    
        
    var str = "";
        
    str += '<li class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img cart">';
    str += '<img class="cartItems" src="' + productImg + '" alt="IMG"></div><div class="header-cart-item-txt p-t-8">';
    str += '<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">' + productName + '</a>'
    str += '<span class="header-cart-item-info">' + productCount + ' x ' + productPrice + '</span></div></li>';        
    $('#miniCarts').append(str);
          
    //checksum += jsonObj.product_count * jsonObj.PRODUCT_PRICE;
    
    //$('.header-cart-total')[0].innerText = ("Total: " + checksum) + '원';
    $('.header-cart-item-img.cart').unbind("click").on('click',function(e){
    	console.log(this);
        var deleteNum = parseInt($(e.currentTarget).attr('value'));
        setCookie('cart' + deleteNum,'',0);
        
        // 지운 후 정렬 
        var testNum = deleteNum + 1;
        
        while(getCookie('cart' + testNum)){
            testNum++;
        }
        
        for(var i = deleteNum + 1; i < testNum; i++){
            setCookie('cart' + (i-1),getCookie('cart' + i),1);
        }
        
        $(e.currentTarget).parents()[0].remove();
        $('#cartButton').attr('data-notify',testNum - 2);
    });
}

// 위시리스트 추가
function sumToMakeJsonForWish(){
    var prior = 1;
    while(getCookie('wish' + prior)){
        prior++;
    }
    
    var productName = $('#addCart').parents()[3].childNodes[1].innerText;
    var productImg = $('#productImg')[0].src
    var productCount = parseInt(document.getElementsByName('num-product')[0].value);
    var productPrice = parseInt($('#productPrice').text().trim().substring(2,$('#productPrice').text().trim().length - 2));
    var productNum = parseInt($('#productNum').val());
    var productCode = $('#productCode').val();
    // 객체 생성
    var data = new Object() ;
    // String으로 index.jsp 내 객체
    data.image_ref = productImg;
    data.PRODUCT_PRICE = productPrice;
    data.product_count = productCount;
    data.PRODUCT_NAME = productName;
    data.PRODUCT_NUM = productNum;
    data.PRODUCT_CODE = productCode;
    
     
    // 리스트에 생성된 객체 삽입
    var arrayCookie = '"' + encodeURIComponent(JSON.stringify(data)) + '"';
    setCookie('cart' + prior,arrayCookie,1);
    
    $('#cartButton').attr('data-notify',parseInt($('#cartButton').attr('data-notify')) + 1)
    
        
    var str = "";
        
    str += '<li class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img cart">';
    str += '<img class="cartItems" src="' + productImg + '" alt="IMG"></div><div class="header-cart-item-txt p-t-8">';
    str += '<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">' + productName + '</a>'
    str += '<span class="header-cart-item-info">' + productCount + ' x ' + productPrice + '</span></div></li>';        
    $('#miniCarts').append(str);
          
    //checksum += jsonObj.product_count * jsonObj.PRODUCT_PRICE;
    
    //$('.header-cart-total')[0].innerText = ("Total: " + checksum) + '원';
    $('.header-cart-item-img.cart').unbind("click").on('click',function(e){
    	console.log(this);
        var deleteNum = parseInt($(e.currentTarget).attr('value'));
        setCookie('cart' + deleteNum,'',0);
        
        // 지운 후 정렬 
        var testNum = deleteNum + 1;
        
        while(getCookie('cart' + testNum)){
            testNum++;
        }
        
        for(var i = deleteNum + 1; i < testNum; i++){
            setCookie('cart' + (i-1),getCookie('cart' + i),1);
        }
        
        $(e.currentTarget).parents()[0].remove();
        $('#cartButton').attr('data-notify',testNum - 2);
    });
}

</script>    
	
	
</head>
<body class="animsition">


	<%@include file="includes/header.jsp"%>
	<%@include file="includes/cart.jsp"%>
	<%@include file="includes/favorite.jsp"%>
	<%@include file="includes/slider.jsp"%>

	<!-- Product -->
	<section class="bg0 p-t-23 p-b-140">
		<div class="container">
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">New Product</h3>
				<!-- Load more -->
					<a href="/iceland/product.es"><input type="button"
						class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04"
						value="Load More" style="margin-left: auto"> </a>
			</div>
		</div>

		<div class="flex-w flex-sb-m p-b-52"></div>

		<div class="row isotope-grid">
			<c:forEach items="${newProductSrc}" var="newProduct">
				<c:set var ="newImageRef" value="${newProduct.imageRef}"/>
				<c:if test="${fn:contains(newImageRef,'main$1')}">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="${newProduct.imageRef}" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal2">
								<input type="hidden" value="${newProduct.productNum}">
								Quick View </a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="/iceland/product/details.es?productNum=${newProduct.productNum}"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${newProduct.productName} </a> <span class="stext-105 cl3">
									₩ ${newProduct.productListPrice} 원 </span>
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
				</c:if>
			</c:forEach>
		</div>


	</section>

	<section class="bg0 p-t-23 p-b-140">
		<div class="container">
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">Best Product</h3>
				<!-- Load more -->
				<a href="/iceland/product.es"><input type="button"
						class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04"
						value="Load More" style="margin-left: auto"> </a>
			</div>
		</div>

		<div class="flex-w flex-sb-m p-b-52"></div>

		<div class="row isotope-grid">
			<c:forEach items="${hitProductSrc}" var="hitProduct">
			<c:set var ="hitImageRef" value="${hitProduct.imageRef}"/>
				<c:if test="${fn:contains(hitImageRef,'main$1')}">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="${hitProduct.imageRef}" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal3">
								<input type="hidden" value="${hitProduct.productNum}">
								Quick View </a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="/iceland/product/details.es?productNum=${hitProduct.productNum}"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${hitProduct.productName} </a> <span class="stext-105 cl3">
									₩ ${hitProduct.productListPrice} 원 </span>
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
			</c:if>
			</c:forEach>
		</div>
	</section>
	<c:choose>
		<c:when test="${not empty result}">
			<div id="snackbar"></div>
		</c:when>
	</c:choose>



	<%@include file="includes/footer.jsp"%>

	<%@include file="includes/QuickMenu.jsp"%>

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
		$('.js-addwish-b2').on('click', function(e) {
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
		$('.js-show-modal2').on('click',function(e){
			$("#itemPic").empty();
	    	var productNum = $(this).find("input").val();
		    $('#productNum').val(productNum);
	        e.preventDefault();
			var myList = ${gsonNewProductSrc};
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
		
		$('.js-show-modal3').on('click',function(e){
			$("#itemPic").empty();
	    	var productNum = $(this).find("input").val();
		    $('#productNum').val(productNum);
	        e.preventDefault();
			var myList = ${gsonHitProductSrc};
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
	<script type="text/javascript">
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
	
	function replaceAll(str, searchStr, replaceStr) {
		return str.split(searchStr).join(replaceStr);
	}

	// 쿠키의 문자열을 수정
	function jsonDecode(str) {
		console.log(str);
		if( 'D' === str.substring(str.length - 1, str.length)){
		    return decodeURIComponent(str);
		}else{
			return (decodeURIComponent(str + 'D'));
		}
		
		//replaceAll(replaceAll(replaceAll(replaceAll(decodeURI(str), '%3A', ':'), '%2C',
		//		','),'%24','$'),'%2','/');
	}

	function makeJson(str) {
		console.log(str);
		return eval('(' + str + ')');
	}

	// Json 배열로 만들기
	function decodeMakeJson(str) {
		// 배열 객체 반환
		return makeJson(jsonDecode(str));
	}
	
	// Json 분리 %2C : ,
	function splitJson(str){
		return str.substring(3,str.length - 3).split('%2C');
	}
	
	function refreshwish(){
		var arrayProduct = new Array();
		var wishcookies = new Array();
			
	    var cookieNum = 1;
	    while(getCookie('wish' + cookieNum)){
	    	var obj = decodeURIComponent(getCookie('wish' + cookieNum)).substring(1,decodeURIComponent(getCookie('wish' + cookieNum)).length - 1);
	    	obj = replaceAll(obj,'+',' ');
			var jsonObj = JSON.parse(obj);
			
			wishcookies.push(jsonObj.PRODUCT_NAME);
			cookieNum++;
	    }
		
		for(var i = 0; i < $('.stext-104.cl4.hov-cl1.trans-04.js-name-b2.p-b-6').length; i++){
			arrayProduct.push($('.stext-104.cl4.hov-cl1.trans-04.js-name-b2.p-b-6')[i].innerText);
		}
		
		for(var i = 0; i < wishcookies.length ; i++){
			for(var j = 0; j < arrayProduct.length; j++){
				if(wishcookies[i] == arrayProduct[j]){
					$($('.btn-addwish-b2.dis-block.pos-relative.js-addwish-b2')[j]).attr('class','btn-addwish-b2 dis-block pos-relative js-addwish-b2 js-addedwish-b2');
					break;
				}
			}
		 }	
		}
		
		refreshwish();	

		var Test22 = '';
	$('.btn-addwish-b2').unbind("click").on('click',function(e){
	    var prior = 1;
	    while(getCookie('wish' + prior)){
	        prior++;
	    }
	    
	  var target = $(e.currentTarget);
	  var str = "btn-addwish-b2 dis-block pos-relative js-addwish-b2";
	  
	  if( $(e.currentTarget).attr('class') == str){
	  $(e.currentTarget).attr('class',"btn-addwish-b2 dis-block pos-relative js-addwish-b2 js-addedwish-b2");
	  
	  var array = $(e.currentTarget).parents()[1].innerText.split('₩');
	  
	  var productName = array[0].trim();
	  var productPrice = array[1].trim().substring(0,array[1].trim().length - 2);
	  var productImg = $(e.currentTarget).parents()[2].children[0].children[0].currentSrc;
	  var productNum = $(e.currentTarget).parents()[1].children[0].children[0].href.split('=')[1];
	  // 찜목록 등록
	  var data = new Object() ;
	  
	    data.image_ref = productImg;
	    data.PRODUCT_PRICE = productPrice;
	    data.PRODUCT_NAME = productName;
	    data.PRODUCT_NUM = productNum;
	  
	  var arrayCookie = '"' + encodeURIComponent(JSON.stringify(data)) + '"';
	  setCookie('wish' + prior,arrayCookie,1);
	  $('#wishButton').attr('data-notify',parseInt($('#wishButton').attr('data-notify')) + 1)
	  
	  var str = "";
	  str += '<li class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img wish" value='+ prior +'>';
	  str += '<img src="' + productImg + '" alt="IMG"></div><div class="header-cart-item-txt p-t-8 ">';
	  str += '<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">' + productName + '</a>'
	  str += '<span class="header-cart-item-info">' + productPrice + '</span></div></li>';		
	  $('#miniWish').append(str);
	  /*
	     image_ref,PRODUCT_NAME,product_manufacturer,PRODUCT_PRICE,PRODUCT_NUM
	  */
	  
	  }else{
		  console.log(e);
		  console.log(111);
		  console.log(e.currentTarget);
		  Test22 = e;
		// 수정 사항  
	  $(target).attr('class','btn-addwish-b2 dis-block pos-relative js-addwish-b2');
	  
	  // 찜목록 삭제
	  var deleteNum = parseInt($(e.currentTarget).attr('value'));
	  // 변경 필요
      setCookie('wish' + deleteNum,'',0);
      
	  console.log(deleteNum);
	  
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
      
      $('#wishButton').attr('data-notify',testNum - 2);
      
      refreshwish();
      
	  }
  });	
	

	</script>
</body>
<script type="text/javascript">
	/* if () {
	 var target = document.getElementById('snackbar');
	 target.innerHTML = '로그인 성공, 방문을 환영합니다!';
	 toast();
	 }  */
</script>
</html>