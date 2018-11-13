<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoping Cart</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<script src="/iceland/vendor/jquery/jquery-3.2.1.min.js"></script>
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
	href="<%=application.getContextPath()%>/customer/customizing/customizing.css">


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
</style>
<script>
window.onload = function() {
	var loginId = getCookie('loginId');
	if (loginId != null) {
		var customerId = loginId;
		$('form#customizeInfoTransfer > input#customerId').attr('value', customerId);
	} else {
		
	}
}

var customerBody;
var customerShoulder;
var customerArm;
var customerLeg;

$(function(){
 	var sBtn = $("ul.customize_by_Body > li");
 	sBtn.find("input").click(function(){   
 		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
  			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'CustomBody1':  customerBody = '1';  break;
				case 'CustomBody2':  customerBody = '2';  break;
				case 'CustomBody3':  customerBody = '3';  break;
				default : 	  customerBody = '2'; break;
				
  			}
	  		$('form#customizeInfoTransfer > input#customerBody').attr('value', customerBody);
  		} else { 
  			$(this).removeClass('active');
  			customerBody = '2';
  		}
 })
})


$(function(){
 	var sBtn = $("ul.customize_by_Shoulder > li");
 	sBtn.find("input").click(function(){   
 		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
  			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'CustomShoulder1':  customerShoulder = '1';  break;
				case 'CustomShoulder2':  customerShoulder = '2';  break;
				case 'CustomShoulder3':  customerShoulder = '3';  break;
				default : 	  customerShoulder = '2'; break;
  			}
	  		$('form#customizeInfoTransfer > input#customerShoulder').attr('value', customerShoulder);
  		} else { 
  			$(this).removeClass('active');
  			customerShoulder = '2';
  		}
 })
})

$(function(){
 	var sBtn = $("ul.customize_by_Arm > li");
 	sBtn.find("input").click(function(){   
 		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
  			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'CustomArm1':  customerArm = '1';  break;
				case 'CustomArm2':  customerArm = '2';  break;
				case 'CustomArm3':  customerArm = '3';  break;
				default : 	  customerArm = '2'; break;
  			}
	  		$('form#customizeInfoTransfer > input#customerArm').attr('value', customerArm);
  		} else { 
  			$(this).removeClass('active');
  			customerArm = '2';
  		}
 })
})


$(function(){
 	var sBtn = $("ul.customize_by_Leg > li");
 	sBtn.find("input").click(function(){   
 		if(!($(this).hasClass('active'))) { // 클릭을 했는데 active 되어 있지 않으면 -> 활성화
  			sBtn.children().removeClass('active');
	  		$(this).addClass('active');
	  		switch($(this).attr('id')) {
				case 'CustomLeg1':  customerLeg = '1';  break;
				case 'CustomLeg2':  customerLeg = '2';  break;
				case 'CustomLeg3':  customerLeg = '3';  break;
				default : 	  customerLeg = '2'; break;
  			}
	  		$('form#customizeInfoTransfer > input#customerLeg').attr('value', customerLeg);
  		} else { 
  			$(this).removeClass('active');
  			customerLeg = '2';
  		}
 		console.log(customerLeg);
 })
})
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
			</a> <span class="stext-109 cl4"> Shopping Cart </span>
		</div>
	</div>

	<%-- Customizing Table --%>
	<div class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div>
							<strong><h4 class="mtext-109 cl2 p-b-13">당신의 체형을 알려주세요</h4></strong>
							<div class="flex-w flex-t bor12 p-b-13">당신의 체형에 맞는 정장을 추천해드립니다</div>
						</div>
						<div>
                     		 <div class="mtext-102 cl2 p-b-15 flex-c-m">Q1. 당신의 체형은 어떤 타입입니까?</div>
		                     <ul class="customize_by_Body">
		                        <li class="p-b-6">
		                           <input type="button" id="CustomBody1" name="CustomBody1" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="마른편 (Skinny)">
		                        </li>
		                       
		                        <li class="p-b-6">
		                           <input type="button" id="CustomBody2" name="CustomBody2" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="보통 (Normal)" >
		                        </li>
		                        
		                        <li class="p-b-6">
		                           <input type="button" id="CustomBody3" name="CustomBody3" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="통통한편 (Fat)" >
		                        </li>
		
		                     </ul>
                     	 	 <br>
                     		<div class="mtext-102 cl2 p-b-15 flex-c-m">Q2. 당신의 어깨넓이는 어느정도입니까?</div>
	                     	<ul class="customize_by_Shoulder">
		                        <li class="p-b-6">
		                           <input type="button" id="CustomShoulder1" name="CustomShoulder1" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="좁은편 (Narrow)">
		                        </li>
		                       
		                        <li class="p-b-6">
		                           <input type="button" id="CustomShoulder2" name="CustomShoulder2" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="보통 (Normal)" >
		                        </li>
		                        
		                        <li class="p-b-6">
		                           <input type="button" id="CustomShoulder3" name="CustomShoulder3" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="넓은편 (Wide)" >
		                        </li>
		                    </ul>
                     	 	<br>
                     		<div class="mtext-102 cl2 p-b-15 flex-c-m">Q3. 당신의 팔길이는 어느정도입니까?</div>	 	 
                     	 	<ul class="customize_by_Arm">
		                        <li class="p-b-6">
		                           <input type="button" id="CustomArm1" name="CustomArm1" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="짧은편 (Short)">
		                        </li>
		                       
		                        <li class="p-b-6">
		                           <input type="button" id="CustomArm2" name="CustomArm2" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="보통 (Normal)" >
		                        </li>
		                        
		                        <li class="p-b-6">
		                           <input type="button" id="CustomArm3" name="CustomArm3" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="긴편 (Long)" >
		                        </li>
		                    </ul>
		                    <br>
		                    <div class="mtext-102 cl2 p-b-15 flex-c-m">Q4. 당신의 다리길이는 어느정도입니까?</div>	 	 
                     	 	<ul class="customize_by_Leg">
		                        <li class="p-b-6">
		                           <input type="button" id="CustomLeg1" name="CustomLeg1" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="짧은편 (Short)">
		                        </li>
		                       
		                        <li class="p-b-6">
		                           <input type="button" id="CustomLeg2" name="CustomLeg2" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="보통 (Normal)" >
		                        </li>
		                        
		                        <li class="p-b-6">
		                           <input type="button" id="CustomLeg3" name="CustomLeg3" style="width: 100%;" class="flex-c-m stext-107 bor7 p-lr-15 hov-btn3 trans-04 m-r-5 m-b-5" value="긴편 (Long)" >
		                        </li>
		                    </ul>
		                    <br>
                		</div>
                		<form id="customizeInfoTransfer" action="/iceland/customer/customize.es" method="post">
							<input type="hidden" id="customerBody" name="customerBody" value="">
							<input type="hidden" id="customerShoulder" name="customerShoulder" value="">
							<input type="hidden" id="customerArm" name="customerArm" value="">
							<input type="hidden" id="customerLeg" name="customerLeg" value="">
							<input type="hidden" id="customerId" name="customerId" value="">
							<div>
								<input type="submit" class="flex-c-m stext-101 clO size-116 bg3 bor7 hov-btn3 p-lr-15 trans-04 pointer" value="저장">
							</div>
                		</form>
					</div>
				</div>
			</div>
		</div>	
	</div>


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

		$('.how-itemcart1').bind("click", function(e) {
			e.currentTarget.parentElement.parentElement.remove();
		});
		/*
		$('.wrap-num-product').bind("click",function(e){
			console.log(e);
			console.log(e.previousElementSibling);
			console.log(e.currentTarget.children[1]);
			
		});
		 */
		$('.btn-num-product-down')
				.bind(
						"click",
						function(e) {
							/*
								갯수 세기
							 */
							var num = e.currentTarget.parentElement.children[1].value - 1;
							var price = e.currentTarget.parentElement.parentElement.parentElement.children[2].innerText;

							price = parseFloat(price);

							e.currentTarget.parentElement.parentElement.parentElement.children[4].innerText = (num * price);

							sumUp();
						});

		$('.btn-num-product-up')
				.bind(
						"click",
						function(e) {
							var num = parseInt(e.currentTarget.parentElement.children[1].value) + 1;
							var price = e.currentTarget.parentElement.parentElement.parentElement.children[2].innerText;

							price = parseFloat(price);

							e.currentTarget.parentElement.parentElement.parentElement.children[4].innerText = (num * price);

							sumUp();

						});

		function sumUp() {
			var sum = 0;
			var num = 0;
			$('.column-5').each(function(index, item) {
				if (index !== 0) {
					num = $(item).text();
					sum += parseInt(num);
				}
			});

			$('.mtext-110').each(function(index, item) {
				$(item).text(sum);
			})
		};

		$('#delete_All').bind('click', function(e) {
			$('.table_row').each(function(index, item) {
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