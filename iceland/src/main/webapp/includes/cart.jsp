<%@ page contentType="text/html; charset=utf-8"%>
	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					<strong>나의 장바구니</strong>
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full" id="miniCarts">
				
				</ul>
				
				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">
						Total: $75.00
					</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="/iceland/order/shopping-cart.jsp" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							View Cart
						</a>

						<a href="/iceland/order/shopping-cart.jsp" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
							Check Out
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
  
  <script type="text/javascript">
  

  
  var str = "";
  
  $(document).ready(function() {
		//var obj = decodeURIComponent(getCookie('carts'));
		
        console.log(2);
		
		var prior = 1;
		var checksum = 0; 
		
		while(getCookie('cart' + prior)){
			var obj = decodeURIComponent(getCookie('cart' + prior)).substring(1,decodeURIComponent(getCookie('cart' + prior)).length - 1);
			var jsonObj = JSON.parse(obj);
			
			console.log(prior);
			
			var str = "";
			
			  str += '<li class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img" value='+ prior +'>';
			  str += '<img src="' + jsonObj.image_ref + '" alt="IMG"></div><div class="header-cart-item-txt p-t-8">';
			  str += '<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">' + jsonObj.PRODUCT_NAME + '</a>'
			  str += '<span class="header-cart-item-info">' + jsonObj.product_count + ' x ' + jsonObj.PRODUCT_PRICE + '</span></div></li>';		
			  $('#miniCarts').append(str);
			  
			  checksum += jsonObj.product_count * jsonObj.PRODUCT_PRICE;
			  prior++;
		}
		
		$('#cartButton').attr('data-notify',prior - 1);
		$('.header-cart-total')[0].innerText = ("Total: " + checksum) + '원';
	  
		// 지우기
		$('.header-cart-item-img').on('click',function(e){
	        console.log($(e.currentTarget).parents()[0]);
	        console.log($(e.currentTarget).attr('value'));
	        setCookie('cart' + $(e.currentTarget).attr('value'),'',0);
	        $(e.currentTarget).parents()[0].remove();
        });
		// row 뿌리기
		
		
		// json 객체로 cart 가져오기
		}
	);
  
  
  </script>
<!--

//-->
</script>