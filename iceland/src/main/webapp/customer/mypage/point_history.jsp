<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>point_history</title>
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
<link rel="stylesheet" type="text/css" href="mypage.css">
</head>
<body class="animsition">

  <%@include file="../../../includes/header.jsp"%>
  <%@include file="../../../includes/cart.jsp"%>
  <%@include file="../../../includes/slider.jsp"%>


  <%@include file="include/mypage_aside.jsp"%>
  <%@include file="include/mypage_header.jsp"%>
  <!-- Product -->
  <div class="bg0 m-t-23 p-b-140">
    <div class="container">
      <div id="container" class="my_container">

        <!-- content -->
        <div id="content" class="my_cont" style="z-index: 30;">
              <div class="point_spot total _summaryRoot">
                 <ul class="spot_area">
               <li class="spot_item">
                <div class="item_cont">
                    <strong class="title">
                        <span class="sp_spot text tit_use"><span class="blind">사용가능 포인트</span></span>
        			<span class="due_num">
        				<span class="sp_spot text saving">
        				<span class="blind">(적립예정</span></span>
        				<em class="text_number" id="_expectedAcmAmt">0</em>
        				<span class="sp_spot text unit"><span class="blind">원)</span></span>
        			</span>
                    </strong>
                    <div class="amount_area">
        				<span class="sp_spot icon point1"></span>
                        <!-- [D] 숫자클래스 num0 ~ num9,
                            구분자 클래스 comma,
                            + 클래스 plus,
                            "원" 클래스 unit -->
                        <p class="number big_num" id="_total"><em class="num8"><span class="blind">8</span></em><em class="num1"><span class="blind">1</span></em><em class="num7"><span class="blind">7</span></em><em class="unit"><span class="blind">원</span></em></p>
                        <a href="#" class="spot_button type1 _click(nmp.front.order.timeline.home.summaryPoint.openChargePay()) _stopDefault">충전하기</a> <!--N=a:pnt.charge-->
                    </div>
        			<div class="point_change_area">
        				<a href="#" class="btn _click(nmp.front.order.timeline.home.summaryPoint.openCardPoint()) _stopDefault">전환하기<span class="sp_spot ico_arrow"></span></a> <!--N=a:pnt.excharge-->
        				<a href="http://event2.pay.naver.com/event/benefit/activeEventList" class="btn">이벤트 적립 받기<span class="sp_spot ico_arrow"></span></a> <!--N=a:pnt.event-->
        			</div>
                </div>
            </li>
            <li class="spot_item spot_item_state">
                <ul class="item_cont_state">
                    <li class="item_state">
                        <a href="/home/search?tabMenu=POINT_TOTAL&amp;serviceGroup=POINT_TOTAL&amp;statusGroup=POINT_TOTAL__ACM" class="inner_cell">
                            <div class="inner">
                                <strong class="sp_spot text tit_saving"><span class="blind">적립 포인트</span></strong>
                                <div class="amount_area">
                                    <!-- [D] 숫자클래스 num0 ~ num9,
                                        구분자 클래스 comma,
                                        + 클래스 plus,
                                        "원" 클래스 unit -->
                                    <p class="number small_num" id="_acmAmt"><em class="num8"><span class="blind">8</span></em><em class="num1"><span class="blind">1</span></em><em class="num7"><span class="blind">7</span></em><em class="unit"><span class="blind">원</span></em></p>
                                </div>
                            </div>
                        </a>
                        <!--N=a:pnt.savlink-->
                    </li>
                    <li class="item_state">
                        <a href="/home/search?tabMenu=POINT_TOTAL&amp;serviceGroup=POINT_TOTAL&amp;statusGroup=POINT_TOTAL__CHARGE" class="inner_cell">
                            <div class="inner">
                                <strong class="sp_spot text tit_charge2"><span class="blind">충전 포인트</span></strong>
                                <div class="amount_area">
                                    <!-- [D] 숫자클래스 num0 ~ num9,
                                        구분자 클래스 comma,
                                        + 클래스 plus,
                                        "원" 클래스 unit -->
                                    <p class="number small_num" id="_chargeAmt"><em class="num0"><span class="blind">0</span></em><em class="unit"><span class="blind">원</span></em></p>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
        
        
        <div class="ask_sc">
              <table cellpadding="0" cellspacing="0" border="0" class="terms">
              <colgroup><col><col width="243"><col width="110"><col width="86">
              </colgroup><tbody>
              <tr>
              <td>
                  <div class="month_area">
                  <ul class="month_list">
                    <li class="_rangeQuickSelectorLi" id="_rangeQuickSelectorLi0"><a id="_rangeQuickSelectorA0" href="#" class="_click(nmp.front.order.timeline.home.list.date.clickRangeQuickSelector(0)) _stopDefault">6월</a></li>
                    <li class="_rangeQuickSelectorLi" id="_rangeQuickSelectorLi1"><a id="_rangeQuickSelectorA1" href="#" class="_click(nmp.front.order.timeline.home.list.date.clickRangeQuickSelector(1)) _stopDefault">7월</a></li>
                    <li class="_rangeQuickSelectorLi" id="_rangeQuickSelectorLi2"><a id="_rangeQuickSelectorA2" href="#" class="_click(nmp.front.order.timeline.home.list.date.clickRangeQuickSelector(2)) _stopDefault">8월</a> <!--N=a:pnt.4m--></li>
                    <li class="_rangeQuickSelectorLi" id="_rangeQuickSelectorLi3"><a id="_rangeQuickSelectorA3" href="#" class="_click(nmp.front.order.timeline.home.list.date.clickRangeQuickSelector(3)) _stopDefault">9월</a> <!--N=a:pnt.3m--></li>
                    <li class="_rangeQuickSelectorLi" id="_rangeQuickSelectorLi4"><a id="_rangeQuickSelectorA4" href="#" class="_click(nmp.front.order.timeline.home.list.date.clickRangeQuickSelector(4)) _stopDefault">10월</a> <!--N=a:pnt.2m--></li>
                    <li class="_rangeQuickSelectorLi" id="_rangeQuickSelectorLi5"><a id="_rangeQuickSelectorA5" href="#" class="_click(nmp.front.order.timeline.home.list.date.clickRangeQuickSelector(5)) _stopDefault">11월</a> <!--N=a:pnt.1m--></li>
                  </ul>
                </div>
              </td>
              
              
              <td>
                <div class="select" style="display:none;">
                  <div id="s1" class="">
                    <select name="serviceGroup" class="selectbox-source _change(nmp.front.order.timeline.home.list.changeSelectServiceGroup()) _stopDefault">
                    <option value="ALL">서비스전체</option>
                        <option value="POINT_TOTAL" selected="selected">포인트전체</option>
                    </select>
                    <div class="selectbox-box">
                      <div class="selectbox-label" unselectable="on">포인트전체</div>
                    </div>
                    
                  </div>
                  <span class="ico"></span>
                </div>
                <div class="select">
                  <div id="s2" class="">
                    <select class="selectbox-source">
                    <option value="ALL" class="selectbox-default">전체상태</option>
                    <option value="ALL" class="selectbox-option-group-POINT_TOTAL">전체상태</option>
                    <option value="POINT_TOTAL__ACM" class="selectbox-option-group-POINT_TOTAL">적립</option>
                    <option value="POINT_TOTAL__USE" class="selectbox-option-group-POINT_TOTAL">사용</option>
                    <option value="POINT_TOTAL__CHARGE" class="selectbox-option-group-POINT_TOTAL">충전</option>
                    </select>
                    <div class="selectbox-box">
                      <div class="selectbox-label" unselectable="on">전체상태</div>
                    </div>
                  </div>
                  <span class="ico"></span>
                </div>
              </td><td class="btn"><a href="#" class="btn_srch _click(nmp.front.order.timeline.home.list.search()) _stopDefault"><span>조회하기</span></a> </td>
              </tr>
              </tbody>
              </table>
        </div>
     </div>



      <div class="sub_sc" style="min-height: 895px;">
        <div id="_listContentArea">
        
                <div class="none_contents_area">
                    <p class="none_txt">조회 조건에 맞는 <span>내역이 없습니다.</span></p>
                </div>
        
              <div class="tit_month">
                <h4>2018.08</h4>
              </div>
              <ul class="list_area  ">
                  <li class="list_item">
                      <div class="item add _interlockNo1533345546003973299dget">
                          <div class="item_content">
                              <div class="state_space point">
                                  <span class="state _statusName">적립</span>
                              </div>
                              <div class="info_space"> <!--N=a:pnt.detail-->
                                  <span class="date">2018.08.04</span>
                                  <strong class="title _titleName">이벤트 적립</strong>
                                  <p class="subtext">구매평작성</p>
                              </div>
                          </div>
                  
                          <div class="amount_space">
                              <div class="amount_inner">
                                  <span class="point">+50원</span>
                                  <div class="func_area">
                                      <a href="#" class="func_button _click(nmp.front.order.timeline.home.list.removeEtc(20180804101906PNT201808046066254)) _stopDefault">내역삭제</a> <!--N=a:pnt.del-->
                                  </div>
                              </div>
                          </div>
                      </div>
                  </li>
              </ul>
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