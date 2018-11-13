<%@ page contentType="text/html; charset=utf-8"%>
	<!-- Cart -->
	<div class="wrap-header-cart js-panel-favorite">
		<div class="s-full js-hide-favorite"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					<strong>나의 찜목록</strong>
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-favorite">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full" id="miniWish">

				</ul>
				
				<div class="w-full">

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
  
  $(document).ready(function() {
	  
	  
	  
		//var obj = decodeURIComponent(getCookie('carts'));
		
		var prior = 1;
		var checksum = 0; 
		
		while(getCookie('wish' + prior)){
			var obj = decodeURIComponent(getCookie('wish' + prior)).substring(1,decodeURIComponent(getCookie('wish' + prior)).length - 1);
			var jsonObj = JSON.parse(obj);
			var str = "";
			
			  str += '<li class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img wish" value='+ prior +'>';
			  str += '<img src="' + replaceAll(jsonObj.image_ref,'+',' ') + '" alt="IMG"></div><div class="header-cart-item-txt p-t-8 ">';
			  str += '<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">' + replaceAll(jsonObj.PRODUCT_NAME,'+',' ') + '</a>'
			  str += '<span class="header-cart-item-info">' + jsonObj.PRODUCT_PRICE + ' 원</span></div></li>';		
			  $('#miniWish').append(str);
			  
			  prior++;
		}
		
		$('#wishButton').attr('data-notify',prior - 1);
	  
		// 지우기
		$('.header-cart-item-img.wish').unbind("click").on('click',function(e){
            var deleteNum = parseInt($(e.currentTarget).attr('value'));
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
            refreshwish();

        });
		// row 뿌리기
		
		
		// json 객체로 cart 가져오기
		}
	);
  
  
  </script>
<!--

//-->
</script>