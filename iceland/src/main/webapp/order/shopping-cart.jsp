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



</style>
</head>
<body class="animsition">

  <%@include file="/iceland/../includes/header.jsp"%>

  <%@include file="/iceland/../includes/cart.jsp"%>


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
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-1">Product/Option</th>
									<th class="column-2"></th>
									<th class="column-3">Price</th>
									<th class="column-4">Quantity</th>
									<th class="column-5">Total</th>
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
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
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
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product2" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<td class="column-5">1600</td>
								</tr>
							</table>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code">
							</div>
                              <div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
                                        선택 삭제
                            </div>
							<div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10" id="delete_All">
								전체 삭제
							</div>
						</div>

            <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm" style="display: block">
            <div class="select-ship">
              <ul class="nav nav-pills nav-justified">
                <li class="active"><a data-toggle="tab" href="#home">기본 배송지</a></li>
                <li><a data-toggle="tab" href="#menu1">최근 배송지</a></li>
                <li><a data-toggle="tab" href="#menu2">새로운 배송지</a></li>
              </ul>
              </div>
              <div class="tab-content">
                <div id="home" class="tab-pane fade in active show">
                <div style="display:block">
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
                      <input type="text" id="zipcodeTxt" name="zipcodeTxt" maxlength="6" readonly="" onkeypress="javascript:common.onlyNumberInput(event);" style="ime-mode:disabled;width:70px;" title="우편번호">
                       <a href="javascript:searchAddr();" onclick="doCommonStat('ORAD002');" id="searchAddrBt" class="defbtn_lsm dtype6" data-log-actionid-label="zip_code_find"><span>주소찾기</span></a><br>
                        <input type="text" id="rcvrBaseAddr" name="rcvrBaseAddr" maxlength="200" title="기본주소 입력" class="inp_address int-selected" readonly="">
                        <input type="text" id="rcvrBaseAddr" name="rcvrBaseAddr" maxlength="200" title="기본주소 입력" class="inp_address int-selected" readonly="">
                      </address>
                      </td>
                     </tr>
                     
                    <tr>
                       <th>휴대전화</th>
                       <td>
          <select id="tmprcvrPrtblNo1" name="tmprcvrPrtblNo" title="휴대전화-국번선택" style="width:80px;">
            <option value="010">010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
          </select>&nbsp;-&nbsp;
          <input type="text" id="tmprcvrPrtblNo2" name="tmprcvrPrtblNo" maxlength="4" onkeypress="javascript:common.onlyNumberInput(event);" style="ime-mode:disabled;width:70px;" title="휴대전화두번째자리" class="">&nbsp;-&nbsp;
          <input type="text" id="tmprcvrPrtblNo3" name="tmprcvrPrtblNo" maxlength="4" onkeypress="javascript:common.onlyNumberInput(event);" style="ime-mode:disabled;width:70px;" title="휴대전화세번째자리" class="">
          <input type="hidden" id="safeNumberUseYN" name="safeNumberUseYN" value="N" class="">
          <span class="safenom_free" id="safenom_free_02"></span>
        </td>
                     </tr>
                     
                     <tr>
                       <th>배송시 요청사항</th>
                       <td><input type="text"></td>
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
							Cart Totals
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

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">
									There are no shipping methods available. Please double check your address, or contact us if you need any help.
								</p>
								
								<div class="p-t-15">
									<span class="stext-112 cl8">
										Calculate Shipping
									</span>

									<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
										<select class="js-select2" name="time">
											<option>Select a country...</option>
											<option>USA</option>
											<option>UK</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>

									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="State /  country">
									</div>

									<div class="bor8 bg0 m-b-22">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="postcode" placeholder="Postcode / Zip">
									</div>
									
									<div class="flex-w">
										<div class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer">
											Update Totals
										</div>
									</div>
										
								</div>
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
		</script>
  <!--===============================================================================================-->
  <script src="/iceland/js/main.js"></script>

</body>
</html>