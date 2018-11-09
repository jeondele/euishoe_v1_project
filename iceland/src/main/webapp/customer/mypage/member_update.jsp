<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Title</title>

<style type="text/css">

body{
  font-family: 'Roboto','나눔고딕','Nanum Gothic','맑은고딕','Malgun Gothic','돋움',Dotum,AppleGothic,sans-serif;
  margin-left : auto;
  margin-right: auto;
}

/* 회원안내  */
.xans-myshop-asyncbenefit{
  margin: 0 0 20px;
  color: #353535;
}

.ec-base-box.typeMember.gMessage{
  border-width: 1px;
  border-color: #d7d5d5;
}

.ec-base-box.typeMember .information{
  display: table;
  table-layout: fixed;
  padding: 10px 0;
  width: 100%;
  box-sizing: border-box;
}


.ec-base-box.typeMember .information > .title, .ec-base-box.typeMember .information > .thumbnail{
  display: table-cell;
  padding : 0 15px;
  width: 70px;
  text-align: center;
  vertical-align: middle;
}

.ec-base-box.typeMember .information > .thumbnail img{
  max-width: 70px;
}

.ec-base-box.typeMember.gMessage{border-width: 1px; border-color: #d7d5d5;}
.ec-base-box.typeMember .information .description{
  display: table-cell;
  padding: 0 10px;
  width: auto;
  line-height: 1.5em;
  border-left: 1px solid #e8e8e8;
  vertical-align: middle;
}
/* 회원정보 수정  */
#-common{
  position: relative;
  width: 100%;
  margin: 20px 0 100px;
}

.ec-base-table table{
  position: relative;
  margin: 10px 0 0;
  border: 1px solid #d7d5d5;
  border-left: 0;
  border-right: 0;
  border-top-color: #fff;
  color: #fff;
  line-height: 1.5;
}

.ec-base-table tbody th{
  padding: 11px 0 10px 18px;
  border: 1px solid #dfdfdf;
  border-bottom-width: 0;
  color: #353535;
  text-align: left;
  font-weight: normal;
  background-color: #fbfafa;
}

.ec-base-table td{
  padding: 11px 10px 10px;
  border-top: 1px solid #dfdfdf;
  color: #353535;
  vertical-align: middle;
}

.ec-base-table.typeWrite td{
  padding: 8px 10px 7px; 
}

input[type='text'], input[type='password'], select{
  padding: 0 10px;
  height: 28px;
  line-height: 28px;
  border: 1px solid #ddd;
  vertical-align: middle;
  box-sizing: border-box;
}

.ec-base-layer{
  position: absolute;
  z-index: 100;
  border: 1px solid #757575;
  background: #fff;
}

.ec-base-button.justify{
  position: relative;
}

.ec-base-button{
  padding: 10px 0;
  text-align: center;
}

.ec-base-button.justify .gRight{
  position:absolute;
  right: 0; 
}

.ec-base-button .gRight{
  float: right;
  text-align: right;
}

.xans-member-edit .layerLeave{
  position: fixed;
  top: 50%;
  left: 50%;
  z-index: 1000;
  width: 600px;
  margin: -205px 0 0 -300px;
  display: none;
}

.xans-member-edit #postcode1, .xans-member-edit #postcode2{
  width: 100px;
  text-align: center;
}

.xans-member-edit #addr1, .xans-member-edit #addr2{
  width: 280px;
  margin : 5px 0 0;
}

.xans-member-edit #phone2, .xans-member-edit #phone3, .xans-member-edit #mobile2, .xans-member-edit #mobile3{
  width: 50px;
  margin: 0 4px;
}

.xans-member-edit #email1{
  margin-right: 4px;
}

.xans-member-edit #email2{
  margin: 0 4px; 
}

.xans-member-edit .required{
  margin : -25px 0 10px;
  color: #353535;
  text-align: right;
}

.ec-base-box{
  padding: 20px;
  margin-left: auto;
  margin-right: auto;
  border: 5px solid #e8e8e8;
  color: #404040;
}

.ec-base-table .typeWrite{
  margin-left : 10%;
  padding: 5%;
}

</style>

</head>

<body>
  <div id="-common">
    <div class="-frame">
      <div class="contents">
      
        <div class="titleArea">
          <h2>회원 정보 수정</h2>
        </div>

        <div class="xans-element- xans-myshop xans-myshop-asyncbenefit">
          <div class="ec-base-box typeMember gMessage ">
            <div class="information">
              <p class="thumbnail">
                <img
                  src="//img.echosting.cafe24.com/skin/base_ko_KR/member/img_member_default.gif"
                  alt=""
                  onerror="this.src='//img.echosting.cafe24.com/skin/base/member/img_member_default.gif';"
                  class="myshop_benefit_group_image_tag">
              </p>
              <div class="description">
                <p>저희 쇼핑몰을 이용해 주셔서 감사합니다. 
                <strong class="txtEm">
                <span><span class="xans-member-var-name">$유저이름</span>
                </span></strong> 님은 
                <strong>[<span class="xans-member-var-group_name">EUISHOE 쇼핑몰</span>
                <span class="myshop_benefit_ship_free_message"></span>]
                  </strong> 회원이십니다.
                </p>
                <p class="displaynone myshop_benefit_display_with_all ">
                  <strong class="txtEm">
                  <span class="myshop_benefit_dc_pay"></span> 
                  <span class="myshop_benefit_dc_min_price_mileage">0원 이상</span></strong>구매시 
                  <strong class="txtEm"><span class="myshop_benefit_dc_price_mileage">0원</span>
                  <span class="myshop_benefit_dc_type_mileage"></span></strong>을 
                  <span class="myshop_benefit_use_dc_mileage"></span> 받으실 수 있습니다. 
                  <span class="myshop_benefit_dc_max_mileage_percent"></span>
                </p>
              </div>
            </div>
          </div>
        </div>

        <form id="editForm" name="editForm" action="/exec/front/Member/edit/" method="post" enctype="multipart/form-data">
          <input id="useSimpleSignin" name="useSimpleSignin" value="F" type="hidden"> 
          <input id="is_certification" name="is_certification" value="F" type="hidden"> 
          <input id="emailDuplCheck" name="emailDuplCheck" value="T" type="hidden"> 
          <input id="login_id_type" name="login_id_type" value="id" type="hidden"> 
          <input id="required_is_news_mail_flag" name="required_is_news_mail_flag" value="F" type="hidden">
          <input id="is_display_register_life_partner" name="is_display_register_life_partner" value="F" type="hidden"> 
          <input id="display_required_is_life_partner" name="display_required_is_life_partner" value="F" type="hidden"> 
          <input id="is_display_register_birthday" name="is_display_register_birthday" value="F" type="hidden">
          <input id="display_required_is_birthday" name="display_required_is_birthday" value="F" type="hidden">
          <input id="nick_name_flag" name="nick_name_flag" value="F" type="hidden"> 
          <input id="nick_name_confirm" name="nick_name_confirm" value="F" type="hidden"> 
          <input id="display_required_nick_name_flag" name="display_required_nick_name_flag" value="F" type="hidden"> 
          <input id="passwd_type" name="passwd_type" value="C" type="hidden"> 
          <input id="is_display_register_phone" name="is_display_register_phone" value="F" type="hidden">
          <input id="display_required_phone" name="display_required_phone" value="F" type="hidden">
          <input id="display_register_phone" name="display_register_phone" value="F" type="hidden">
          <input id="is_display_register_name" name="is_display_register_name" value="T" type="hidden">
          <input id="display_required_name" name="display_required_name" value="T" type="hidden"> 
          <input id="is_display_register_eng_name" name="is_display_register_eng_name" value="F" type="hidden">
          <input id="is_display_register_addr" name="is_display_register_addr" value="T" type="hidden">
          <input id="__addr1" name="__addr1" value="" type="hidden">
            
          <div class="xans-element- xans-member xans-member-edit">
          
            <!-- $login_page = /member/login.html -->
            <h3 class=" ">기본정보</h3>
            <p class="required ">
              <img
                src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
                alt="필수"> 필수입력사항
            </p>
            <div class="ec-base-table typeWrite">
              <table border="1" summary="">
                <caption>회원 기본정보</caption>
                <colgroup>
                  <col style="width: 150px;">
                  <col style="width: auto;">
                </colgroup>
                <tbody>
                  <tr>
                    <th scope="row">아이디 
                    <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"></th>
                    <td>
                    <input id="member_id" name="member_id" fw-msg="" class="inputTypeText" readonly="readonly"  type="text"> (영문소문자/숫자, 4~16자)</td>
                  </tr>
                  <tr>
                    <th scope="row">비밀번호 <img
                      src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
                      class="" alt="필수"></th>
                    <td>
                    <input id="passwd" name="passwd" autocomplete="off" maxlength="16" value="" type="password"> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)
                      </td>
                  </tr>
                  <tr class="displaynone">
                    <th scope="row">새 비밀번호</th>
                    <td><input id="new_passwd" name="new_passwd" fw-msg="" maxlength="16"
                      value="" type="password"> (공백일 경우, 기존 비밀번호로 저장됩니다.)</td>
                  </tr>
                  <tr class="displaynone">
                    <th scope="row">새 비밀번호 확인</th>
                    <td>
                      <input id="new_passwd_confirm" name="new_passwd_confirm" maxlength="16" value="" type="password"> 
                      <span id="new_pwConfirmMsg"></span>
                    </td>
                  </tr>
                  <tr style="display:">
                    <th scope="row" id="">이름<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
                    </th>
                    <td>
                      <input id="name" name="name" class="ec-member-name" placeholder="" maxlength="30" readonly="readonly" value="박의수" type="text">
                    </td>
                  </tr>

                  
                  <tr class="">
                    <th scope="row">주소<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="" alt="필수">
                    </th>
                    <td>
                      <input id="postcode1" name="postcode1" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text">
                      <a href="#none" onclick="ZipcodeFinder.Opener.bind('postBtn', 'postcode1', 'postcode2', 'addr1', 'layer', 'ko_KR');" id="postBtn">
                      <img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_zipcode.gif" alt="우편번호"></a><br> 
                      <input id="addr1" name="addr1"  class="inputTypeText" placeholder="" readonly="readonly" value="" type="text">기본주소<br> 
                      <input id="addr2" name="addr2" class="inputTypeText" placeholder="" value="" type="text"> 나머지주소
                     </td>
                  </tr>

                  <tr class="">
                    <th scope="row">휴대전화<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="" alt="필수"></th>
                    <td>
                        <select id="mobile1" name="mobile[]">
                          <option value="010">010</option>
                          <option value="011">011</option>
                          <option value="016">016</option>
                          <option value="017">017</option>
                          <option value="018">018</option>
                          <option value="019">019</option>
                        </select>-
                        <input id="mobile2" name="mobile[]" maxlength="4" value="" type="text">
                        -<input id="mobile3" name="mobile[]" maxlength="4" value="" type="text">
                    </td>
                  </tr>
                  
                  <tr>
                  <th scope="row">생년월일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"></th>
                    <td>
                    	<input id="birth_year" name="birth_year" class="inputTypeText" placeholder="" maxlength="4" readonly="readonly" value="" type="text">
                      	년 <input id="birth_month" name="birth_month" class="inputTypeText" placeholder="" maxlength="2" readonly="readonly" value="" type="text">
                      	월 <input id="birth_day" name="birth_day" class="inputTypeText" placeholder="" maxlength="2" readonly="readonly" value="" type="text">
                      	일 
                      	<span class="gIndent20 ">
                      		<input id="is_solar_calendar0" name="is_solar_calendar" disabled="1" value="T" type="radio" checked="checked"><label for="is_solar_calendar0">양력</label>
                      		<input id="is_solar_calendar1" name="is_solar_calendar" disabled="1" value="F" type="radio"><label for="is_solar_calendar1">음력</label>
                      	</span>
                    </td>
                  </tr>
                  
                  
                  <tr>
                    <th scope="row">이메일<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"  alt="필수"></th>
                    <td>
                    	<input id="email1" name="email1" class="mailId" value="" type="text">
                    	@<input id="email2" name="email2" class="mailAddress" readonly="readonly" value=""type="text">
						<select id="email3">
	                        <option value="" selected="selected">-이메일 선택-</option>
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
                    	</select> 
                    	<span id="emailMsg"></span>
                      <p class="displaynone">
                              이메일 주소 변경 시 로그아웃 후 재인증을 하셔야만 로그인이 가능합니다.<br>인증
                              메일은 24시간 동안 유효하며, 유효 시간이 만료된 후에는 가입 정보로 로그인 하셔서
                              재발송 요청을 해주시기 바랍니다.
                      </p></td>
                  </tr>
                  <tr class="displaynone">
                    <th scope="row">이메일 수신여부 <img
                      src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
                      alt="필수"></th>
                    <td>
                    <input id="is_news_mail0" name="is_news_mail" value="T" type="radio">
                     <label for="is_news_mail0">수신함</label>
                      <input id="is_news_mail1" name="is_news_mail"
                      fw-filter="" fw-label="is_news_mail" fw-msg=""
                      value="F" type="radio" checked="checked"><label
                      for="is_news_mail1">수신안함</label>
                    <p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</p></td>
                  </tr>
                </tbody>
              </table>
            </div>
   
            
            <div class="ec-base-button justify">
              <a href="#none" onclick="memberEditAction()"><img
                src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_modify_member.gif"
                alt="회원정보수정"></a> <a href="/index.html"><img
                src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_modify_cancel.gif"
                alt="취소"></a> <span class="gRight"> <a
                href="#none" onclick="memberDelAction(2000, 0, -1)"><img
                  src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_modify_out.gif"
                  alt="회원탈퇴"></a>
              </span>
            </div>
            <div class="layerLeave ec-base-layer" id="">

              <div class="header">
                <h3>회원탈퇴</h3>
              </div>
              <div class="content">
                <div class="ec-base-box typeMember">
                  <div class="information">
                    <strong class="title">혜택 내역</strong>
                    <div class="description">
                      <ul>
                        <li id="">탈퇴시 보유하고 있는 적립금은 모두 삭제됩니다.</li>
                        <li>현재 적립금 : <strong id="" class="txtEm">0</strong>
                        </li>
                        <li id="">현재 예치금 : <strong id=""
                          class="txtEm">0</strong>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <h4>회원탈퇴 사유</h4>
                <div class="ec-base-table typeWrite">
                  <table border="1" summary="">
                    <caption>회원탈퇴 사유</caption>
                    <colgroup>
                      <col style="width: 140px;">
                      <col style="width: auto;">
                    </colgroup>
                    <tbody>
                      <tr>
                        <th scope="row">선택</th>
                        <td></td>
                      </tr>
                      <tr>
                        <th scope="row">기타</th>
                        <td></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="ec-base-button">
                <a href="#none" id=""><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_leave.gif" alt="탈퇴"></a> 
                <a href="#none" onclick="$('#').hide();"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_leave_cancel.gif" alt="취소"></a>
              </div>
              <a href="#none" class="close" onclick="$('#').hide();"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"></a>
            </div>
          </div>
          <input type="hidden" name="agree_information_check_display" value="T"><input type="hidden" name="agree_consignment_check_display" value="T">
        </form>
      </div>
    </div>
  </div>
</body>
</html>
