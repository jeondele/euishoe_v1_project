<%@ page contentType="text/html; charset=utf-8"%>
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
<link rel="stylesheet" type="text/css" href="/iceland/order/shopping-cart.css">
<link rel="stylesheet" type="text/css" href="/iceland/product/details/product_detail.css">
<!--===============================================================================================-->
<!-- <link rel="stylesheet" type="text/css" href="/iceland/product/detail/product.css"> -->
  <!--===============================================================================================-->
<script src="/iceland/vendor/jquery/jquery-3.2.1.min.js"></script>
<style>
.nav-tabs{
border-bottom: 1px solid #ddd;
}

.nav{
  list-style: none;
}

.nav-tabs.nav-justified{
  width: 100%;
}

tr{
display: table-row;
}

#rcvr, #rcvrBaseAddr, #rcvrDetailAddr, #phoneNumberSelect, #phoneNumber2, #phoneNumber3, #requireComment {
height: 40px;
}

</style>

<!-- 회원 비회원 확인을 위한 loginId쿠키 확인 -->
<script type="text/javascript">
window.onload = function () {
	var loginId = getCookie('loginId');
	// 비회원인경우, 주소관련 버튼 안보이게, point영역 안보이게
	if(loginId == null){
		console.log('비회운인경우 입니다.');
		$('.select-ship').remove();
		// 기본배송지, 새 배송지 없애기
		$('#defaultAddr').css('display', 'none');
		$('#newAddr').css('display', 'none');
		// 결제의 포인트부분 없애기
		$('.pointDiv').css('display', 'none');
	}else{
		//비동기로 customer 정보 가져오기
	}
	
};


</script>
</head>
<body class="animsition">
  <%@include file="/iceland/../includes/header.jsp"%>
  <%@include file="/iceland/../includes/cart.jsp"%>
  <%@include file="/iceland/../includes/favorite.jsp"%>
  <!-- breadcrumb -->
  <div class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
      <a href="index.jsp" class="stext-109 cl8 hov-cl1 trans-04">
        Home <i class="fa fa-angle-right m-l-9 m-r-10"
        aria-hidden="true"></i>
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
									<th class="column-2">
									<c:forEach items="${codes}" var="code">
									<input type="text" name="Pcode" value="${code }">
									</c:forEach>
									</th>
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
                            <div class="float-r flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" id="delete_selected">선택삭제</div>
							<div class="float-r flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" id="delete_All">전체삭제</div>
						</div>
						

            <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
            <div class="select-ship">
                <a id="defaultAddr" class="float-l flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" data-toggle="tab" href="#home">기본 배송지</a>
                <span class="float-l">&nbsp;&nbsp;</span>
               
                <span class="float-l">&nbsp;&nbsp;</span>
                <a id="newAddr" class="float-l flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" data-toggle="tab">새로운 배송지</a>
            </div>
              <div class="tab-content">
                <div id="home" class="deliveryAddress" style="width:100%;">
                <div style="display:block">
                  <table>
                  <colgroup>
 					<col style="width: 150px;">
                  	<col style="width: 678px;">             
                  </colgroup>
                  <tbody>
                    <tr>
                      <th>수령자</th>
                      <td><input type="text" id="rcvr" name="rcvr"></td>
                     </tr>
                     
                     <tr>
                      <th>주소</th>
                      <td>
                      <input type="text" id="postNum" name="postCodeAddr" maxlength="6" readonly onkeypress="javascript:common.onlyNumberInput(event);" style="ime-mode:disabled;width:70px;" title="우편번호"/>
                       	<input type="button" onclick="sample2_execDaumPostcode()" class="flex-c-m stext-101 cl2 size-100 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" value="주소찾기" style="display:inline;"/><br>
                        <input type="text" id="address" name="rcvrBaseAddr" maxlength="300" title="기본주소 입력" class="inp_address int-selected" readonly>
                        <input type="text" id="address_detail" name="rcvrBaseAddr" maxlength="300" title="상세주소 입력" class="inp_address int-selected" >
                      </td>
                     </tr>
                     
                    <tr>
                       <th>휴대전화</th>
                       <td>
          <select id="phoneNumberSelect" style="margin-left: 5px;" name="phoneNumberSelect" title="휴대전화-국번선택">
            <option value="010">010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
          </select> &nbsp;-&nbsp;
          <input type="text" id="phoneNumber2" name="tmprcvrPrtblNo" maxlength="4" onkeypress="javascript:common.onlyNumberInput(event);" title="휴대전화두번째자리" style="width: 60px;"> &nbsp;-&nbsp;
          <input type="text" id="phoneNumber3" name="tmprcvrPrtblNo" maxlength="4" onkeypress="javascript:common.onlyNumberInput(event);" title="휴대전화세번째자리" style="width: 60px;">
        </td>
                     </tr>
                     
                     <tr>
                       <th>배송 요청사항</th>
                       <td><input type="text" id="requireComment" name="requireComment"></td>
                     </tr>
                  </tbody>
                  </table>
                  </div>
                </div>
                
                <div id="menu1" class="tab-pane fade">

                </div>
                
                <div id="menu2" class="tab-pane fade">

                </div>
                
                
              </div>
            </div>

          </div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							MY 결제
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									Subtotal:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									$79.65
								</span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									결제방법
								</span>
							</div>
							<div style="padding-top: 0" class="size-208 p-t-15 w-full-ssm">
								<div style="margin-top: 0; border:none" class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
									<!-- class="js-select2" -->
									<select id="payMethod" style="border-radius: 3px; height:30px;  cursor: pointer" name="payMethod">
										<option value = "noBank">무통장 입금</option>
										<option value = "card">카드결제</option>
										<option value = "phone">휴대폰 결제</option>
									</select>
								</div>
							</div>
							<div class="size-208 p-t-15 w-full-ssm pointDiv">
								<span class="stext-110 cl2">
									현재 포인트
								</span>
							</div>
							<div class="size-208 p-t-15 w-full-ssm pointDiv">
								<span class="stext-110 cl2">
									2000 <strong>P</strong> 
								</span>
							</div>
							<div class="size-208 p-t-15 w-full-ssm pointDiv">
								<span class="stext-110 cl2">
									사용 포인트
								</span>
							</div>
							<div class="size-208 p-t-15 w-full-ssm pointDiv">
								<span id="point" class="stext-110 cl2">
									0 <strong>P</strong>
								</span>
							</div>
							<div class="size-208 p-t-15 w-full-ssm">
								<span class="stext-110 cl2">
									배송비
								</span>
							</div>
							
							<div class="size-208 p-t-15 w-full-ssm">
								<span class="stext-110 cl2">
									2500 원
								</span>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Total:
								</span>
							</div>

							<div class="size-209 p-t-1">
								<span id="total" class="mtext-110 cl2">
									0
								</span>
							</div>
						</div>

						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" data-toggle="modal" data-target="#popLayWrap3">
							결제하기
						</button>
					</div>
				</div>
				</div>
			</div>
		</div>
	</form>
	
<!-- 결제완료시 제출될 폼 -->
<form id = "sendToDoneOrder">
      <input type="hidden" id="sendProductCode" name="sendProductCode" value="">
      <input type="hidden" id="sendPantsCode" name="sendPantsCode" value="">
      <input type="hidden" id="sendJacketCode" name="sendJacketCode" value="">
      <input type="hidden" id="sendProductNum" name="sendProductNum" value="">
      <input type="hidden" id="sendProductCount" name="sendProductCount" value="">
      <input type="hidden" id="sendPaymentPoint" name="sendPaymentPoint" value="">
      <input type="hidden" id="sendPaymentMethod" name="sendPaymentMethod" value="">
      <input type="hidden" id="sendTotalCost" name="sendTotalCost" value="">
      <input type="hidden" id="sendDeliveryAddress1" name="sendDeliveryAddress1" value="">
      <input type="hidden" id="sendDeliveryAddress2" name="sendDeliveryAddress2" value="">
      <input type="hidden" id="sendDeliveryRecipient" name="sendDeliveryRecipient" value="">
      <input type="hidden" id="sendDeliveryRecipientPhoneNumber" name="sendDeliveryRecipientPhoneNumber" value="">
      <input type="hidden" id="sendDeliveryRequirement" name="sendDeliveryRequirement" value="">
</form>

  <%@include file="/iceland/../includes/footer.jsp"%>

  <%@include file="/iceland/../includes/QuickMenu.jsp"%>

  <%@include file="/iceland/../includes/payResultModal.jsp" %>
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
  <!--확인 및 수정 완료(by sw)================================================================================-->  
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
		});
	});
			
	$('.how-itemcart1').bind("click",function(e){
		e.currentTarget.parentElement.parentElement.remove();
	});

		
	// 결제창 금액 설정 함수
	function sumUp(){
		console.log('subTotal계산함수 진입');
		var sum = 0;
		var num = 0;
		var shipping = document.getElementsByClassName('stext-110 cl2')[7].innerText; //배송료
		var point = document.getElementsByClassName('stext-110 cl2')[5].innerText;	  //사용 포인트
		for(var i = 1; i < $('.column-6.txt-center').length; i++){
			sum += parseFloat($('.column-6.txt-center')[i].innerText.trim());
		}
		
		$('.mtext-110.cl2')[0].innerText = sum; //ui상 subTotal값
		$('.mtext-110.cl2')[1].innerText = sum + parseFloat(shipping) - parseFloat(point);// total값(주문금액(subTotal)+배송료+포인트)
		
	};
	
	//cart아이템 삭제(쿠키까지 삭제)함수(param e)
	function deleteItem(e) {
		var deleteNum = parseInt($(e.currentTarget).attr('value')); 
        setCookie('cart' + deleteNum,'',0);
        
        // 지운 후 정렬 
        var testNum = deleteNum + 1;
        
        while(getCookie('cart' + testNum)){
            testNum++;
        }
        
        for(var i = deleteNum + 1; i < testNum; i++){
            setCookie('cart' + (i-1),getCookie('cart' + i),1);
            if(i == testNum - 1){
                setCookie('cart' + i,'',0);
            }
        }
        
        $(e.currentTarget).parents()[1].remove();
        $('#cartButton').attr('data-notify',testNum - 2);
        sumUp();
	}
	
	//전체삭제 클릭시 실행
	function deleteAllItem() {
		for(var cartNum = 1; cartNum<=$('.table_row').length; cartNum++){
			setCookie('cart'+cartNum, '', 0);
		}
		$('.table_row').remove();
		$('#cartButton').attr('data-notify',0); 
		
		sumUp();
	}
	
	// 전체삭제 버튼 클릭 시 발생
	$('#delete_All').click(function() {
		deleteAllItem();
	});
	
	// 선택 삭제 버튼 클릭 시 발생(deleteItem(e)함수 내용 실행 but event의 target찾아갈 수 없어서 중복해서 씀..ㅠ)
	$('#delete_selected').click(function() {
		
		for(var i=0; i<$('.table_row').length; i++){
			console.log('카트수만큼 들어온다');
			//체크가 되어있으면 
			if($('.roundedOne')[i].checked){
				//쿠키지움
				var cartNum = i+1;
				setCookie('cart'+cartNum, '', 0);
				var cartNum = $('.table_row').length -1;
				for(var j=1; j<=cartNum; j++){
					setCookie('cart'+cartNum, getCookie('cart'+(cartNum+1)),1);
				}
				
				//row지움
				document.getElementsByClassName('roundedOne')[i].parentElement.parentElement.remove();
				
				
				/* //정렬
				//i+1쿠키가 삭제, i+2쿠키를 i+1쿠키로 set
				cartNum;
				setCookie('cart'+cartNum, getCookie('cart'+(cartNum+1)), 1);
				setCookie('cart'+(cartNum+1),'',0); */
				// 카트아이콘 보여지는 숫자세팅
				/* var cnum = Number($('#cartButton').attr('data-notify'))-1;
				$('#cartButton').attr('data-notify', cnum); */
			}
		}
		// 다돌고 check모두 true
		for(var n=0; n<$('.table_row'); n++){
			$('.roundedOne')[n].checked = true;
		}
		$('#cartButton').attr('data-notify', $('.table_row').length);
		sumUp();
	});
	
	// cart에 담긴 아이템 table에 뿌려주고 수량 변화 이벤트
	 $(document).ready(function() {
		    
			/*if(getQuerystring(productCode))*/
			var prior = 1;
			var checksum = 0; 
			
			while(getCookie('cart' + prior)) {
				var obj = decodeURIComponent(getCookie('cart' + prior)).substring(1,decodeURIComponent(getCookie('cart' + prior)).length - 1);
				var jsonObj = JSON.parse(obj);
				var jsonProductSize = jsonObj.PRODUCT_CODE || '';
				
				if(jsonProductSize != ''){
					jsonProductSize = '(상의 : ' + jsonObj.PRODUCT_CODE.split('$')[1] + ', 하의 : ' + jsonObj.PRODUCT_CODE.split('$')[2] + ')';
				}
				
				var str = "";
				
				str += '<tr class="table_row"><td class="column-1 txt-center"><input type="checkbox" value="None" class="roundedOne" name="check" checked />';
				str += '</td><td class="column-2 txt-center"><div class="how-itemcart1" value="' + prior + '"><img src="' + jsonObj.image_ref + '" alt="IMG"/></div>';
				str += '</td><td class="column-3 txt-center">' + jsonObj.PRODUCT_NAME + '<br>' + jsonProductSize + '</td><td class="column-4 txt-center">' + jsonObj.PRODUCT_PRICE + '</td>';
				str += '<td class="column-5 txt-center"><div class="wrap-num-product flex-w m-l-auto m-r-auto">';
				str += '<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m"><i class="fs-16 zmdi zmdi-minus"></i></div>';
                str += '<input class="mtext-104 cl3 txt-center num-product"	type="number" name="num-product1" value="' + jsonObj.product_count + '">';
                str += '<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m"><i class="fs-16 zmdi zmdi-plus"></i>';
				str += '</div></div></td><td class="column-6 txt-center">' + (jsonObj.PRODUCT_PRICE * jsonObj.product_count) + '</td></tr>';
				$('#tableCart').append(str);

				checksum += jsonObj.product_count * jsonObj.PRODUCT_PRICE;
				prior++;
			}
			
			$('#cartButton').attr('data-notify',prior - 1);
			$('.mtext-110.cl2')[0].innerText =  checksum;
			$('.mtext-110.cl2')[1].innerText = (checksum + parseInt($('.stext-110.cl2')[7].innerText.trim().substring(0,$('.stext-110.cl2')[7].innerText.trim().length -2)));
			
			//$('.how-itemcart1').unbind("click").on('click', deleteItem);
 			// 상품이미지 클릭 시 해당상품 cart에서 지우기
			$('.how-itemcart1').unbind("click").on('click',function(e){
	            var deleteNum = parseInt($(e.currentTarget).attr('value')); 
	            setCookie('cart' + deleteNum,'',0);
	            
	            // 지운 후 정렬 
	            var testNum = deleteNum + 1;
	            
	            while(getCookie('cart' + testNum)){
	                testNum++;
	            }
	            
	            for(var i = deleteNum + 1; i < testNum; i++){
	                setCookie('cart' + (i-1),getCookie('cart' + i),1);
	                if(i == testNum - 1){
	                    setCookie('cart' + i,'',0);
	                }
	            }
	            
	            $(e.currentTarget).parents()[1].remove();
	            $('#cartButton').attr('data-notify',testNum - 2);
	            sumUp();
	        });
 			
			// 수량up 클릭이벤트 걸어주는 함수//////////////////////////////////
			$('.btn-num-product-up').bind("click",function(e){
				console.log('수량up 함수 들어오나');
				// 수량 +버튼
				var num = Number(e.currentTarget.parentElement.children[1].value);
				// 현재 수량+1을 수량의 value값에 할당
				e.currentTarget.parentElement.children[1].value = num+1;
				
				// 수량에 맞게 price 설정....
				// 품목당 가격
				var price = parseFloat(e.currentTarget.parentElement.parentElement.parentElement.children[3].innerText); 
				// 품목당 가격(price) * 수량(num) 값을 해줌
				var sumPrice = price * Number(e.currentTarget.parentElement.children[1].value);
				e.currentTarget.parentElement.parentElement.parentElement.children[5].innerText = sumPrice;
				
				sumUp();
				
			});
			/////////////////////////////////////////////////////////////////
			// 수량down 클릭이벤트 걸어주는 함수////////////////////////////
			$('.btn-num-product-down').bind("click",function(e){
				console.log('수량down함수 들어옴');
				var num = Number(e.currentTarget.parentElement.children[1].value);
				if(num == 1){
					return;
				}else{
					e.currentTarget.parentElement.children[1].value = num-1;
					var price = parseFloat(e.currentTarget.parentElement.parentElement.parentElement.children[3].innerText); 
					var sumPrice = price * Number(e.currentTarget.parentElement.children[1].value);
					e.currentTarget.parentElement.parentElement.parentElement.children[5].innerText = sumPrice;
				}
				sumUp();
			});
			/////////////////////////////////////////////////////////
			//카트에 담긴 품목의 상품코드, 상하의 코드 가져와서 hidden으로 set
			var cartNum = Number($('.table_row').length);
			var cartCookie;
			var cookieObj;
			var jsonData;
			var productCode, jkCode, ptCode;
			for(var i=1; i<=cartNum; i++){
				cartCookie = getCookie('cart'+i);
				cookieObj = decodeURIComponent(cartCookie);
				jsonData = JSON.parse(cookieObj.substring(1, cookieObj.length-1));
				
				productCode = jsonData.PRODUCT_CODE;
				jkCode = jsonData.JACKET_CODE;
				ptCode = jsonData.PANTS_CODE;
				var str='<input type="hidden" class="sendProductCode" value="'+ productCode + '">';
				$('.table_row')[Number(i)-1].children[2].innerHTML += str;
				str = '<input type="hidden" class="sendJacketCode" value="'+jkCode+'">';
				$('.table_row')[Number(i)-1].children[2].innerHTML += str;
				str = '<input type="hidden" class="sendPantsCode" value="'+ptCode+'">';
				$('.table_row')[Number(i)-1].children[2].innerHTML += str;
				//console.log('카트쿠킥느?'+cookieObj);
				//console.log('카트쿠키 상품수량값?/'+jsonData.product_count);
				
				// 결제를 위한 코드값을 value로 갖고있는 name=sendProductCode인 input태그
				var sendStr = '<input type="hidden" name="sendProductCode" value="'+productCode+'">"';
				$('#sendToDoneOrder')[0].innerHTML = sendStr;
				// 결제를 위한 pt코드
				sendStr = '<input type="hidden" name="sendPantsCode" value="'+ptCode+'">"';
				$('#sendToDoneOrder')[0].innerHTML = sendStr;
				// 결제를 위한 jk코드
				sendStr = '<input type="hidden" name="sendJacketCode" value="'+jkCode+'">"';
				$('#sendToDoneOrder')[0].innerHTML = sendStr;
				// 결제를 위한 productNum
				sendStr = '<input type="hidden" name="sendProductNum" value="'+jsonData.PRODUCT_NUM+'">"';
				$('#sendToDoneOrder')[0].innerHTML = sendStr;
				// 결제를 위한 productCount
				sendStr = '<input type="hidden" name="sendProductCount" value="'+jsonData.product_count+'">"';
				$('#sendToDoneOrder')[0].innerText = sendStr;
				
			}
		});
	
	// 새로운 배송지 클릭 시, 주소 input feild clear해주는 함수..->태그에 onclick걸어줌
	 $('#newAddr').click(function () {
		 $('#postNum').val('');
		 $('#address').val('');
		 $('#address_detail').val('');
	});
	
	// 결제시 제출될 폼값 저장
	//상품관련..(장바구니 목록에따라 동적으로..배열을 보냄)
	
	$('#sendProductCode').attr('value', );
	//배송관련
	var str = $('#point').text().trim();
	str.substring(0, str.length-1).trim();
	$('#sendPaymentPoint').attr('value', str.substring(0, str.length-1).trim());
	$('#sendPaymentMethod').attr('value', $('#payMethod').val());
	$('#sendTotalCost').attr('value', $('#total').val());
	$('#sendDeliveryAddress1').attr('value', $('#address').val());
	$('#sendDeliveryAddress2').attr('value', $('#address_detail').val());
	$('#sendDeliveryRecipient').attr('value', $('#rcvr').val());
	str = $('#phoneNumberSelect').val() + "-" + $('#phoneNumber2').val() + "-" + $('#phoneNumber3').val();
	$('#sendDeliveryRecipientPhoneNumber').attr('value', str);
	$('#sendDeliveryRequirement').attr('value', $('#requireComment'));
	
	/* $('#sendToDoneOrder').attr('action', '/order.es').submit(); */
	
</script> 
  <!--===============================================================================================-->
  <script src="/iceland/js/main.js"></script>

  <!--===============================================================================================-->
  <!-- 주소검색 api -->
  <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
  <img src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
  </div>

  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  <script src="/iceland/js/address.js"></script>
  <script src="/iceland/js/ajax.js"></script>
  <!--===============================================================================================-->  

</body>
</html>