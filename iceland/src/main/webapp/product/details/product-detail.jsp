<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Product Detail</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/iceland/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/iceland/css/util.css">
	<link rel="stylesheet" type="text/css" href="/iceland/css/main.css">
<!--===============================================================================================-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 상품 문의, 상품 리뷰 css-->
<link rel="stylesheet" type="text/css" href="product_detail.css">
<!--===============================================================================================-->

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <!-- toggle  -->
  <script>
  $( function() {

    // run the currently selected effect
    function runRankpoint() {
      var selectedEffect = $( "#effectTypes" ).val();
      var options = {};
      $("#info_content" ).toggle( selectedEffect, options, 500 );
    };

    
    function showReview() {
        var selectedEffect = $( "#effectTypes" ).val();
        var options = {};
        $("#dvQnqContDtl1" ).toggle(selectedEffect, options, 500);
      };
      
      
    
      function writeReview() {
          var selectedEffect = $( "#effectTypes" ).val();
          var options = {};
          $("#dvQnqContDtl0" ).toggle( selectedEffect, options, 500 );
        };
        
      
      /*
      	박호준
      	
      	리뷰 클릭하면 답변 보기
      	
      */
      function showAnswer(tag) {
        	if(tag.style.display == 'none'){
        		tag.style.display = 'table-cell';
        	}else{
        		tag.style.display = 'none';
        	}
          };
          
    
    // Set effect from select menu value
    $( "#detailViewGrade" ).on( "click", function() {
      runRankpoint();
    });
    
    
    $( "#admin_Answer" ).on( "click", function() {
    	showReview();
      });
    
    $( "#write_Answer" ).on( "click", function() {
    	writeReview();
      });
    
    /*
    	박호준
    	
    	리뷰 클릭하면 답변 보기
    */
    $(".txt_ellipsis" ).on( "click", function(e) {
    	if($($($(this.parentElement.parentElement).next()[0]).children()[0]).hasClass('qna_expand')){
    	showAnswer($($(this.parentElement.parentElement).next()[0]).children()[0]);
    	}
      });
    
  } );
  </script>
<style>
.qnaDtlsCd1, .qnaDtlsCd2, .qnaDtlsCd3, .qnaDtlsCd4, .qnaDtlsCd5 {
	display: inline; 
	font-size: 20px;
}

#email1, #email2, #email3 {
	display: inline;
	height: 40px;
}

.modal {
        text-align: center;
}
 
@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
}
 
.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
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
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<a href="product.html" class="stext-109 cl8 hov-cl1 trans-04">
				Men
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				Lightweight Jacket
			</span>
		</div>
	</div>
		

	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
								<div class="item-slick3" data-thumb="/iceland/images/product-detail-01.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="/iceland/images/product-detail-01.jpg" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="/iceland/images/product-detail-01.jpg">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>

<!-- 								<div class="item-slick3" data-thumb="/iceland/images/product-detail-02.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="/iceland/images/product-detail-02.jpg" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="/iceland/images/product-detail-02.jpg">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3" data-thumb="/iceland/images/product-detail-03.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="/iceland/images/product-detail-03.jpg" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="/iceland/images/product-detail-03.jpg">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div> -->
							</div>
						</div>
					</div>
				</div>
					
				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<h4 class="mtext-105 cl2 js-name-detail p-b-14">
							Lightweight Jacket
						</h4>

						<span class="mtext-106 cl2">
							$58.79
						</span>

						<p class="stext-102 cl3 p-t-23">
							Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
						</p>
						
						<!--  -->
						<div class="p-t-33">
							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">
									Size
								</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select class="js-select2" name="time">
											<option>Choose an option</option>
											<option>Size S</option>
											<option>Size M</option>
											<option>Size L</option>
											<option>Size XL</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">
									Color
								</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select class="js-select2" name="time">
											<option>Choose an option</option>
											<option>Red</option>
											<option>Blue</option>
											<option>White</option>
											<option>Grey</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-304 flex-w flex-m respon6-next" >
									<div class="wrap-num-product flex-w m-r-20 m-tb-10" style="margin-left: 100px;">
										<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>

										<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

										<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>

									<input type="button" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail" value="장바구니 담기" style="margin-left: 10px;"/>
                                    <input type="button" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" value="즉시구매" style="margin-left: 10px;"/>
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

			<div class="bor10 m-t-50 p-t-43 p-b-40">
				<!-- Tab01 -->
				<div class="tab01">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item p-b-10">
							<a class="nav-link active" data-toggle="tab" href="#description" role="tab">상품 상세</a>
						</li>

						<li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#information" role="tab">상품 정보</a>
						</li>

						<li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#reviews" role="tab">상품 후기</a>
						</li>
            
                        <li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#qna" role="tab">상품 문의</a>
						</li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content p-t-43">
						<!-- - -->
						<div class="tab-pane fade show active" id="description" role="tabpanel">
							<div class="how-pos2 p-lr-15-md">
								<p class="stext-102 cl6">
									Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.
								</p>
							</div>
						</div>

						<!-- - -->
						<div class="tab-pane fade" id="information" role="tabpanel">
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
									<ul class="p-lr-28 p-lr-15-sm">
										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Weight
											</span>

											<span class="stext-102 cl6 size-206">
												0.79 kg
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Dimensions
											</span>

											<span class="stext-102 cl6 size-206">
												110 x 33 x 100 cm
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Materials
											</span>

											<span class="stext-102 cl6 size-206">
												60% cotton
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Color
											</span>

											<span class="stext-102 cl6 size-206">
												Black, Blue, Grey, Green, Red, White
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Size
											</span>

											<span class="stext-102 cl6 size-206">
												XL, L, M, S
											</span>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- - -->
						<div class="tab-pane fade" id="reviews" role="tabpanel">
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
					 				<div class="p-b-30 m-lr-15-sm">
               
                                          <div class="grade_select zindex">
                                                    <a class="ui_info_button dn" id="detailViewGrade"> 
                                                                평점전체
                                                     <span class="arr_icon"></span></a>  
                                                    <div class="grade_lay ui_info_content" id="info_content" style="display: none;">
                                                      <div class="lay_nw_def" style="display:block;position:relative;">
                                                        <h3 class="lay_tit">평점 선택</h3>
                                                        <div class="grade_wrap">
                                                          <ul class="">
                                                            <li>
                                                            <input type="radio" value="0" name="pntValue" id="star" checked="">
                                                            <label for="star" class="all">평점전체</label>
                                                            </li>
                                                            
                                                            <li>
                                                              <input type="radio" value="5" name="pntValue" id="star05">
                                                              <label for="star05">
                                                                <div class="selr_wrap">
                                                                  <span class="num">5점</span>
                                                                  <span class="graph_bar"><em class="gh_bar5" style="width:64%;"><span>64%</span></em></span>
                                                                </div>
                                                              </label>
                                                            </li>
                                                            <li>
                                                              <input type="radio" value="4" name="pntValue" id="star04">
                                                              <label for="star04">
                                                                <div class="selr_wrap">
                                                                  <span class="num">4점</span>
                                                                  <span class="graph_bar"><em style="width:26%;"><span>26%</span></em></span>
                                                                </div>
                                                              </label>
                                                            </li>
                                                            <li>
                                                              <input type="radio" value="3" name="pntValue" id="star03">
                                                              <label for="star03">
                                                                <div class="selr_wrap">
                                                                  <span class="num">3점</span>
                                                                  <span class="graph_bar"><em style="width:8%;"><span>8%</span></em></span>
                                                                </div>
                                                              </label>
                                                            </li>
                                                            <li>
                                                              <input type="radio" value="2" name="pntValue" id="star02">
                                                              <label for="star02">
                                                                <div class="selr_wrap">
                                                                  <span class="num">2점</span>
                                                                  <span class="graph_bar"><em style="width:1%;"><span>1%</span></em></span>
                                                                </div>
                                                              </label>
                                                            </li>
                                                            <li>
                                                              <input type="radio" value="1" name="pntValue" id="star01">
                                                              <label for="star01">
                                                                <div class="selr_wrap">
                                                                  <span class="num">1점</span>
                                                                  <span class="graph_bar"><em style="width:1%;"><span>1%</span></em></span>
                                                                </div>
                                                              </label>
                                                            </li>
                                                          </ul>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                            
                  
                  
										<!-- Review -->
										<div class="flex-w flex-t p-b-68">
											<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
												<img src="/iceland/images/avatar-01.jpg" alt="AVATAR">
											</div>
											<div class="size-207">
												<div class="flex-w flex-sb-m p-b-17">
													<span class="mtext-107 cl2 p-r-20">작 성 자</span>

													<span class="fs-18 cl11">
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star-half"></i>
													</span>
												</div>
												<p class="stext-102 cl6">
													"상               품                 평"
												</p>
                                                  <span class="mtext-107 cl2 p-r-20"><a id="write_Answer">답변달기</a> </span> 
                                              <div  class="qna_expand" id="dvQnqContDtl0" style="display: none;">
                                                    <div class="answer">
                                                      <span class="ico_answer">답변</span>
                                                             <textarea rows="10" cols="20"></textarea>
                                                     <div class="btn_action">
                                                      <a href="#this" id="report" class="nwtxt_link" data-brdinfono="118895345" data-clfcd="01" data-contcd="03">작성하기<span class="ico"></span></a>
                                                      </div>
                                                    </div>

                                                    </div>        

                                                  <span class="mtext-107 cl2 p-r-20"><a  id="admin_Answer">관리자 답변</a></span>
                                              <div  class="qna_expand" id="dvQnqContDtl1" style="display: none;">
                                                    <div class="answer">
                                                      <span class="ico_answer">답변</span>
                                                                      안녕하세요 11번가 나이키입니다.
                                                                 고객님께서 문의하신 사항 잘 보았습니다.
                                                    </div>
                                                    </div>                                                  
                                                  
											</div>
										</div>
										
										<!-- Add review -->
										<form class="w-full" action="/iceland/product/details/create.es">
											<input type="hidden" id="productNum">
											<h5 class="mtext-108 cl2 p-b-7">
												리뷰작성
											</h5>

											<p class="stext-102 cl6">
												리뷰 비밀번호를 작성해주세요.
											</p>

											<div class="flex-w flex-m p-t-50 p-b-23">
												<span class="stext-102 cl3 m-r-16">
													평점을 골라주세요 !
												</span>

<script>
	${star}
</script>

												<span class="wrap-rating fs-18 cl11 pointer">
													<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
													<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
													<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
													<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
													<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
													<input class="dis-none" type="number" name="rating" id="reviewScore" value="">
												</span>
											</div>

											<div class="row p-b-25">
												<div class="col-12 p-b-5">
													<label class="stext-102 cl3" for="review">내용</label>
													<textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="reviewContent" name="reviewContent"></textarea>
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="name">작성자</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="customerId" type="text" name="customerId">
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="email">비밀번호</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="reviewPassword" type="text" name="reviewPassword">
												</div>
											</div>

											<button class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="">
												작성하기</button>
										</form>
									</div>
								</div>
							</div>
						</div>
            
                        <div class="tab-pane fade show active" id="qna" role="tabpanel">
                            <div class="prdc_qna">
                            	<div class="bbs_filter">
                            		<button type="button" id="myQnA" class="float-r flex-c-m stext-101 cl2 size-112 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">내 문의</button>
                            		<button type="button" id="allQnA" class="float-r flex-c-m stext-101 cl2 size-112 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">전체문의</button>
                            		<button type="button" id="insertQnA" class="float-r flex-c-m stext-101 cl2 size-112 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" data-toggle="modal" data-target="#popLayWrap">문의하기</button>
                             	  <select name="selQnaDtlsCd" class="float-l" id="selQnaDtlsCd" style="float:left; height: 40px; font-size: 20px;">
                             	  	<option value="" selected="selected">문의유형(전체)</option>
                             	  	<option value="01">상품</option><option value="02">배송</option>
                             	  	<option value="03">반품/취소</option><option value="04">교환/변경</option>
                             	  	<option value="05">기타</option>
                             	  </select>	
                             	  <!-- 동적으로 표시버튼 누르면 바뀌도록 제작 -->
	                              <button type="button" id="secretQnA" class="float-l flex-c-m stext-101 cl2 size-112 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">비밀글표시</button>
	                              <button type="button" id="notSecretQnA" class="float-l flex-c-m stext-101 cl2 size-112 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">비밀글제외</button>
                            	</div>
                            
                            <table class="prdc_bbs" summary="이 표는 상품 Q&amp;A 및 내용이 번호,문의유형,문의/답변,작성자,작성일로 구성되어 있습니다.">
                            	<colgroup><col style="width:85px;"><col style="width:auto"><col style="width:96px;"><col style="width:115px;"></colgroup>
                            	<thead>
                            	<tr>
                            	<!-- 	<th scope="col">번호</th> -->
                            		<th scope="col">문의유형</th>
                            		<th scope="col">문의/답변</th>
                            		<th scope="col">작성자</th>
                            		<th scope="col">작성일</th>
                            	</tr>
                            	</thead>
                            	<tbody>
                            		<tr>
                            			<td class="td_section">배송</td>
                            			<td class="txt_view">
                            			<span class="state">완료</span>
                            			<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono=""> 언제 오나요? 배송 언제되나요?</a>
                            		</td>
                            			<td class="td_write">swe******</td>
                            			<td class="td_date">2018-11-07 11:38</td>
                            		</tr>
                                  
                            		<tr class="trQna" id="trQnqContDtl2">
                            			<td colspan="4" class="qna_expand" id="dvQnqContDtl2" style="display:none;">
                            			<div class="question">
                            				<span class="ico_question">답변</span>
                            				  " 답변완료일 시 작성됨 "<br>
                            			</div>
                            			</td>
                            		</tr>
                                <tr>
                                  <td class="td_section">배송</td>
                                  <td class="txt_view">
                                  <span class="state">미완료</span>
                                  <a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono=""> 언제 오나요? 배송 언제되나요?</a>
                                </td>
                                  <td class="td_write">swe******</td>
                                  <td class="td_date">2018-11-07 11:38</td>
                                </tr>
                                <tr>
                                  <td class="td_section">배송</td>
                                  <td class="txt_view">
                                  <span class="state">미완료</span>
                                  <a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono=""> 언제 오나요? 배송 언제되나요?</a>
                                </td>
                                  <td class="td_write">swe******</td>
                                  <td class="td_date">2018-11-07 11:38</td>
                                </tr>
                            	</tbody>
                            </table>
                            
                            
                            	
                            	<div class="s_paging_v2">
                            		<!-- <a href="#this" class="prev" title="이전목록"><span class="hide">이전목록</span></a> -->
                            		<span>
                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&lt;&lt;" data-keyno="20181107094625">&lt;&lt;</a>
                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&lt;" data-keyno="20181107094625">&lt;</a>
                            			<strong>1</strong>
                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="2" data-keyno="20181107094625">2</a>
                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="3" data-keyno="20181107085121">3</a>
                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="4" data-keyno="20181107080107">4</a>
                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="5" data-keyno="20181106234012">5</a>
                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="6" data-keyno="20181106212053">6</a>
                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="7" data-keyno="20181106184827">7</a>
                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="8" data-keyno="20181106174212">8</a>
                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="9" data-keyno="20181106162300">9</a>
                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="10" data-keyno="20181106151741">10</a>
                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&gt;" data-keyno="20181107094625">&gt;</a>
                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&gt;&gt;" data-keyno="20181107094625">&gt;&gt;</a>
                            		</span>
                            	</div>
                            
                            <form name="pageForm" action="/product/SellerProductDetail.tmall" method="get">
                            	<input type="hidden" name="method" value="getProductQnAList">
                            	<input type="hidden" name="brdInfoClfNo" value="2205838409">
                            	<input type="hidden" name="curPage" value="1">
                            	<input type="hidden" name="qnaDtlsCd" value="">
                            	<input type="hidden" name="pageTypCd" value="first">
                            	<input type="hidden" name="secretYn" value="N">
                            	<input type="hidden" name="myQnaYn" value="N">
                            	<input type="hidden" name="isMart" value="N">
                            	<input type="hidden" name="isSohoPrd" value="false">
                            	<input type="hidden" name="keyNo" value="">
                            	<input type="hidden" name="pageList" value="20181107113845|20181107094625|20181107085121|20181107080107|20181106234012|20181106212053|20181106184827|20181106174212|20181106162300|20181106151741|20181106132718|">
                            	<input type="hidden" name="sellerMemId" value="cheonhyang0707">
                            	<input type="hidden" name="ldispCtgrNo" value="1001340">
                            	<input type="hidden" name="isRenewYn" value="Y">
                            	<input type="hidden" name="pageSize" value="10">
                            	<input type="hidden" name="targetFrm" value="">
                            </form>
                            </div>
                        </div>
					</div>
				</div>
			</div>
		</div>

		<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
			<span class="stext-107 cl6 p-lr-25">
				SKU: JAK-01
			</span>

			<span class="stext-107 cl6 p-lr-25">
				Categories: Jacket, Men
			</span>
		</div>
	</section>


	<!-- Related Products -->
	<section class="sec-relate-product bg0 p-t-45 p-b-105">
		<div class="container">
			<div class="p-b-45">
				<h3 class="ltext-106 cl5 txt-center">
					Related Products
				</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">
					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-01.jpg" alt="IMG-PRODUCT">

								<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View
								</a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Esprit Ruffle Shirt
									</a>

									<span class="stext-105 cl3">
										$16.64
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="images/product-02.jpg" alt="IMG-PRODUCT">

								<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View
								</a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Herschel supply
									</a>

									<span class="stext-105 cl3">
										$35.31
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-03.jpg" alt="IMG-PRODUCT">

								<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View
								</a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Only Check Trouser
									</a>

									<span class="stext-105 cl3">
										$25.50
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-04.jpg" alt="IMG-PRODUCT">

								<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View
								</a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Classic Trench Coat
									</a>

									<span class="stext-105 cl3">
										$75.00
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-05.jpg" alt="IMG-PRODUCT">

								<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View
								</a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Front Pocket Jumper
									</a>

									<span class="stext-105 cl3">
										$34.75
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-06.jpg" alt="IMG-PRODUCT">

								<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View
								</a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Vintage Inspired Classic 
									</a>

									<span class="stext-105 cl3">
										$93.20
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/iceland/images/product-07.jpg" alt="IMG-PRODUCT">

								<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View
								</a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Shirt in Stretch Cotton
									</a>

									<span class="stext-105 cl3">
										$52.66
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="images/product-08.jpg" alt="IMG-PRODUCT">

								<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View
								</a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Pieces Metallic Printed
									</a>

									<span class="stext-105 cl3">
										$18.96
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="/iceland/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/iceland/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
	
	
	<div id="popLayWrap" class="modal fade" role="dialog">
    <form name="frmMain" method="post">
		<div class="modal-dialog modal-lg" >	
        	<div class="modal-content">
            <!-- 팝업 내용입력부분 ============================= -->
            	<div class="modal-header">
	      			<h2 class="modal-title" style="display:inline;">문의하기(Q&A)</h2>
					<div><br></div>
	            </div>
	            <div class="modal-body">
	                 <table class="tbl">
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:75%">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row" class="first alignL"><label for="qnaDtlsCd">문의유형</label></th>
                                <td class="alignL">
                                    <div class="select_wrap">
                                    	<span for="qnaDtlsCd1" class="qnaDtlsCd1"><input type="radio" name="qnaDtlsCd" class="qnaDtlsCd1" value="01">&nbsp;상품</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd2" class="qnaDtlsCd2"><input type="radio" name="qnaDtlsCd" class="qnaDtlsCd2" value="02">&nbsp;배송</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd3" class="qnaDtlsCd3"><input type="radio" name="qnaDtlsCd" class="qnaDtlsCd3" value="03">&nbsp;반품/취소</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd4" class="qnaDtlsCd4"><input type="radio" name="qnaDtlsCd" class="qnaDtlsCd4" value="04">&nbsp;교환/변경</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd5" class="qnaDtlsCd5"><input type="radio" name="qnaDtlsCd" class="qnaDtlsCd5" value="05">&nbsp;기타</span>
                                    </div>
                                </td>
                            </tr>
                        
                      
	                        <tr>
	                            <th scope="row" class="first alignL"><label for="brdInfoCont">내용</label></th>
	                            <td class="alignL">
	                                <textarea name="brdInfoCont" id="brdInfoCont" rows="10" cols="67" placeholder="문의유형을 선택해 주시고,궁금하신 내용을 작성해 주세요."></textarea>
	                            </td>
	                        </tr>
	                        
	                        <tr>
	                            <th scope="row" class="myInfoHeader">이메일</th>
			                    <td>
			                    	<div>
				                    	<input id="email1" name="email1" class="mailId" value="" type="text">&nbsp;@&nbsp;<input id="email2" name="email2" class="mailAddress" readonly="readonly" value="" type="text">
			                      		<select id="email3" style="vertical-align: middle;">
					                        <option value="" selected="selected">-
					                          이메일 선택 -</option>
					                        <option value="naver.com">naver.com</option>
					                        <option value="daum.net">daum.net</option>
					                        <option value="nate.com">nate.com</option>
					                        <option value="hotmail.com">hotmail.com</option>
					                        <option value="yahoo.com">yahoo.com</option>
					                        <option value="empas.com">empas.com</option>
					                        <option value="korea.com">korea.com</option>
					                        <option value="dreamwiz.com">dreamwiz.com</option>
					                        <option value="gmail.com">gmail.com</option>
				                        	<option value="etc">직접입력</option>
			                    		</select><br>
			                    	<span class="sub_notice" style="font-size: 20px;">답변완료시 등록한 이메일로 알려드립니다.</span><br>
			                  	</div>
			                  	</td>
	                        </tr>
	                        
	                        <tr>
		                        <td colspan="2" style="text-align: left;">
			                        <div><br></div>
									<div class="chk_wrap" id="layerSecretYn">
										 <span for="secretYn"><input type="checkbox" name="secretYn" id="secretYn" value="Y" class="chk"> 비밀글로 문의하기 </span>
									</div>
	                			</td>
                			</tr>
                        	</tbody>
	                	</table>            
                </div>
                <div class="modal-footer" style="align-items:center;">
                  	<input type="submit" id="addQnA" class="float-l flex-c-m stext-101 cl2 size-112 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" value="작성" style="border:none; display:inline; text-align:center;">
       				<button type="button" id="cancelQnA" class="float-l flex-c-m stext-101 cl2 size-112 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" style="border:none; display:inline;" data-dismiss="modal">취소</button>
                </div>
                
            	<div class="btn_wrap">
            	</div>
               </div> 
            </div>
    </form>
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
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/daterangepicker/moment.min.js"></script>
	<script src="/iceland/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/slick/slick.min.js"></script>
	<script src="/iceland/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
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
	
	</script>
<!--===============================================================================================-->
	<script src="/iceland/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="/iceland/js/main.js"></script>
    <script type="text/javascript">
    $('.prdc_qna').css('display','none');
    $($('.nav-item')[3]).on('click',function(){ $('.prdc_qna').css('display','block');});
    </script>
</body>
</html>