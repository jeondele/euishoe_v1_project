<%@ page import="java.util.Map"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.List"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.google.gson.Gson"%>
<%@ taglib prefix="tt" uri="/WEB-INF/tlds/fordecode.tld"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Product</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<script src="/iceland/vendor/jquery/jquery-3.2.1.min.js"></script>
<link rel="icon" type="image/png"
	href="/iceland/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/iceland/vendor/bootstrap/css/bootstrap.min.css">
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
<script src="/iceland/js/ajax.js"></script>
<!--===============================================================================================-->
<!--===============================================================================================-->
<style>
.finder_list li.on a {
	background-color: #717fe0;
}

.finder_list li a {
	
}

#AllColor:hover, #Brown:hover, #Gray:hover, #Black:hover, #Navy:hover {
	border: 2px solid white;
	font-weight: bold;
}

#AllColor.active, #Brown.active, #Gray.active, #Black.active, #Navy.active
	{
	border: 2px solid white;
	font-weight: bold;
}

#noResultImg {
	width: 1350px;	
}
</style>
</head>
<body class="animsition">

	<%@include file="../../includes/header.jsp"%>
<script type="text/javascript">
window.onload = function() {
	var loginId = getCookie('loginId');
	if (loginId != null) {
		var customerId = loginId;
	} else {
		
	}
}


function setCountCartList(){
	var num = 1;
	while(getCookie('cart' + num)){
	        num++;
	}
	$('#cartButton').attr('data-notify',num - 1);
	
}

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
    var data = new Object();
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
  
function dataTransfer() {
	jQuery(this).toggleClass('active');
	
}

//필터용 변수 선언
var productTPO;
var productSeason;
var productListPrice;
var productFabric;
var productShoulder;
var productArm;
var productLeg;
var productBody;
var colorCode;
var OrderByPrice;
var OrderByHitcount;
var OrderByStar;



//TPO 필터 선택 함수 -> 값 받아오는 로직까지 구현
$(function(){
	var sBtn = $("ul.finder_list_by_TPO > li");
	sBtn.find("input").click(function(){   
		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
	  			case 'Wedding':   productTPO = 'wedding'; 	break;
	  			case 'Meeting':   productTPO = 'meeting'; 	break;
	  			case 'Interview': productTPO = 'interview'; break;
	  			case 'Date':      productTPO = 'date'; 		break;
	  			default :         productTPO = null; 		break;
	  		}
	  		$("#productTPO").attr('value', productTPO);
		} else { // 클릭을 했는데 활성화가 되어있으면,
			$(this).removeClass('active');
			$('#productTPO').attr('value', null);
		}
	})
})

//계절별 필터 선택 함수
$(function(){
	var sBtn = $("ul.finder_list_by_Season > li");
	sBtn.find("input").click(function(){   
		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'Spring': productSeason = 'spring'; break;
				case 'Summer': productSeason = 'summer'; break;
				case 'Fall':   productSeason = 'fall'; 	 break;
				case 'Winter': productSeason = 'winter'; break;
				default : 	   productSeason = null; 	 break;
			}
	  		$("#productSeason").attr('value', productSeason);
		} else {
			$(this).removeClass('active');
			$("#productSeason").attr('value', null);
		}
	})
})

//가격대별 필터 선택 함수, 값도 반환
$(function(){
	var sBtn = $("ul.finder_list_by_Price > li"); 
	sBtn.find("input").click(function(){   
		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case '5to10': 	productListPrice = '50000/100000'; 	break;
				case '10to15': 	productListPrice = '100000/150000'; break;
				case '15to20':  productListPrice = '150000/200000';	break;
				case '20Plus': 	productListPrice = '200000/0'; 		break;
				default : 	   	productListPrice = null; 	 		break;
			}
	  		$("#productListPrice").attr('value', productListPrice);
		} else { // 클릭을 했는데 활성화가 되어있으면,
			$(this).removeClass('active');
			$('#productListPrice').attr('value', null);
		}
	})
})

//원단 종류별 필터 선택 함수, 값도 반환
$(function(){
	var sBtn = $("ul.finder_list_by_Fabric > li"); 	
	sBtn.find("input").click(function(){   
		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
			sBtn.children().removeClass('active');
	  		$(this).addClass('active'); 
	  		switch($(this).attr('id')) {
				case 'Silk': 	  productFabric = 'silk'; 	  break;
				case 'Wool': 	  productFabric = 'wool'; 	  break;
				case 'Cashmere':  productFabric = 'cashmere'; break;
				case 'Linen': 	  productFabric = 'linen'; 	  break;
				default : 	   	  productFabric = null; 	  break;
			}
	  		$("#productFabric").attr('value', productFabric);
		} else { // 클릭을 했는데 활성화가 되어있으면,
			$(this).removeClass('active');
			$('#productFabric').attr('value', null);
		}
	})
})

$(function(){
	var sBtn = $("ul.finder_list_by_Shoulder > li");  
	sBtn.find("input").click(function(){   
		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'Shoulder1':  productShoulder = '1';  break;
				case 'Shoulder2':  productShoulder = '2';  break;
				case 'Shoulder3':  productShoulder = '3';  break;
				default : 	   	   productShoulder = null; break;
	  		}
	  		$("#productShoulder").attr('value', productShoulder);
		} else { 
			$(this).removeClass('active');
			$('#productShoulder').attr('value', null);
		}
	})
})

$(function(){
	var sBtn = $("ul.finder_list_by_Arm > li");
	sBtn.find("input").click(function(){   
		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'Arm1':  productArm = '1';  break;
				case 'Arm2':  productArm = '2';  break;
				case 'Arm3':  productArm = '3';  break;
				default : 	  productArm = null; break;
			}
	  		$("#productArm").attr('value', productArm);
		} else { 
			$(this).removeClass('active');
			$('#productArm').attr('value', null);
		}
	})
})

$(function(){
	var sBtn = $("ul.finder_list_by_Leg > li");
	sBtn.find("input").click(function(){   
		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'Leg1':  productLeg = '1';  break;
				case 'Leg2':  productLeg = '2';  break;
				case 'Leg3':  productLeg = '3';  break;
				default : 	  productLeg = null; break;
			}
	  		$("#productLeg").attr('value', productLeg);
		} else { 
			$(this).removeClass('active');
			$('#productLeg').attr('value', null);
		}
	})
})

$(function(){
	var sBtn = $("ul.finder_list_by_Weight > li");
	sBtn.find("input").click(function(){   
		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'WeightSmall':   productBody = '1';  break;
				case 'WeightNormal':  productBody = '2';  break;
				case 'WeightBig':  	  productBody = '3';  break;
				default : 	  		  productBody = null; break;
			} 
	  		$("#productBody").attr('value', productBody);
		} else { 
			$(this).removeClass('active');
			$('#productBody').attr('value', null);
		}
	})
})

$(function(){
	var sBtn = $("ul.finder_list_by_Color > li");
	sBtn.find("input").click(function(){   
		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'Brown':   colorCode = 'BR';  	break;
				case 'Black':   colorCode = 'BK';  	break;
				case 'Gray' :  	colorCode = 'GR';  	break;
				case 'Navy' :  	colorCode = 'NV';  	break;
				default : 	    colorCode = null; 	break;
			} 
	  		$("#colorCode").attr('value', colorCode);
		} else { 
			$(this).removeClass('active');
			$('#colorCode').attr('value', null);
		}
	})
})

$(function(){
	var sBtn = $("ul.finder_list_by_Order > li");
	sBtn.find("input").click(function(){   
		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'LowPrice':   	  {
					OrderByPrice = 'ASC';   
					OrderByStar = null;
					OrderByHitcount = null;
					break;
				}
				case 'HighPrice':  {
					OrderByPrice = 'DESC';   
					OrderByStar = null;
					OrderByHitcount = null;  
					break;
				}
				case 'ReviewCount' :  {
					OrderByPrice = null;   
					OrderByHitcount = null;
					OrderByStar = 'DESC';  
					break;
				}
				case 'HitCount' :  	 {
					OrderByPrice = null;   
					OrderByHitcount = 'DESC'; 
					OrderByStar = 'DESC'; 
					break;
				}
				
				default : 	  {
					OrderByPrice = null;   
					OrderByHitcount = null; 
					OrderByStar = null; 
					break;
				}
			}
	  		$("#OrderByPrice").attr('value', OrderByPrice);
	  		$("#OrderByHitcount").attr('value', OrderByHitcount);
	  		$("#OrderByStar").attr('value', OrderByStar);
		} else { 
			$(this).removeClass('active');
			$("#OrderByPrice").attr('value', null);
	  		$("#OrderByHitcount").attr('value', null);
	  		$("#OrderByStar").attr('value', null);
		}
	})
})


function getMycustomInfo() {
	customerBody = $('#customerBody').val();
	customerShoulder = $('#customerShoulder').val();
	customerArm = $('#customerArm').val();
	customerLeg = $('#customerLeg').val();
	console.log('사용자 Body : ' + customerBody);
	console.log('사용자 Shoulder : ' + customerShoulder);
	console.log('사용자 Arm : ' + customerArm);
	console.log('사용자 Leg : ' + customerLeg);
	
	
	if(customerBody === '1') {
		$('#WeightSmall').addClass('active');
	} else if(customerBody === '2') {
		$('#WeightNormal').addClass('active');
	} else if(customerBody === '3') {
		$('#WeightBig').addClass('active');
	} else {
		
	}
	
	
	if(customerShoulder === '1') {
		$('#Shoulder1').addClass('active');
	} else if(customerShoulder === '2') {
		$('#Shoulder2').addClass('active');
		
	} else if(customerShoulder === '3') {
		$('#Shoulder3').addClass('active');
	} else {
		
	}
	
	
	if(customerArm === '1') {
		$('#Arm1').addClass('active');
	} else if(customerArm === '2') {
		$('#Arm2').addClass('active');
	} else if(customerArm === '3') {
		$('#Arm3').addClass('active');
	} else {
		
	}
	
	
	if(customerLeg === '1') {
		$('#Leg1').addClass('active');
	} else if(customerArm === '2') {
		$('#Leg2').addClass('active');
	} else if(customerArm === '3') {
		$('#Leg3').addClass('active');
	} else {
		
	}
	
	$('#productBody').val(customerBody);
	$('#productShoulder').attr('value', customerShoulder);
	$('#productArm').attr('value', customerArm);
	$('#productLeg').attr('value', customerLeg);
	
}


//필터 초기화 함수
function resetFilter() {
	$('.flex-c-m.stext-107.bor7.p-lr-15.hov-btn3.trans-04.m-r-5.m-b-5.active').attr('class','flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5');
	var productTPO = null;
	var productSeason = null;
	var productListPrice = null;
	var productFabric = null;
	var productShoulder = null;
	var productArm = null;
	var productLeg = null;
	var productBody = null;
	var colorCode = null;
	var OrderByPrice = null;
	var OrderByHitcount = null;
	var OrderByStar = null;
}


$(function(){
	$('.p-b-6').on('click', function(e){
		$('#selectResult').empty();
		$('#submitForm').submit();
	})
})


$(function(){
	$('#customize').on('click', function(e){
		console.log('일로 들어오니?');
		$('#selectResult').empty();
		$('#submitForm').submit();
	})
})

$(function(){
	$("#submitForm").submit(function(){
		var url = "/iceland/productAjax.es";
		
		// parameter로 전달할 params 객체 선언
		var params = new Object();
		
		// params 객체에 name=value 식으로 필터 조건 속성 할당 
		params.tpo= $('#productTPO').attr('value');
		params.season= $('#productSeason').attr('value');
		params.price= $('#productListPrice').attr('value'); 
		params.fabric= $('#productFabric').attr('value'); 
		params.shoulderType= $('#productShoulder').attr('value'); 
		params.armType= $('#productArm').attr('value'); 
		params.legType= $('#productLeg').attr('value'); 
		params.bodyType= $('#productBody').attr('value');
		params.color= $('#colorCode').attr('value');
		params.orderByPrice= $('#OrderByPrice').attr('value');
		params.orderByHitcount= $('#OrderByHitcount').attr('value');
		params.OrderByStar= $('#OrderByStar').attr('value');
		
		// parameter 매개변수화(&tpo=Wedding) 함수
		var param = $.param(params);
		
		ajax({
			method : "GET",
			url : url,
			param: param,
			callback : inputResult
		});
		return false;
	})
})





	/* 	param : JSON.parse('{"tpo":"'+productTPO+'"}'), */

function inputResult(result) {
	$('#selectResult').empty();
	$("#selectResult").html(result.responseText);
}



</script>

	<%@include file="../../includes/cart.jsp"%>
	<%@include file="..//../includes/favorite.jsp"%>
	<%@include file="../../includes/slider.jsp"%>
	
	
	<input type="hidden" id="customerBody" name="customerBody" value="${customerInfoList.customerBody}">
	<input type="hidden" id="customerShoulder" name="customerShoulder" value="${customerInfoList.customerShoulder}">
	<input type="hidden" id="customerArm" name="customerArm" value="${customerInfoList.customerArm}">
	<input type="hidden" id="customerLeg" name="customerLeg" value="${customerInfoList.customerLeg}">
		
	
	
	
	<form id="submitForm">
		<input type="hidden" id="productTPO" name="tpo" value=""> 
		<input type="hidden" id="productSeason"  name="season" value=""> 
		<input type="hidden" id="productListPrice"  name="price" value=""> 
		<input type="hidden" id="productFabric" name="fabric" value=""> 
		<input type="hidden" id="productShoulder" name="color" value=""> 
		<input type="hidden" id="productArm"  name="armType" value=""> 
		<input type="hidden" id="productLeg" name="legType" value=""> 
		<input type="hidden" id="productBody" name="bodyType" value=""> 
		<input type="hidden" id="colorCode" name="color" value=""> 
		<input type="hidden" id="OrderByPrice" name="orderByPrice" value="">
		<input type="hidden" id="OrderByHitcount"  name="orderByHitcount" value="">
		<input type="hidden" id="OrderByStar"  name="orderByStar" value="">
	</form>

	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<div class="flex-w flex-sb-m p-b-52">
				<%-- Filter, Search --%>
				<div class="flex-w flex-c-m m-tb-10">
					<div
						class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
						<i
							class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
						<i
							class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Filter
					</div>

					<div
						class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
						<i
							class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Search
					</div>
				</div>

				<%-- Search product --%>
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>

						<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text"
							name="search-product" placeholder="Search">
					</div>
				</div>

				<!-- Filter -->
				<!-- Filter -->
				<div class="dis-none panel-filter w-full p-t-10">
					<div
						class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
						<div class="filter-col1 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15 flex-c-m">By T.P.O</div>
							<ul class="finder_list_by_TPO">
								<li class="p-b-6"><input type="button" id="AllTPO"
									name="AllTPO" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="전체 (All)"></li>

								<li class="p-b-6"><input type="button" id="Wedding"
									name="Wedding" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="하객용 (Wedding)"></li>

								<li class="p-b-6"><input type="button" id="Meeting"
									name="Meeting" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="상견례용 (Meeting)"></li>

								<li class="p-b-6"><input type="button" id="Interview"
									name="Interview" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="면접용 (Interview)"></li>

								<li class="p-b-6"><input type="button" id="Date"
									name="Date" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="데이트용 (Date)"></li>
							</ul>
							<br>
							<div class="mtext-102 cl2 p-b-15 flex-c-m">By Season</div>
							<ul class="finder_list_by_Season">
								<li class="p-b-6"><input type="button" id="AllSeason"
									name="AllSeason" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="전체 (All Season)"></li>

								<li class="p-b-6"><input type="button" id="Spring"
									name="Spring" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="봄 (Spring)"></li>

								<li class="p-b-6"><input type="button" id="Summer"
									name="Summer" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="여름 (Summer)"></li>

								<li class="p-b-6"><input type="button" id="Fall"
									name="Fall" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="가을 (Fall)"></li>

								<li class="p-b-6"><input type="button" id="Winter"
									name="Winter" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="겨울 (Winter)"></li>
							</ul>
						</div>

						<div class="filter-col2 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15 flex-c-m">By Price</div>
							<ul class="finder_list_by_Price">
								<li class="p-b-6"><input type="button" id="AllPrice"
									name="AllPrice" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="전체 (All Price)"></li>

								<li class="p-b-6"><input type="button" id="5to10"
									name="5to10" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="50,000 ~ 100,000원 대"></li>

								<li class="p-b-6"><input type="button" id="10to15"
									name="10to15" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="100,000 ~ 150,000원 대"></li>

								<li class="p-b-6"><input type="button" id="15to20"
									name="15to20" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="150,000 ~ 200,000원 대"></li>

								<li class="p-b-6"><input type="button" id="20Plus"
									name="20Plus" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="200,0000원 이상"></li>
							</ul>
							<br>
							<div class="mtext-102 cl2 p-b-15 flex-c-m">By Fabric</div>
							<ul class="finder_list_by_Fabric">
								<li class="p-b-6"><input type="button" id="AllFabric"
									name="AllFabric" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="전체 (All Fabric)"></li>

								<li class="p-b-6"><input type="button" id="Silk"
									name="Silk" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="실크 (Silk)"></li>

								<li class="p-b-6"><input type="button" id="Wool"
									name="Wool" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="울 (Wool)"></li>

								<li class="p-b-6"><input type="button" id="Cashmere"
									name="Cashmere" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="캐시미어 (Cashmere)"></li>

								<li class="p-b-6"><input type="button" id="Linen"
									name="Linen" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="린넨 (Linen)"></li>
							</ul>
							<div class="mtext-102 cl2 p-b-15 flex-c-m">By Weight</div>
							<ul class="finder_list_by_Weight">
								<li class="p-b-6"><input type="button" id="WeightSmall"
									name="WeightSmall" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="마른편 (Skinny)"></li>

								<li class="p-b-6"><input type="button" id="WeightNormal"
									name="WeightNormal" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="보통 (Normal)"></li>

								<li class="p-b-6"><input type="button" id="WeightBig"
									name="prices" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="뚱뚱한편 (Fat)"></li>
							</ul>
						</div>


						<div class="filter-col3 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15 flex-c-m">By Color</div>
							<ul class="finder_list_by_Color">
								<li class="p-b-6"><input type="button" id="AllColor"
									name="AllColor" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="All Color"></li>

								<li class="p-b-6"><input type="button" id="Brown"
									name="Brown"
									style="width: 100%; color: white; background-color: #A65E2E; border-color: #A65E2E;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="Brown"></li>

								<li class="p-b-6"><input type="button" id="Black"
									name="Black"
									style="width: 100%; color: white; background-color: black; border-color: black;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="Black"></li>

								<li class="p-b-6"><input type="button" id="Gray"
									name="Gray"
									style="width: 100%; color: white; background-color: gray; border-color: gray;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="Gray"></li>

								<li class="p-b-6"><input type="button" id="Navy"
									name="Navy"
									style="width: 100%; color: white; background-color: #2A3858; border-color: #2A3858;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="Navy"></li>
							</ul>
							<br>

							<div class="mtext-102 cl2 p-b-15 flex-c-m">Order By</div>
							<ul class="finder_list_by_Order">
								<li class="p-b-6"><input type="button" id="LowPrice"
									name="LowPrice" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="낮은 가격 순(Low Price)"></li>

								<li class="p-b-6"><input type="button" id="HighPrice"
									name="HighPrice" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="높은 가격 순(High Price)"></li>

								<li class="p-b-6"><input type="button" id="ReviewCount"
									name="ReviewCount" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="평점 순(Reviews)"></li>

								<li class="p-b-6"><input type="button" id="HitCount"
									name="HitCount" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="조회수 순(HitCount)"></li>
							</ul>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<ul class="finder_list_by_Customize">
								<li id="customBtn">
								<input type="button" id="customize"
									name="customize" style="height: 50px; width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="나에게 맞는 옷 찾기" onclick="getMycustomInfo()"></li>
							</ul>
						</div>

						<div class="filter-col4 p-b-27 ">
							<div class="mtext-102 cl2 p-b-15 flex-c-m">By BodyType</div>
							<div class="mtext-100 cl2 p-b-15" style="font-weight: bold;">1.
								Shoulder Type (어깨)</div>
							<ul class="finder_list_by_Shoulder">
								<li class="p-b-6"><input type="button" id="Shoulder1"
									name="Shoulder1" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="좁은편 (narrow)"></li>

								<li class="p-b-6"><input type="button" id="Shoulder2"
									name="Shoulder2" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="보통 (normal)"></li>

								<li class="p-b-6"><input type="button" id="Shoulder3"
									name="Shoulder3" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="넓은편 (Wide)"></li>
							</ul>
							<br>
							<div class="mtext-100 cl2 p-b-15" style="font-weight: bold;">2.
								Arm Length (팔)</div>
							<ul class="finder_list_by_Arm">
								<li class="p-b-6"><input type="button" id="Arm1"
									name="Arm1" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="짧은편 (short)"></li>

								<li class="p-b-6"><input type="button" id="Arm2"
									name="Arm2" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="보통 (normal)"></li>

								<li class="p-b-6"><input type="button" id="Arm3"
									name="Arm3" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="긴편 (long)"></li>
							</ul>
							<br>
							<div class="mtext-100 cl2 p-b-15" style="font-weight: bold;">3.
								Leg Length (다리길이)</div>
							<ul class="finder_list_by_Leg">
								<li class="p-b-6"><input type="button" id="Leg1"
									name="Leg1" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="짧은편 (short)"></li>

								<li class="p-b-6"><input type="button" id="Leg2"
									name="Leg2" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="보통 (normal)"></li>

								<li class="p-b-6"><input type="button" id="Leg3"
									name="Leg3" style="width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="긴편 (long)"></li>
							</ul>
							<br> <br>
							<ul class="finder_reset">
								<li class="p-b-6"><input type="button" id="reset"
									name="reset" onclick="resetFilter()"
									style="height: 50px; width: 100%;"
									class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5"
									value="필터 초기화 (reset)"></li>
							</ul>
						</div>
					</div>
					<div class="filter_result"></div>
				</div>
			</div>


		<div id="selectResult">
			<div class="row isotope-grid">
				<c:forEach items="${jsonObjectList}" var="product">
					<c:set var="imageRef" value="${product.imageRef}" />
					<c:if test="${fn:contains(imageRef,'main$1')}">
						<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="${product.get('imageRef')}" alt="IMG-PRODUCT">
									<a href="#"	class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1 brief-view">
										<input type="hidden" value="${product.productNum}">
										Quick View
									</a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="/iceland/product/details.es?productNum=${product.productNum}" 
										    class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											${product.productName} </a>
											<span class="stext-105 cl3"> ₩ ${product.productListPrice} 원 </span>
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
	<script
		src="/iceland/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
	<script
		src="/iceland/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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
	
	
	function refreshwish(){
	var arrayProduct = new Array();
	var wishcookies = new Array();
		
    var cookieNum = 1;
    while(getCookie('wish' + cookieNum)){
    	var obj = decodeURIComponent(getCookie('wish' + cookieNum)).substring(1,decodeURIComponent(getCookie('wish' + cookieNum)).length - 1);
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
	
	  $('.btn-addwish-b2').unbind("click").on('click',function(e){
		    var prior = 1;
		    while(getCookie('wish' + prior)){
		        prior++;
		    }
		  console.log(e);
		  
		  Test = e;
		  var str = "btn-addwish-b2 dis-block pos-relative js-addwish-b2";
		  
		  if( $(e.currentTarget).attr('class')=== str){
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
          $('#wishButton').attr('data-notify',testNum - 2);

		  }
	  });
	</script>
</body>
</html>