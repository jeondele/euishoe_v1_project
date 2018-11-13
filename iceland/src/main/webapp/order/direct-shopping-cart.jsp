<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="/iceland/order/shopping-cart.css">
<!--===============================================================================================-->
<script src="/iceland/vendor/jquery/jquery-3.2.1.min.js"></script>
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

#rcvr, #rcvrBaseAddr, #rcvrDetailAddr, #phoneNumberSelect, #phoneNumber2,
	#phoneNumber3, #requireComment {
	height: 40px;
}
</style>

<!-- 회원 비회원 확인을 위한 loginId쿠키 확인 -->
<script type="text/javascript">
	window.onload = function() {
		var loginId = getCookie('loginId');
		// 비회원인경우, 주소관련 버튼 안보이게, point영역 안보이게
		if (loginId == null) {
			console.log('비회운인경우 입니다.');
			// 기본배송지, 새 배송지 없애기
			$('#defaultAddr').css('display', 'none');
			$('#newAddr').css('display', 'none');
			// 결제의 포인트부분 없애기
			$('.pointDiv').css('display', 'none');
		}

		// 품목당 수량, 가격에 id값 동적 부여
		dynamicGrantId();
		//cntChange();
		$('#cnt').change(
				function() {
					var val = $('#cnt').val();
					var price = Number($('#price').text());
					console.log('총 가격계산 함수 진입!!!!!!cnt값' + val
							+ 'price(단품 한개)값:' + price);
					var sum = price * Number(val);
					console.log('!!!!!총가격 계산값: ' + sum)
					$('#totalPrice').text(sum);
				});

	};

	// 새로운 배송지 클릭 시, 주소 input feild clear해주는 함수..->태그에 onclick걸어줌
	function clearAddrInput() {
		$('#postNum').val('');
		$('#address').val('');
		$('#address_detail').val('');
	}

	// 상품 수량 element에 id값 동적 부여
	function dynamicGrantId() {
		var row; // 상품하나가 차지하는 table의 row
		for (var i = 0; i < $('.table_row').length; i++) {
			row = $('.table_row')[i];

			// 가격에 id 부여
			row.children[3].setAttribute('id', 'price');

			// 수량 up, down element에 id 부여
			row.children[4].children[0].children[0].setAttribute('id',
					'cntDown');
			row.children[4].children[0].children[1].setAttribute('id', 'cnt');
			row.children[4].children[0].children[2].setAttribute('id', 'cntUp');

			// 품목당 총가격에 id 부여
			row.children[5].setAttribute('id', 'totalPrice');
		}
		//cntChange();
	}

	// 수량 up, down
	function cntChange() {
		console.log("수량변화함수 적용");
		// 현재수량
		var curCnt = $('#cnt').val();

		// 수량 up클릭시
		$('#cntUp').click(function() {
			console.log('up clicked!!!!!!!!');
			// 수량 ++
			var cnt = Number($('#cnt').val()) + 1; //number타입
			$('#cnt').val(cnt);
			$('#cnt').change(sumPrice());
		});

		// 수량 down클릭시
		$('#cntDown').click(function() {
			console.log('down clicked!!!!!!!!curCnt값:' + curCnt);
			if ($('#cnt').val() != 1) {
				var cnt = Number($('#cnt').val()) - 1;
				$('#cnt').val(cnt);
				$('#cnt').change(sumPrice());
			} else if ($('#cnt').val() == 1) {
				return;
			}
		});
	}

	// 품목당 총 가격
	function sumPrice() {
		var val = $('#cnt').val();
		var price = Number($('#price').text());
		console.log('총 가격계산 함수 진입!!!!!!cnt값' + val + 'price(단품 한개)값:' + price);
		var sum = price * Number(val);
		console.log('!!!!!총가격 계산값: ' + sum)
		$('#totalPrice').text(sum);
	}
</script>
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
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart" id="tableCart">
								<tr class="table_head">
									<th class="column-1">My 주문</th>
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
								<tr class="table_row">
									<c:forEach items="${productInfo}" var="product">
										<c:set var="imageRef" value="${product.imageRef}" />
										<fmt:formatNumber value="${product.productListPrice}"
											type="number" var="productPrice" />
										<fmt:parseNumber var="priceInt" type="number"
											value="${product.productListPrice}" />
										<fmt:formatNumber value="${priceInt * productCount}"
											type="number" var="productTotalPrice" />
										<c:if test="${fn:contains(imageRef,'main$1')}">
											<td class="column-1 txt-center"><input type="checkbox"
												value="None" class="roundedOne" name="check" checked /></td>
											<td class="column-2 txt-center">
												<div class="how-itemcart1">
													<img src="${imageRef}" alt="IMG" />
												</div>
											</td>
											<td class="column-3 txt-center">${product.productName}</td>
											<c:forEach items="${codes}" var="code" >
											<input type="hidden" name="codes" value = "${code}">
											</c:forEach>
											<td class="column-4 txt-center">₩ ${productPrice} 원</td>
											<td class="column-5 txt-center">
												<div class="wrap-num-product flex-w m-l-auto m-r-auto">
													<div
														class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
														<i class="fs-16 zmdi zmdi-minus"></i>
													</div>

													<input class="mtext-104 cl3 txt-center num-product"
														type="text" name="num-product1" value="${productCount}">

													<div
														class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
														<i class="fs-16 zmdi zmdi-plus"></i>
													</div>
												</div>
											</td>
										</c:if>
									</c:forEach>
									<td class="column-6 txt-center">₩ ${productTotalPrice} 원</td>
								</tr>
							</table>
						</div>

						<div
							class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div
								class="float-r flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">선택삭제</div>
							<div
								class="float-r flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5"
								id="delete_All">전체삭제</div>
						</div>
							<c:forEach items="${customerOrderInfo}" var="customer">
							<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
								<div class="select-ship">
									<a id="defaultAddr"
										class="float-l flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5"
										data-toggle="tab" href="#home">기본 배송지</a> <span
										class="float-l">&nbsp;&nbsp;</span> <span class="float-l">&nbsp;&nbsp;</span>
									<a id="newAddr"
										class="float-l flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5"
										data-toggle="tab" onclick="clearAddrInput()">새로운 배송지</a>
								</div>
								<div class="tab-content">
									<div id="home" class="deliveryAddress" style="width: 100%;">
										<div style="display: block">
											<table>
												<colgroup>
													<col style="width: 150px;">
													<col style="width: 678px;">
												</colgroup>
												<tbody>
													<tr>
														<th>수령자</th>
														<td><input type="text" id="rcvr" name="rcvr" value="${customer.customerName}"> </td>
													</tr>

													<tr>
														<th>주소</th>
														<td><input type="text" id="postNum"
															name="postCodeAddr" maxlength="6" readonly
															onkeypress="javascript:common.onlyNumberInput(event);"
															style="ime-mode: disabled; width: 70px;" title="우편번호" value = "${customer.customerPostcode}"/>
															<input type="button" onclick="sample2_execDaumPostcode()"
															class="flex-c-m stext-101 cl2 size-100 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5"
															value="주소찾기" style="display: inline;" /><br> <input
															type="text" id="address" name="rcvrBaseAddr"
															maxlength="300" title="기본주소 입력"
															class="inp_address int-selected" value = "${customer.customerAddress}" readonly> <input
															type="text" id="address_detail" name="rcvrBaseAddr"
															maxlength="300" title="상세주소 입력"
															class="inp_address int-selected"></td>
													</tr>

													<tr>
														<th>휴대전화</th>
														<td><select id="phoneNumberSelect"
															style="margin-left: 5px;" name="phoneNumberSelect"
															title="휴대전화-국번선택">
																<option value="010">010</option>
																<option value="011">011</option>
																<option value="016">016</option>
																<option value="017">017</option>
																<option value="018">018</option>
																<option value="019">019</option>
														</select> &nbsp;-&nbsp; 
														<c:set var="phoneParts" value="${fn:split(customer.customerPhoneNumber, '-')}" />
														<input type="text" id="phoneNumber2"
															name="tmprcvrPrtblNo" maxlength="4"
															onkeypress="javascript:common.onlyNumberInput(event);"
															title="휴대전화두번째자리" style="width: 60px;" value="${phoneParts[1]}">
															&nbsp;-&nbsp; <input type="text" id="phoneNumber3"
															name="tmprcvrPrtblNo" maxlength="4"
															onkeypress="javascript:common.onlyNumberInput(event);"
															title="휴대전화세번째자리" style="width: 60px;" value="${phoneParts[2]}"></td>
													</tr>

													<tr>
														<th>배송 요청사항</th>
														<td><input type="text" id="requireComment"
															name="requireComment"></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>

									<div id="menu1" class="tab-pane fade"></div>

									<div id="menu2" class="tab-pane fade"></div>
								</div>
							</div>
							</c:forEach>
					</div>
				</div>

					<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
						<div
							class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
							<h4 class="mtext-109 cl2 p-b-30">MY 결제</h4>

							<div class="flex-w flex-t bor12 p-b-13">
								<div class="size-208">
									<span class="stext-110 cl2"> Subtotal: </span>
								</div>

								<div class="size-209">
									<span class="mtext-110 cl2"> ₩ ${productTotalPrice} 원 </span>
								</div>
							</div>

							<div class="flex-w flex-t bor12 p-t-15 p-b-30">
								<div class="size-208 w-full-ssm">
									<span class="stext-110 cl2"> 결제방법 </span>
								</div>
								<div style="padding-top: 0" class="size-208 p-t-15 w-full-ssm">
									<div style="margin-top: 0"
										class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
										<!-- class="js-select2" -->
										<select
											style="border-radius: 3px; height: 30px; cursor: pointer"
											name="payMethod">
											<option value="noBank">무통장 입금</option>
											<option value="cart">카드결제</option>
											<option value="phone">휴대폰 결제</option>
										</select>
									</div>
								</div>
								<div class="size-208 p-t-15 w-full-ssm pointDiv">
									<span class="stext-110 cl2"> 현재 포인트 </span>
								</div>
								<div class="size-208 p-t-15 w-full-ssm pointDiv">
									<span class="stext-110 cl2">
									<c:forEach items="${customerOrderInfo}" var="customer2">		
										 <strong>${customer2.SUMPOINT } P</strong>
									</c:forEach>	
									</span>
								</div>
								
								<div class="size-208 p-t-15 w-full-ssm pointDiv">
									<span class="stext-110 cl2"> 사용 포인트 </span>
								</div>
								<div class="size-208 p-t-15 w-full-ssm pointDiv">
								
									<span class="stext-110 cl2"> <strong><input type="text" id="usingPoint">P</strong>
									</span>
								</div>
								<div class="size-208 p-t-15 w-full-ssm">
									<span class="stext-110 cl2"> 배송비 </span>
								</div>

								<div class="size-208 p-t-15 w-full-ssm">
									<span class="stext-110 cl2"> 2500 원 </span>
								</div>
							</div>

							<div class="flex-w flex-t p-t-27 p-b-33">
								<div class="size-208">
									<span class="mtext-101 cl2"> Total: </span>
								</div>

								<div class="size-209 p-t-1">
									<span class="mtext-110 cl2">  </span>
								</div>
							</div>

							<button id="doneOrder"
								class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
								결제하기</button>
						</div>
					</div>
			</div>
		</div>
	<form id="sendToDoneOrder" action="/iceland/ordersucc.es">	
		<input type="hidden" name="sendProductCode" id="post1"/>
		<input type="hidden" name="sendPantsCode" id="post2"/>
		<input type="hidden" name="sendJacketCode" id="post3"/>
		<input type="hidden" name="sendProductNum" id="post4"/>
		<input type="hidden" name="sendProductCount" id="post5"/>
		<input type="hidden" name="sendPaymentPoint" id="post6"/>
		<input type="hidden" name="sendPaymentMethod" id="post7"/>
		<input type="hidden" name="sendTotalCost" id="post8"/>
		<input type="hidden" name="sendDeliveryAddress1" id="post9"/>
		<input type="hidden" name="sendDeliveryAddress2" id="post10"/>
		<input type="hidden" name="sendDeliveryRecipient" id="post11"/>
		<input type="hidden" name="sendDeliveryRecipientPhoneNumber" id="post12"/>
		<input type="hidden" name="sendDeliveryRequirement" id="post13"/>
	</form>

	<%@include file="/iceland/../includes/footer.jsp"%>

	<%@include file="/iceland/../includes/QuickMenu.jsp"%>

	<script>
	$(function(){
		$("#doneOrder").on("click",function(){
			$("#sendToDoneOrder").submit();
		})
	})
	
	</script>
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
	<!--===============================================================================================-->
	<script src="/iceland/js/main.js"></script>

	<!--===============================================================================================-->
	<!-- 주소검색 api -->
	<div id="layer"
		style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img
			src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
			id="btnCloseLayer"
			style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
			onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="/iceland/js/address.js"></script>
	<script src="/iceland/js/ajax.js"></script>
	<!--===============================================================================================-->
    <script type="text/javascript">
    
    // hidden 입력인자
    
    $('#post1').val(getQuerystring('productCode'));
    	$('#post2').val(getQuerystring('productCode').split('$')[0] + '$' + 'pt' + '$' + getQuerystring('productCode').split('$')[2] + '$' + getQuerystring('productCode').split('$')[3]);
    	$('#post3').val(getQuerystring('productCode').split('$')[0] + '$' + 'jk' + '$' + getQuerystring('productCode').split('$')[1] + '$' + getQuerystring('productCode').split('$')[3]);
    	$('#post4').val(getQuerystring('productNum'));
    	$('#post5').val(getQuerystring('productCount'));
    	$('#usingPoint').onkeyup = function(){
            $("#post8").val(parseInt(replaceAll($('.mtext-110.cl2')[0].innerText.substring(3,$('.mtext-110.cl2')[0].innerText.length - 3),',','')) - $('#usingPoint').val());   
            $('.mtext-110.cl2')[0].innerText = (parseInt(replaceAll($('.mtext-110.cl2')[0].innerText.substring(3,$('.mtext-110.cl2')[0].innerText.length - 3),',','')) - $('#usingPoint').val());
         });
    	$('#usingPoint').on('change',function(){
    		$('#post6').val($('#usingPoint').val());
    		
    		// 총합
    		$("#post8").val(parseInt(replaceAll($('.mtext-110.cl2')[0].innerText.substring(3,$('.mtext-110.cl2')[0].innerText.length - 3),',','')) - $('#usingPoint').val());
    		
    		console.log(6);
    	})
    	
    	$($('[name="payMethod"]')[0]).on('change',function(){
    		$('#post7').val($('[name="payMethod"]')[0].value);
    		console.log(7);
    	})
    	
    	$('#address').on('change',function(){
    		$('#post9').val($('#address').val());
    		console.log(9);
    	})
    	
    	$('#address_detail').on('change',function(){
    		$('#post9').val($('#address').val());
    	    $('#post10').val($('#address_detail').val());
    	    console.log(10);
    	})
    	
    	$('#rcvr').on('change',function(){
    		$('#post11').val($('#rcvr').val());
    		console.log(11);
    	})
    	
    	$('#post12').val($('#phoneNumberSelect').val() + '-' + $('#phoneNumber2').val() + '-' + $('#phoneNumber3').val());
    	$('#phoneNumberSelect').on('change',function(){
    		$('#post12').val($('#phoneNumberSelect').val() + '-' + $('#phoneNumber2').val() + '-' + $('#phoneNumber3').val());
    		console.log(11);
    	})
    	
    	$('#phoneNumber2').on('change',function(){
    		$('#post12').val($('#phoneNumberSelect').val() + '-' + $('#phoneNumber2').val() + '-' + $('#phoneNumber3').val());
    		console.log(11);
    	})
    	$('#phoneNumber3').on('change',function(){
    		$('#post12').val($('#phoneNumberSelect').val() + '-' + $('#phoneNumber2').val() + '-' + $('#phoneNumber3').val());
    		console.log(11);
    	})
    	
    	$('#requireComment').on('change',function(){
    		$('#post13').val($('#requireComment').val());
    		console.log(13);
    	});
    $(document).ready(function(){
    	
    	
    })
   
    </script>
</body>
</html>