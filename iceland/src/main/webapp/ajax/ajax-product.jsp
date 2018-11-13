<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.google.gson.Gson"%>
<%@ taglib prefix="tt" uri="/WEB-INF/tlds/fordecode.tld"%>
<script>

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
</script>

	<div class="row isotope-grid">
		<c:forEach items="${jsonObjectList}" var="product">
			<c:set var="imageRef" value="${product.imageRef}" />
			<c:if test="${fn:contains(imageRef,'main$1')}">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="${product.get('imageRef')}" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1 brief-view">
								<input type="hidden" value="${product.productNum}">
								Quick View
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a
									href="/iceland/product/details.es?productNum=${product.productNum}"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${product.productName} </a> <span class="stext-105 cl3"> ₩
									${product.productListPrice} 원 </span>
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