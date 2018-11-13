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
					<div class="header-cart-total w-full p-tb-40 cart">
						Total: $75.00
					</div>

					<div class="header-cart-buttons flex-w w-full">
						<!-- "/iceland/order/shopping-cart.jsp" -->
						<a href="/iceland/order.es" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
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
  $(document).ready(function() {
		//var obj = decodeURIComponent(getCookie('carts'));
		
		
		var prior = 1;
		var checksum = 0; 
		
		while(getCookie('cart' + prior)){
			var obj = decodeURIComponent(getCookie('cart' + prior)).substring(1,decodeURIComponent(getCookie('cart' + prior)).length - 1);
			var jsonObj = JSON.parse(obj);
			
			console.log(prior);
			
			var str = "";
			
			  str += '<li class="header-cart-item flex-w flex-t m-b-12 cart"><div class="header-cart-item-img cart" value='+ prior +'>';
			  str += '<img src="' + replaceAll(jsonObj.image_ref,'+',' ') + '" alt="IMG"></div><div class="header-cart-item-txt p-t-8">';
			  str += '<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">' + replaceAll(jsonObj.PRODUCT_NAME,'+',' ') + '</a>'
			  str += '<span class="header-cart-item-info">' + jsonObj.product_count + ' x ' + jsonObj.PRODUCT_PRICE + '</span></div></li>';		
			  $('#miniCarts').append(str);
			  
			  checksum += jsonObj.product_count * jsonObj.PRODUCT_PRICE;
			  prior++;
		}
		
		$('#cartButton').attr('data-notify',prior - 1);
		$('.header-cart-total.w-full.p-tb-40.cart')[0].innerText = ("Total: " + checksum) + '원';
		
		// 지우기
		$('.header-cart-item-img.cart').unbind("click").on('click',function(e){
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
            $('#cartButton').attr('data-notify',testNum - 2);

        });
		// row 뿌리기
		
		
		// json 객체로 cart 가져오기
		}
	);
  
  
  </script>
<!--

//-->
</script>