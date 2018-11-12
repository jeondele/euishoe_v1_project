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
<link rel="stylesheet" type="text/css" href="/iceland/order/shopping-cart.css">
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
                             <div class="float-r flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">선택삭제</div>
							<div class="float-r flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" id="delete_All">전체삭제</div>
						</div>
						

            <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
            <div class="select-ship">
                <a class="float-l flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" data-toggle="tab" href="#home">기본 배송지</a>
                <span class="float-l">&nbsp;&nbsp;</span>
               
                <span class="float-l">&nbsp;&nbsp;</span>
                <a class="float-l flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" data-toggle="tab" href="#menu2">새로운 배송지</a>
            </div>
              <div class="tab-content">
                <div id="home" class="deliveryAddress" style="width:100%;">
                <div style="display:block">
                  <table>
                  <colgroup>
 					<col style="width: 110px;">
                  	<col style="width: 678px;">             
                  </colgroup>
                  <tbody>
                    <tr>
                      <th>받으시는 분</th>
                      <td><input type="text" id="rcvr" name="rcvr"></td>
                     </tr>
                     
                     <tr>
                      <th>주소</th>
                      <td>
                      <input type="text" id="postCodeAddr" name="postCodeAddr" maxlength="6" readonly onkeypress="javascript:common.onlyNumberInput(event);" style="ime-mode:disabled;width:70px;" title="우편번호"/>
                       	<input type="button" class="flex-c-m stext-101 cl2 size-100 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" value="주소찾기" style="display:inline;"/><br>
                        <input type="text" id="rcvrBaseAddr" name="rcvrBaseAddr" maxlength="200" title="기본주소 입력" class="inp_address int-selected" readonly="">
                        <input type="text" id="rcvrDetailAddr" name="rcvrBaseAddr" maxlength="200" title="기본주소 입력" class="inp_address int-selected" readonly="">
                      </td>
                     </tr>
                     
                    <tr>
                       <th>휴대전화</th>
                       <td>rcvrBaseAddr rcvrDetailAddr phoneNumberSelect phoneNumber2 phoneNumber3, requireComment
          <select id="phoneNumberSelect" name="phoneNumberSelect" title="휴대전화-국번선택">
            <option value="010">010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
          </select>&nbsp;-&nbsp;
          <input type="text" id="phoneNumber2" name="tmprcvrPrtblNo" maxlength="4" onkeypress="javascript:common.onlyNumberInput(event);" title="휴대전화두번째자리" class="">&nbsp;-&nbsp;
          <input type="text" id="phoneNumber3" name="tmprcvrPrtblNo" maxlength="4" onkeypress="javascript:common.onlyNumberInput(event);" title="휴대전화세번째자리" class="">
        </td>
                     </tr>
                     
                     <tr>
                       <th>배송시 요청사항</th>
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
							<div class="size-208 p-t-15 w-full-ssm">
								<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
									<select class="js-select2" name="payMethod">
										<option value = "noBank">무통장 입금</option>
										<option value = "cart">카드결제</option>
										<option value = "phone">휴대폰 결제</option>
									</select>
								</div>
							</div>
							<div class="size-208 p-t-15 w-full-ssm">
								<span class="stext-110 cl2">
									사용가능 포인트
								</span>
							</div>
							<div class="size-208 p-t-15 w-full-ssm">
								<span class="stext-110 cl2">
									사용가능 포인트 입력 
								</span>
							</div>
							<div class="size-208 p-t-15 w-full-ssm">
								<span class="stext-110 cl2">
									사용할 포인트
								</span>
							</div>
							<div class="size-208 p-t-15 w-full-ssm">
								<span class="stext-110 cl2">
									사용할 포인트 입력
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
								<span class="mtext-110 cl2">
									$79.65
								</span>
							</div>
						</div>

						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							결제하기
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>


  <%@include file="/iceland/../includes/footer.jsp"%>

  <%@include file="/iceland/../includes/QuickMenu.jsp"%>


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
		for(var i = 1; i < $('.column-4.txt-center').length; i++){
			sum += parseInt($('.column-4.txt-center')[1].innerText.trim());
		}
		$('.mtext-110.cl2')[0].innerText = sum;
		$('.mtext-110.cl2')[1].innerText = (sum + parseInt($('.stext-110.cl2')[7].innerText.trim().substring(0,$('.stext-110.cl2')[7].innerText.trim().length -2)));
	};
	
	$('#delete_All').bind('click',function(e){
		$('.table_row').each(function(index,item){
			item.remove();
		})
		
		sumUp();
	});
	
	
	

	 $(document).ready(function() {
		    
			/*if(getQuerystring(productCode)){*/
			var prior = 1;
			var checksum = 0; 
			
			while(getCookie('cart' + prior)){
				var obj = decodeURIComponent(getCookie('cart' + prior)).substring(1,decodeURIComponent(getCookie('cart' + prior)).length - 1);
				var jsonObj = JSON.parse(obj);
				var jsonProductSize = jsonObj.PRODUCT_CODE || '';
				
				if(jsonProductSize != ''){
					jsonProductSize = '(상의 : ' + jsonObj.PRODUCT_CODE.split('$')[1] + ', 하의 : ' + jsonObj.PRODUCT_CODE.split('$')[2] + ')';
				}
				console.log(prior);
				
				var str = "";
				
				str += '<tr class="table_row"><td class="column-1 txt-center"><input type="checkbox" value="None" class="roundedOne" name="check" checked />';
				str += '</td><td class="column-2 txt-center"><div class="how-itemcart1" value="' + prior + '"><img src="' + jsonObj.image_ref + '" alt="IMG"/></div>';
				str += '</td><td class="column-3 txt-center">' + jsonObj.PRODUCT_NAME + '<br>' + jsonProductSize + '</td><td class="column-4 txt-center">' + jsonObj.PRODUCT_PRICE + '</td>';
				str += '<td class="column-5 txt-center"><div class="wrap-num-product flex-w m-l-auto m-r-auto">'
				str += '<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m"><i class="fs-16 zmdi zmdi-minus"></i></div>'
                str += '<input class="mtext-104 cl3 txt-center num-product"	type="number" name="num-product1" value="' + jsonObj.product_count + '">';
                str += '<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m"><i class="fs-16 zmdi zmdi-plus"></i>';
				str += '</div></div></td><td class="column-6 txt-center">' + (jsonObj.PRODUCT_PRICE * jsonObj.product_count) + '</td></tr>'
				$('#tableCart').append(str);

				  checksum += jsonObj.product_count * jsonObj.PRODUCT_PRICE;
				  prior++;
			}
			
			$('#cartButton').attr('data-notify',prior - 1);
			$('.mtext-110.cl2')[0].innerText =  checksum;
			$('.mtext-110.cl2')[1].innerText = (checksum + parseInt($('.stext-110.cl2')[7].innerText.trim().substring(0,$('.stext-110.cl2')[7].innerText.trim().length -2)));
			
			// 지우기
			$('.how-itemcart1').unbind("click").on('click',function(e){
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
	            
	            $(e.currentTarget).parents()[1].remove();
	            $('#cartButton').attr('data-notify',testNum - 2);
	            sumUp();
	        });
			
			}
		);
	
		</script>
  <!--===============================================================================================-->
  <script src="/iceland/js/main.js"></script>

</body>
</html>