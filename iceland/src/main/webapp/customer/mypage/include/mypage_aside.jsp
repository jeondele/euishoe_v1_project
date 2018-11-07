<%@ page contentType="text/html; charset=utf-8"%>
        <!-- aside -->
        <div id="aside" class="my_aside">
          <div class="member_sc">
            <h2 class="blind">내정보</h2>
            <a href="#"
              class="profile_img _click[jindo.$Element('profileEditMenu').toggle(); return false;]"><img
              width="94" height="94" class="_profile_img"
              src="https://ssl.pstatic.net/static.checkout/cnsv/m/im/home2nd/my_noimg_v1.png"
              alt=""> <span class="set">설정변경</span> </a>
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