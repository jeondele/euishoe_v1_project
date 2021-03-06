<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Purchase_history</title>
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
  href="/iceland/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
  href="/iceland/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
  href="/iceland/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
  href="/iceland/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/iceland/css/util.css">
<link rel="stylesheet" type="text/css" href="/iceland/css/main.css">
<!--===============================================================================================-->



<style>
.my_cont{
  position: relative;
  z-index: 30;
  margin-top: 5%;
}

.my_container{
  font-family: '나눔고딕', NanumGothic, '맑은고딕', MalgunGothic, '돋움', Dotum, Helvetica, sans-serif;
}

.member_sc{
  position: relative;
  margin: -1px 0 0 -1px;
  padding-top: 27px;
  background: #bbbfc3;
  z-index: 20;

}
.my_aside{
  float : left;
  width: auto;
}

.my_nav .lst dt{
  font-size: 18px;
  color: #222;
  margin-top: 23px;
  padding: 21px 0 0 6px;
  border-top: 1px solid #eaebec;
}
  
.home_info{
  position: relative;
  height: 180px;
  margin: -40px -40px 0 20%;
  padding: 34px 0 35px;
  border-bottom: 1px solid #e5e5e5;
  background: #f7f8f8;
  z-index: 30;
}

.home_info .lst{
  zoom: 1;
}

.home_info .lst li{
  position: relative;
  float: left;
  width: 170px;
  height: 141px;
  border-left: 1px solid #e2e2e2;
  text-align: center;
}


.home_info .lst .lnk{
  position: absolute;
  left : 0;
  right : 0;
  top : 0;
  bottom : 0;
  cursor: pointer;
}




.spot{
  position: relative;
  z-index: 30;
  margin-top: 1px;
  border: 1px solid #dadddf;
  background-color: #edeff2;
  margin-left: 20%;
}

.spot ul{
  display;
  overflow: hidden;
  margin-left: 40px;
  padding: 24px;
  zoom : 1;
}

.spot li{
  display: inline;
  float: left;
  position: relative;
  width: 150px;
  
}

.spot li .inner{
  position: relative;
  min-height : 83px;
  
}

.ask_sc{
  position: relative;
  z-index: 20;
  margin: -1px 0 46px;
  padding: 19px 30px;
  border: 1px solid #dadddf;
  background-color: #edeff2;

}

.spot .zzim_area{
  position: absolute;
  top : 0;
  right: 0;
  height: 100%;
  width: 50%;
  padding-left: 25px;
  background: url() no-repeat right 50%;
}

.spot .zzim_area .text{
  overflow: hidden;
  width: 183px;
  height: 47px;
  margin: 44px 0 22px;
  background-position: 0 -130px;
}

.spot .zzim_area .zzim_num{
  font-size : 12px;
  color: #828282;
  text-decoration: none;
  
}

.tit_mouth{
  width: 100%;
  height: 39px;
  margin: -9px 0;
  text-align: center;
}

.plst_sc .goods li{
  position: relative;
  padding: 0 30px 10px 0;
  zoom : 1;
}

.plst_sc .goods li .p_inr{
  position: relative;
  display : flex;
  padding: 0 120px 0 127px;
}

.plst_sc .goods li .p_inr .com_thmb{
  display : inline-block;
  text-align: center;
  }
  
  .plst_sc .goods li .p_inr .p_info{
    overflow: hidden;
    position: relative;
    max-width: 100%;
    padding: 15px 0 0;
    color: #000;
    white-space: nowrap;
    text-overflow: ellipsis; 
  }

/* .mask{
  position: absolute;
  top: 0;
  left : 0;
  z-index: 20;
  width: 100%;
  height: 100%;
} */


.sub_sc{
  overflow: hidden;
  position: relative;
  z-index: 10;
  padding: 0 0 30px;
  background-color: #fff;
}

.tit_month{
  width:  100%;
  height: 40px;
  text-align: center;
}

.plst_sc .goods li{
  position: relative;
  padding: 10px 30px 10px 0;
  zoom : 1;
}

.plst_sc .goods li .p_inr{
  position: relative;
  display : flex;
  padding: 0 120px 0 127px;
}

.plst_sc .goods li .p_inr .com_thmb{
  display : inline-block;
  text-align: center;
  }
  
  .plst_sc .goods li .p_inr .p_info{
    overflow: hidden;
    position: relative;
    max-width: 100%;
    padding: 15px 0 0;
    color: #000;
    white-space: nowrap;
    text-overflow: ellipsis; 
 }

.sub_sc{
  overflow: hidden;
  position: relative;
  z-index: 10;
  padding: 0 0 30px;
  background-color: #fff;
}

.tit_month{
  width:  100%;
  height: 40px;
  text-align: center;
}

.plst_sc .goods li{
  position: relative;
  padding: 10px 30px 10px 0;
  zoom : 1;
}

.plst_sc .goods li .p_inr{
  position: relative;
  display : flex;
  padding: 0 120px 0 127px;
}

.plst_sc .goods li .p_inr .com_thmb{
  display : inline-block;
  text-align: center;
  }
  
  .plst_sc .goods li .p_inr .p_info{
    overflow: hidden;
    position: relative;
    max-width: 100%;
    padding: 15px 0 0;
    color: #000;
    white-space: nowrap;
    text-overflow: ellipsis; 
  }

.mask{
  position: absolute;
  top: 0;
  left : 0;
  z-index: 20;
  width: 100%;
  height: 100%;
}


.sub_sc{
  overflow: hidden;
  position: relative;
  z-index: 10;
  padding: 0 0 30px;
  background-color: #fff;
}

.tit_month{
  width:  100%;
  height: 40px;
  text-align: center;
}

.order_info2 li{
  float: left;
  margin-left: 25px;
  padding-left: 29px;
}

.order_info2 li dd{
  float: left;
  font-size : 17px;
  font-weight : normal;
  line-height: 20px;
}

.order_info2 .ordnum{
  display: relative;
}

.tb_list{
  width: 100%;
  border: 0;
  border-top: 1px solid #383d4a;
  border-bottom: 1px solid #dddde1;
  table-layout: fixed;
  
}



</style>
</head>
<body class="animsition">

  <%@include file="../../../includes/header.jsp"%>

  <%@include file="../../../includes/cart.jsp"%>

  <%@include file="../../../includes/slider.jsp"%>


  <!-- Product -->
  <div class="bg0 m-t-23 p-b-140">
    <div class="container">
      <div id="container" class="my_container">


  <%@include file="include/mypage_aside.jsp"%>


        <!-- content -->
        <div id="content" class="my_cont" style="z-index: 30;">
          <div class="home_info">
            <ul class="lst">
              <li class="order"><a
                href="purchase_history.jsp"
                class="lnk" target="_blank"> <span class="ico">주문배송</span>
                  <em id="nSaleCount" class="_nPayStatus num_box"><span
                    class="num no0">0</span></em>
              </a>
              </li>
              <li class="point"><a
                href="point_history.jsp" class="lnk"
                target="_blank"> <span class="ico">포인트</span> <em
                  id="nCouponCount" class="_nPayStatus num_box">
                  <span>0</span></em>
              </a>
              </li>
              <li class=""><a href=""
                class="lnk" target="_blank"> <span class="ico">
                   장바구니</span> <em id="nPoint" class="_nPayStatus num_box"><span></span></em>
              </a>
              </li>
              <li class="tok"><a href="">
                  <span class="ico">찜 목록</span> 
                  <em id="shoppingTalk" class="num_box"><span class="num no3"></span></em>
              </a>
              </li>
             <li class="userinfo"><a href="">
                  <span class="ico">개인정보 수정</span> 
                  <em id="shoppingTalk" class="num_box"><span class="num no3"></span></em>
              </a>
              </li>
            </ul>
          </div>
     
<div class="spot _summaryRoot">
<ul>
<li class="ship1 ">
  <div class="inner">
    <span class="ico"></span>
    <dl>
    <dt>배송중/완료</dt>
    <dd class="com_num _beforeDelivery"><em class="num0">0</em></dd>
    </dl>
  </div>
  <a href="#" class="com_link _beforeDeliveryBtn _mouseover(nmp.front.order.timeline.home.summary.showLayer(BEFORE_DELIVERY)) _click(nmp.front.order.timeline.home.summary.showSummaryList(BEFORE_DELIVERY)) _stopDefault" style="display: none;">현황보기</a><!--N=a:top:pay-->
</li>
<li class="ship2 ">
  <div class="inner">
    <span class="ico"></span>
    <dl>
    <dt>배송중/완료</dt>
    <dd class="com_num _afterDelivery"><em class="num0">0</em></dd>
    </dl>
  </div>
  <a href="#" class="com_link _afterDeliveryBtn _mouseover(nmp.front.order.timeline.home.summary.showLayer(AFTER_DELIVERY)) _click(nmp.front.order.timeline.home.summary.showSummaryList(AFTER_DELIVERY)) _stopDefault" style="display: none;">현황보기</a><!--N=a:top:delivery-->
</li>
<li class="ship3 ">
  <div class="inner">
    <span class="ico"></span>
    <dl>
    <dt>취소/반품/교환</dt>
    <dd class="com_num _inClaim"><em class="num0">0</em></dd>
    </dl>
  </div>
  <a href="#" class="com_link _inClaimBtn _mouseover(nmp.front.order.timeline.home.summary.showLayer(IN_CLAIM)) _click(nmp.front.order.timeline.home.summary.showSummaryList(IN_CLAIM)) _stopDefault" style="display: none;">현황보기</a><!--N=a:top:claim-->
</li>
</ul>

<div class="ly_tp1 _beforeDeliveryLayer" style="display:none">
  <span class="edge" style="left:83px"></span>
  <div class="ly_inr"><ul></ul></div>
</div>
<div class="ly_tp1 _afterDeliveryLayer" style="display:none">
  <span class="edge" style="left:203px"></span>
  <div class="ly_inr"><ul></ul></div>
</div>
<div class="ly_tp1 _inClaimLayer" style="display:none">
  <span class="edge" style="right:82px"></span>
  <div class="ly_inr"><ul></ul></div>
</div>

<div class="zzim_area">
  <p class="text">쇼핑 찜.Q&amp;A를 쇼핑MY에서 확인하세요!</p>
  <a href="http://my.shopping.naver.com/my/p/zzim/index.nhn" class="zzim_num"><span class="ico"></span>찜한상품<strong id="_zzimCount">-</strong></a>
</div></div>



<div class="sub_sc" style="min-height: 200px;">
<div id="_listContentArea">
      <div class="tit_month">
        <h4>2018.08</h4>
      </div>

    <div class="plst_sc ">
      <div class="goods">
        <ul>


    <li id="_rowLi20180806131101NSP20180806NP1214381502" class="state8">
      <div class="p_inr">
        
        <a href="http://www.kyobobook.co.kr" class="com_thmb">
          <img src="https://phinf.pstatic.net/checkout/20160607_72/muBjoin_1465279775557GOpkx_JPEG/_60.jpg" width="60" height="60" alt="교보문고">
        </a><!--N=a:csh.detail-->
        <div class="p_info">
          <a href="https://pay.naver.com/payments/detail/20180806NP1214381502">
            <span><strong class="">교보문고</strong> 핵심 ERP 정보관리사 회계 인사 1급(2018) 외 3건</span>
            <ul>
            <li><em>62,500</em> 원</li>
            <li class="date"><em>2018.08.06</em></li>
            </ul>
          </a><!--N=a:csh.detail-->
          <span class="state">결제완료</span>
        </div>
        <div class="flex-w flex-c-m m-tb-10">
          <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
            <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
            <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i> 상세보기
          </div>
      </div>
    </li>
    <div class="dis-none panel-filter w-full p-t-10">
          <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
            <div class="detail-product">
              <div class="mtext-102 cl2 p-b-15">결제상세정보</div>
              <ul>
                <li class="p-b-6">
                              <div class="bx bx_padding vsb">
                                <ul class="fl order_info2">
                                  <li class="first">
                                    <dl>
                                      <dt>결제일자</dt>
                                      <dd>
                                        <strong>2018.08.06</strong>
                                      </dd>
                                    </dl>
                                  </li>
                                  <li>
                                    <dl>
                                      <dt>결제번호</dt>
                                      <dd class="ordnum">
                                        <strong class="pointcol">20180806NP1214381502</strong>
                                      </dd>
                                    </dl>
                                  </li>
                                </ul>
                              </div>
                            </li>

                <li class="p-b-6">
                <table cellspacing="0" border="1" class="tb_list mgt">
                          <colgroup>
                              <col width="">
                                <col width="140">
                                  <col width="150">
                                  <col width="120">
                                  <col width="110">
                                </colgroup>
                                <thead>
                                  <tr>
                                    <th scope="col">상품정보</th>
                                    <th scope="col">상품금액(수량)</th>
                                    <th scope="col" class="bg_point">결제금액</th>
                                    <th scope="col" class="bg_point">진행상태</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td class="product">
                                      <div>
                                        <dl>
                                          <dt>
                                            <em>"상품명"</em>
                                          </dt>
                                        </dl>
                                      </div>
                                    </td>
                                    <td class="money"><em
                                      class="thm">"상품가격"</em>원<br>
                                      <span>"상품갯수"</span></td>
                                    <td class="seller bg_point">
                                      <div class="send">
                                        <div class="store">
                                          <div class="inner ">
                                            <div class="txt_elp">
                                              <p>
                                                <a
                                                  href="http://www.kyobobook.co.kr">교보문고</a>
                                              </p>
                                            </div>
                                          </div>
                                        </div>
                                        <div class="tel">
                                          <span>1544-1900</span>
                                        </div>
                                        <div class="btn">
                                          <a
                                            href="http://www.kyobobook.co.kr"
                                            class="seller_inquiry"><span
                                            class="blind">판매자 문의</span></a>
                                          <!-- N=a:ost.ask -->
                                        </div>
                                      </div>
                                    </td>
                                    <td class="bg_point state">결제완료</td>
                                  </tr>
                                </tbody>
                              </table>
                            </li>
              </ul>
            </div>
          </div>
        </div>
    
        </ul>
      </div>
    </div>
<input type="hidden" id="_lastId0" value="20180806131101NSP20180806NP1214381502">
<input type="hidden" id="_hasMore0" value="false">
<input type="hidden" id="_interlockNosForDeliveryTracking0" value="">
</div>
     </div>
     
        </div>
        <!-- //content -->
      </div>


      <!-- Load more -->
      <div class="flex-c-m flex-w w-full p-t-45">
        <input type="button"
          class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04"
          value="더보기">
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
  <script
    src="/iceland/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
  <script>
			$('.gallery-lb').each(function() { // the containers for all your galleries
				$(this).magnificPopup({
					delegate : 'a', // the selector for gallery item
					type : 'image',
					gallery : {
						enabled : true
					},
					mainClass : 'mfp-fade'
				});
			});
		</script>
  <!--===============================================================================================-->
  <script src="/iceland/vendor/isotope/isotope.pkgd.min.js"></script>
  <!--===============================================================================================-->
  <script src="/iceland/vendor/sweetalert/sweetalert.min.js"></script>
  <script>
			$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
				e.preventDefault();
			});

			$('.js-addwish-b2').each(
					function() {
						var nameProduct = $(this).parent().parent().find(
								'.js-name-b2').html();
						$(this).on(
								'click',
								function() {
									swal(nameProduct, "is added to wishlist !",
											"success");

									$(this).addClass('js-addedwish-b2');
									$(this).off('click');
								});
					});

			$('.js-addwish-detail').each(
					function() {
						var nameProduct = $(this).parent().parent().parent()
								.find('.js-name-detail').html();

						$(this).on(
								'click',
								function() {
									swal(nameProduct, "is added to wishlist !",
											"success");

									$(this).addClass('js-addedwish-detail');
									$(this).off('click');
								});
					});

			/*---------------------------------------------*/

			$('.js-addcart-detail').each(
					function() {
						var nameProduct = $(this).parent().parent().parent()
								.parent().find('.js-name-detail').html();
						$(this).on('click', function() {
							swal(nameProduct, "is added to cart !", "success");
						});
					});
		</script>
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
		</script>
  <!--===============================================================================================-->
  <script src="/iceland/js/main.js"></script>

</body>
</html>