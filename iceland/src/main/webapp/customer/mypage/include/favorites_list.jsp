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

.home_group{
  position: relative;
  margin-left : 20%;
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

.my_cont .tit{
  position: relative;
  margin-top: -1px;
  font-size: 18px;
  font-weight: 600;
  padding-bottom: 18px;
  z-index: 10;
}

.my_cont .navi{
  position: absolute;
  right: 40px;
  top: 43px;
  height: 14px;
  line-height: 14px;
  z-index: 10;

}

.tit_mouth{
  width: 100%;
  height: 39px;
  margin: -9px 0;
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

.ctrl_box{
  position: relative;
  padding: 10px 0;
  background: #fafdfd;
  border-top: 1px solid #dbdbdb;
  border-bottom: 1px solid #e8e8e8;
  z-index: 20;
}

.ctrl_box.v1{
  margin-bottom: 30px;
  border-bottom-color: #e8e8e8;
  border-bottom-color: #dbdbdb;
  z-index: 5;
}

.ctrl_box .chk{
  position: absolute;
  left: 14px;
  top: 18px;
}

.btn{
  display: inline-block;
  padding: 0 12px;
  height: 28px;
  background: #fff;
  border: 1px solid #dedede;
  font-size: 12px;
  color: #555;
  text-align: center;
  line-height: 28px;
}

.ctrl_box .fr_box .sel{
  float : left;
  width : 120px;
  margin-left: 8px;
}

.lst_box li{
  padding : 24px 0;
}


.lst_box li .dsc{
  overflow: hidden;
  margin-left: 168px;
  padding : 7px 182px 0 0;
}

.ctrl_box .fl_box{
  float: left;
  margin-left: 40px;
  font-size: 0;
  line-height: 0;
}

.lst_box li .inner{
  position: relative;
}

.lst_box li .thmb_box{
  float: left;
  position: relative;
  width: 110px;
  height: 110px;
  margin-left: 40px;
  cursor: pointer;
}

.my_cont .tit .dsc{
  display: inline-block;
  font-size: 12px;
  margin: 4px 0  0 7px;
  color: #ababab;
  font-weight: normal;
  vertical-align: top;
  line-height: 16px;
}

.lst_box li .btn_box{
  display: table-cell;
  display: inline-block;
  width: 92px;
  height: 110px;
  text-align: center;
  vertical-align: middle;
}

.lst_box li .item{
  position: absolute;
  right: 45px;
  top : 0;
}

.lst_box li .chk{
  position: absolute;
  left: 14px;
  top: 0;
  z-index: 10;
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
      <div class="flex-w flex-sb-m p-b-52">
        <div class="flex-w flex-l-m filter-tope-group m-tb-10">
          <button
            class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"
            data-filter="*">전체</button>

          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
            data-filter=".women">뷰티</button>

          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
            data-filter=".men">헬스</button>

          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
            data-filter=".bag">간편식</button>
        </div>

        <div class="flex-w flex-c-m m-tb-10">
          <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
            <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
            <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i> Filter
          </div>

          <div
            class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
            <i
              class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
            <i
              class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
            Search
          </div>
        </div>

        <!-- Search product -->
        <div class="dis-none panel-search w-full p-t-10 p-b-15">
          <div class="bor8 dis-flex p-l-15">
            <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
              <i class="zmdi zmdi-search"></i>
            </button>

            <input class="mtext-107 cl2 size-114 plh2 p-r-15"
              type="text" name="search-product" placeholder="Search">
          </div>
        </div>

        <!-- Filter -->
        <div class="dis-none panel-filter w-full p-t-10">
          <div
            class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
            <div class="filter-col1 p-r-15 p-b-27">
              <div class="mtext-102 cl2 p-b-15">Sort By</div>

              <ul>
                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04"> Default </a></li>

                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04"> Popularity
                </a></li>

                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04"> Average
                    rating </a></li>

                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04 filter-link-active">
                    Newness </a></li>

                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04"> Price: Low
                    to High </a></li>

                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04"> Price:
                    High to Low </a></li>
              </ul>
            </div>

            <div class="filter-col2 p-r-15 p-b-27">
              <div class="mtext-102 cl2 p-b-15">Price</div>

              <ul>
                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04 filter-link-active">
                    All </a></li>

                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04"> $0.00 -
                    $50.00 </a></li>

                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04"> $50.00 -
                    $100.00 </a></li>

                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04"> $100.00 -
                    $150.00 </a></li>

                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04"> $150.00 -
                    $200.00 </a></li>

                <li class="p-b-6"><a href="#"
                  class="filter-link stext-106 trans-04"> $200.00+ </a>
                </li>
              </ul>
            </div>

            <div class="filter-col3 p-r-15 p-b-27">
              <div class="mtext-102 cl2 p-b-15">Color</div>

              <ul>
                <li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
                  style="color: #222;"> <i
                    class="zmdi zmdi-circle"></i>
                </span> <a href="#" class="filter-link stext-106 trans-04">
                    Black </a></li>

                <li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
                  style="color: #4272d7;"> <i
                    class="zmdi zmdi-circle"></i>
                </span> <a href="#"
                  class="filter-link stext-106 trans-04 filter-link-active">
                    Blue </a></li>

                <li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
                  style="color: #b3b3b3;"> <i
                    class="zmdi zmdi-circle"></i>
                </span> <a href="#" class="filter-link stext-106 trans-04">
                    Grey </a></li>

                <li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
                  style="color: #00ad5f;"> <i
                    class="zmdi zmdi-circle"></i>
                </span> <a href="#" class="filter-link stext-106 trans-04">
                    Green </a></li>

                <li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
                  style="color: #fa4251;"> <i
                    class="zmdi zmdi-circle"></i>
                </span> <a href="#" class="filter-link stext-106 trans-04">
                    Red </a></li>

                <li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
                  style="color: #aaa;"> <i
                    class="zmdi zmdi-circle-o"></i>
                </span> <a href="#" class="filter-link stext-106 trans-04">
                    White </a></li>
              </ul>
            </div>

            <div class="filter-col4 p-b-27">
              <div class="mtext-102 cl2 p-b-15">Tags</div>

              <div class="flex-w p-t-4 m-r--5">
                <a href="#"
                  class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                  Fashion </a> <a href="#"
                  class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                  Lifestyle </a> <a href="#"
                  class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                  Denim </a> <a href="#"
                  class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                  Streetstyle </a> <a href="#"
                  class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                  Crafts </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div id="container" class="my_container">
        <!-- aside -->
        <div id="aside" class="my_aside">
          <div class="member_sc">
            <h2 class="blind">내정보</h2>
            <a href="#"
              class="profile_img _click[jindo.$Element('profileEditMenu').toggle(); return false;]"><img
              width="94" height="94" class="_profile_img"
              src="https://ssl.pstatic.net/static.checkout/cnsv/m/im/home2nd/my_noimg_v1.png"
              alt=""> <span class="set">설정변경</span> <span
              class="mask"></span> </a>
            <!--N=a:men.set-->
            <div id="profileEditMenu" class="set_ly" style="display: none;">
              <div class="cont">
                <ul class="set_lst">
                  <li class="li1"><a
                    href="https://nid.naver.com/user2/api/route.nhn?fromService=shoppingmy&amp;m=routePcProfileModification&amp;returnUrl=http%3A%2F%2Fshopping.naver.com%2Fmy%2Fp%2Fhome.nhn"
                    class="lnk"> <span class="ico"></span>프로필사진 수정
                  </a>
                  <!--N=a:men.setimg--></li>
                  <li class="li2"><a href="https://pay.naver.com/mypage/update" class="lnk"> <span class="ico"></span>결제/배송지 정보
                      수정
                  </a>
                  <!--N=a:men.setorder--></li>
                </ul>
              </div>
              <div class="bg top"></div>
              <div class="bg btm"></div>
            </div>
            <div class="profile_txt">
              <span class="name _profile_name">dmltn0828님</span> <em
                class="id">dmlt****</em>
            </div>
          </div>
          <div id="snb" class="my_nav">
            <dl class="lst">
              <dt class="on">
                <a href="/my/p/home.nhn">쇼핑MY</a>
                <!--N=a:men.home-->
              </dt>
              <dt>
                <a href="/my/p/zzim/index.nhn">찜한 상품</a>
                <!--N=a:men.zzimtitle-->
              </dt>

              <dt>
                <a href="/my/p/qna/index.nhn">상품 Q&amp;A</a>
                <!--N=a:men.qnatitle-->
              </dt>
              <dt>
                <a href="/my/p/recent/index.nhn">최근 본 상품</a>
                <!--N=a:men.recent-->
              </dt>
            </dl>
          </div>
        </div>
        <!-- //aside -->



        <!-- content -->
        <div id="content" class="my_cont" style="z-index: 30;">
          <div class="home_info">
            <ul class="lst">
              <li class="order"><a
                href="http://order.pay.naver.com/home?tabMenu=SHOPPING&amp;frm=s_order"
                class="lnk" target="_blank"> <span class="ico">주문배송</span>
                  <em id="nSaleCount" class="_nPayStatus num_box"><span
                    class="num no0">0</span></em>
              </a>
              </li>
              <li class="cupon"><a
                href="http://benefit.pay.naver.com/coupon" class="lnk"
                target="_blank"> <span class="ico">포인트</span> <em
                  id="nCouponCount" class="_nPayStatus num_box">
                  <span>0</span></em>
              </a>
              </li>
              <li class="point"><a href="http://pay.naver.com"
                class="lnk" target="_blank"> <span class="ico">
                   장바구니</span> <em id="nPoint" class="_nPayStatus num_box"><span></span></em>
              </a>
              </li>
              <li class="tok"><a href="">
                  <span class="ico">찜 목록</span> 
                  <em id="shoppingTalk" class="num_box"><span class="num no3"></span></em>
              </a>
              </li>
             <li class="tok"><a href="">
                  <span class="ico">개인정보 수정</span> 
                  <em id="shoppingTalk" class="num_box"><span class="num no3"></span></em>
              </a>
              </li>
            </ul>
          </div>

          <div class="home_group">
            <h3 class="tit"> 찜한 상품<span class="dsc">최근 1년간의 찜한 상품 내역이 제공됩니다.</span>
            </h3>
            <p class="navi">
              <a href="/my/p/home.nhn">쇼핑MY</a>
              <em class="ico">&gt;</em><a href="/my/p/zzim/index.nhn">
              <strong>찜한 상품</strong></a>
            </p>
            <div class="ctrl_box">
            </div>


            <ul id="zzimProductList" class="lst_box">
              <li id="_zzim_1040406701_CHANNEL">
                <div class="inner">
                  <label for="zzimId_1040406701" class="chk"> <input
                    type="checkbox" id="zzimId_1040406701" name="zzimId"
                    value="1040406701&amp;CHANNEL" title="찜 선택"
                    class="_click[defaultZzimHandler.toggleZzimCheckBox(oThis); return true;]">
                  </label> <a
                    href="https://shopping.naver.com/outlink/itemdetail/2659343835"
                    class="thmb_box _click[baClickLog('1000012736', '2659343835', 'shoppingmy', 'DETAIL', 'https://shopping.naver.com/outlink/itemdetail/2659343835', 'myz');]"
                    target="_blank"> <img
                    src="http://shop1.phinf.naver.net/20180328_296/dnjfem19_152223806419532Vdl_JPEG/45545223812949188_1254623002.JPG?type=f170_170"
                    width="110" height="110" alt=""> <span
                    class="bdr">바로가기</span>
                  </a>
                  <!--N=a:zls.pimg-->
                  <div class="dsc">
                    <em class="date"> 2018.06.09</em>
                    <p>
                      <a
                        href="https://shopping.naver.com/outlink/itemdetail/2659343835"
                        class="lnk _click[baClickLog('1000012736', '2659343835', 'shoppingmy', 'DETAIL', 'https://shopping.naver.com/outlink/itemdetail/2659343835', 'myz');]"
                        target="_blank">[단독입고] 여름 10수 워싱 오버핏 무지반팔티셔츠</a>
                      <!--N=a:zls.pname-->
                    </p>
                    <span class="pay"> <strong>11,000</strong>원
                    </span>
                  </div>
                  <div class="item">
                    <span class="btn_box">
                      <a href="https://order.pay.naver.com/products/500137182/2659343835/addCart?tr=myc"
                        class="btn _click[window.open(oThis.href, 'cartPopup', 'scrollbars=yes,resizable=yes,width=460,height=450'); return false;]">장바구니</a>
                      <a href="https://order.pay.naver.com/products/500137182/2659343835/purchase?tr=myz"
                      class="btn _click[window.open(oThis.href, 'buyPopup', 'scrollbars=yes,resizable=yes,width=460,height=450'); return false;]">구매하기</a>
                    </span>
                  </div>
                  <a href="javascript:void(0)" class="close _click[defaultZzimHandler.removeZzim(oThis, '1040406701', 'CHANNEL'); return false;]">삭제</a>
                </div>
              </li>
            </ul>
            <div class="ctrl_box v1">
              <label for="chk_all2" class="chk"> <input
                type="checkbox" id="chk_all2" name="chk_all2"
                title="전체선택"
                class="_click[defaultZzimHandler.toggleAllZzimCheckBox(oThis, jindo.$('chk_all1')); return true;]">
              </label>
              <div class="fl_box">
                <a href="/my/p/zzim/product/remove.nhn"
                  class="btn _click[defaultZzimHandler.removeSelectedZzims(oThis); return false;]">선택상품
                  삭제</a>
              </div>
            </div>
      </div>
      
          <div id="listPaging">
              <div id="zzimPaging" class="co_paginate">
                <strong>1</strong>
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