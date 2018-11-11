<%@ page contentType="text/html; charset=utf-8"%>

  <!-- Back to top -->
  <div class="btn-back-to-top" id="myBtn">
    <span class="symbol-btn-back-to-top">
      <i class="zmdi zmdi-chevron-up"></i>
    </span>
  </div>
	<input id="productNum" type="hidden" value = "">
	
	<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div  class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="/iceland/images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
								<div id = "itemPic" class="slick3 gallery-lb">
									<div class="item-slick3" data-thumb="">
										<div class="wrap-pic-w pos-relative">
											<img id="productImg1" src="" alt="IMG-PRODUCT">

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 id = "productName" class="mtext-105 cl2 js-name-detail p-b-14">
							</h4>

							<span id = "productPrice" class="mtext-106 cl2" id="productPrice">
							</span>

							<p id = "productBrief" class="stext-102 cl3 p-t-23">
							</p>
							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										상의
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time" id="jkSize">
												<option>Choose an option</option>
												<option>S</option>
												<option>M</option>
												<option>L</option>
												<option>XL</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										하의
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time" id="ptSize">
												<option>Choose an option</option>
												<option>26inch</option>
												<option>28inch</option>
												<option>30inch</option>
												<option>32inch</option>
												<option>34inch</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>
								<div class="flex-w flex-r-m p-b-10" >
									<div class="size-304 flex-w flex-m respon6-next">
										<div class="size-203 flex-c-m respon6">
											수량
										</div>
										<div class="wrap-num-product flex-w m-r-20 m-tb-10" style="margin-left: 100px;">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
                                        <a href="/iceland/product/details.es">상세페이지</a>
										<input type="button" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail" id="addCart" value="장바구니 담기"
                                               style="margin-left: 10px;"
                                               />
                                        <input type="button" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" value="즉시구매" id="purchase" style="margin-left: 10px;"/>
											
									</div>
								</div>	
							</div>
							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
										<i class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
									<i class="fa fa-facebook"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
									<i class="fa fa-twitter"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
									<i class="fa fa-google-plus"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
	$('#addCart').on('click',function(e){
		var oldCookie = '';
		$('#addCart').on('click',function(e){
			sumToMakeJson();
	    });
        console.log(e);
        
        // productName,Image,count,price
        var productName = $('#addCart').parents()[3].childNodes[1].innerText;
        var productImg = $('#productImg')[0].src
        var productCount = document.getElementsByName('num-product')[0].value;
        var productPrice = $('#productPrice').text().trim();
        var cookieData = document.cookie;
		sumToMakeJson();
		/*  */
    });
	

	// quickView에서 바로주문
	$('#purchase').on('click', function(e) {
		// 사이즈선택 필수
		var jkSize = $('#jkSize').val().trim();
		var ptSize = $('#ptSize').val().trim();
		if(jkSize=="Choose an option" || ptSize=="Choose an option"){
			console.log('사이즈옵션선택 안함'); //debug
			alert('상 하의 사이즈 옵션 선택은 필수입니다');
		}
		
		// quickView에서 주문시.. -> 선택값을 통해 product(상품)객체 생성 ->  
		// 주문번호가 null인 상품주문(order_by_product)객체 생성
		// 회원, 비회원 확인
		
		// product객체 생성을 위한 값(상하의코드, 상품번호, 수량).................임의의 데이터값 넣어준것 수정필요!!!!!!!
		var jacketCode = 'bgs$jk$s$br';//상품코드$jk$선택사이즈$컬러코드.... pCode + '$jk'+ jkSize + '$' + colorCode;
		var pantsCode = 'bgs$pt$28$br'; //상품코드$pt$선택사이즈$컬로코드... pCode + '$pt'+ ptSize + '$' + colorCode;
		var productNum = 3;//productInfo의 키값(int)...						 ${productNum};
		var productCount = document.getElementsByName('num-product')[0].value;
		var productCode = 'bgs'+'$S$28$'+productNum;//pCode + '$' + jkSize + '$' + ptSize + '$'+ ${productNum};
		makeOrder(productCode, jacketCode, pantsCode, productNum, productCount); //product객체 생성, orderByProduct객체 생성
		
	});

	// order컨트롤러 가서 객체(product, delievery, payment, order, orderByProduct) 생성..
	function makeOrder(productCode, jacketCode, pantsCode, productNum, productCount) {
		// 고객이 선택한 상품정보로 product객체 만들기 by json
 		var productInfoJson = new Object();
		productInfoJson.productCode = productCode.trim();
		productInfoJson.jacketCode = jacketCode.trim();
		productInfoJson.pantsCode = pantsCode.trim();
		productInfoJson.productNum = productNum;
		productInfoJson.productCount = productCount.trim();
		
		var jsonData = JSON.stringify(productInfoJson);   //product 객체를 생성할 json데이터 생성

		// 생성한 json데이터 서버로 보냄..-> 컨트롤러에서 객체생성 후 결제화면으로 이동
		var url = "/iceland/order.es" //product객체를 생성하고 orderByProduct생성할 OrderController로 이동
		
		$.ajax({
            type: "POST",
            url: url,
            async : false,
            dataType: "json",
            data: "jsonData="+jsonData,
            success: function (jsonData) {
               alert('Success');
            },
            error: function () {
             alert('Error');
            }
        });

	}
	</script>