<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<title>Upgrade Your SUIT - EUISUIT</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.min.js"></script>
<script type="text/javascript" src="placeholders.min.js"></script>
<link rel="stylesheet" type="text/css" href="Q&A.css">
 <script type="text/javascript">
        // 입력 문자 최대 입력 범위 체크
        function checkMaxBytes(trgtObj, maxLength, trgtNm) {
            maxLength = Number(maxLength);

            if (maxLength == "NaN") {
                alert("Parameter Type Error");
                return;
            }

            var data = String(trgtObj.value);
            if (data.trim() == "") {
                trgtObj.value = "";
                return;
            }

            var currLen = data.bytes();
            if (currLen > maxLength) {
                alert(trgtNm + "은(는)" + maxLength + "바이트 이상 입력하실 수 없습니다.");

                data = data.cutByte(maxLength, "");
                trgtObj.value = data;
            }
        }

        function saveQna() {
            try {
                if ($("input[name=qnaDtlsCd]:radio:checked").length < 1) {
                    alert("문의유형을 선택하세요.");
                    return;
                }
                
                if ($("#brdInfoCont").val().trim().replace('　', '').length == 0) {
                    alert("내용을 입력하세요.");
                    $("#brdInfoCont").val("");
                    $("#brdInfoCont").focus();
                    return;
                }
                     
                if ($("#mailId").val().trim().length == 0) {
                    alert("답변 받을 메일주소를 입력하세요.");
                    $("#mailId").val("");
                    $("#mailId").focus();
                    return;
                }
                if ($("#mailId").val().indexOf("@") > -1) {
                    alert("이메일 ID에 '@'를 사용할 수 없습니다.");
                    $("#mailId").focus();
                    return;
                }
                if ($("#mailStr").val().trim().length == 0) {
                    alert("답변 받을 메일주소를 입력하세요.");
                    $("#mailStr").value = "";
                    $("#mailStr").focus();
                    return;
                }
                if ($("#mailStr").val().indexOf("@") > -1) {
                    alert("메일주소에 '@'를 사용할 수 없습니다.");
                    $("#mailStr").focus();
                    return;
                }
                
                //'@'길이도 있으니 -1해줍니다.
                if ($("#mailId").val().bytes() + $("#mailStr").val().bytes() > 49) {
                    alert("메일주소는  50byte를 넘기실 수 없습니다.");
                    $("#mailId").focus();
                    return;
                }
                
                $(frmMain).attr("action", '');
                $(frmMain).submit();
            }
            catch (e) {
                alert(e.message);
            }
        }

        $(document).ready(function () {
            $("#selMail").change(function () {
                if (this.value == "01") {
                    $("#mailStr").val("");
                    $("#mailStr").removeAttr("readonly", "readonly");
                } else {
                    $("#mailStr").val($(this).find("option:selected").text());
                    $("#mailStr").attr("readonly", "readonly");
                }
            });

            $("#btnSave").click(function () {
                saveQna();
            });

            function cancelQnaHelp() {
                var frm = document.cancelPathFrm;
                frm.action = "";
                frm.method = "get";
                frm.submit();
            }

            $("#btnClose").click(function () {
                if (document.frmMain.qnaPathLoc.value == 'help') {
                    cancelQnaHelp();
                } else {
                    self.close();
                }
            });
        });

        function onClickSetSubject(msg){
            $("#brdInfoSbjct").val(msg);
            $('.list_lyer').css('display', '');
        }
    </script>
</head>
<body >



<form name="cancelPathFrm" method="post">
</form>
<div id="popLayWrap">
    <form name="frmMain" method="post">
        <div id="popHead">
            <div class="popHeadEnd">
                
                <h1>문의내용 작성</h1>
                
            </div>
        </div>
        <div class="popbody_con">
            <!-- 팝업 내용입력부분 ============================= -->
            <div class="prdc_qna_wrap">
                <div class="tblwrap">
                    <table class="tbl">
                        <caption>문의내용 작성</caption>
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:75%">
                        </colgroup>
                        <tbody>
                        
                            <tr>
                                <th scope="row" class="first alignL"><label for="qnaDtlsCd">문의유형</label></th>
                                <td class="alignL">
                                    <div class="select_wrap">
                                        <label for="qnaDtlsCd1"><input type="radio" name="qnaDtlsCd" id="qnaDtlsCd1" value="01" >상품</label>
                                        <label for="qnaDtlsCd2"><input type="radio" name="qnaDtlsCd" id="qnaDtlsCd2" value="02" >배송</label>
                                        <label for="qnaDtlsCd3"><input type="radio" name="qnaDtlsCd" id="qnaDtlsCd3" value="03" >반품/취소</label>
                                        <label for="qnaDtlsCd4"><input type="radio" name="qnaDtlsCd" id="qnaDtlsCd4" value="04" >교환/변경</label>
                                        <label for="qnaDtlsCd5"><input type="radio" name="qnaDtlsCd" id="qnaDtlsCd5" value="05" >기타</label>
                                    </div>
                                    <span id=notice_type></span>
                                </td>
                            </tr>
                        <tr>
                            <th scope="row" class="first alignL"><label for="brdInfoCont">내용</label></th>
                            <td class="alignL">
                                <textarea name="brdInfoCont" id="brdInfoCont" rows="10" cols="80" placeholder="문의유형을 선택해 주시고,궁금하신 내용을 작성해 주세요."></textarea>
                                <span id=notice_ta></span>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="first alignL"><label for="mailId">답변수신 메일</label></th>
                            <td class="alignL">
                                <div class="email_insfo">
                                    <input type="text" name="mailId" id="mailId"  title="이메일 주소 ID" class="text"> @
                                    <input type="text" name="mailStr" id="mailStr" title="이메일 도메인" class="text">
                                    
                                </div>
                                <span id=notice_email></span>
                                <span class="sub_notice">답변완료시 등록한 이메일로 알려드립니다.</span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
				<div class="chk_wrap" id = "layerSecretYn">
					 <label for="secretYn">
                          <input type="checkbox" name="secretYn" id="secretYn" value="Y" class="chk"
                          
                          > 비밀글로 문의하기
                     </label>
				</div>
                <div class="notice_box">
                    <h2 class="tit">알아두세요!</h2>
                    
                    <ul>
                    	<li>전화번호, 이메일, 배송지 주소, 환불계좌정보 등 개인정보가 포함된 글은, 비밀글로 문의해 주시기  바랍니다.<br>(단, 상품 문의유형은 비밀글 설정 불가)</li>
						<li>상품 Q&amp;A에 등록한 게시글은 마이 페이지 &gt; 상품 Q&amp;A에서 확인하실 수 있습니다.</li>
						<li>부적절한 게시물 등록시 ID이용 제한 및 게시물이 삭제될 수 있습니다.
							<ul>
							   <li>- 전화번호, 이메일 주소 등 연락처를 기재하여 할인/직거래 등을 유도</li>
								<li>- 비방/욕설/명예훼손, 가격비교정보, 물품과 관련 없는 광고글 등</li>
								<li>- 다만 상품에 대한 단순 불만, 판매자에게 불리한 내용이라는 이유만으로는 삭제하지 않습니다.</li>
							</ul>				
						</li>
                    </ul>
                    
                </div>
            </div>
            <div class="btn_wrap">
                <input type='hidden' name='com.skt.omp.serviceengine.taglib.TOKEN' value='KDGNE3QWVR3S3XBL1UL527NLXSMDOFKM' />
                <input type="hidden" name="frontYN" value="Y">
                <input type="hidden" name="prdNo" value="2205838409">
                <input type="hidden" name="brdInfoClfNo" value="2205838409">
                <input type="hidden" name="curPage" value="1">
                <input type="hidden" name="hostUrl" value="deal.11st.co.kr">
                <input type="hidden" name="qnaPathLoc" value="">
                <input type="hidden" name="qnaCd" value="">
                <input type="hidden" name="callCenterYn" value="">
                <a href="#this" id="btnSave" class="defbtn_smed dtype4" title="등록"><span>등록</span></a>
                <a href="#this" id="btnClose" class="defbtn_smed dtype6" title="취소"><span>취소</span></a>
            </div>
        </div>
    </form>
</div>
</body>
<script type="text/javascript">
    var selectTitle = function (obj) {
        jQuery("#brdInfoSbjct").val(obj.value);
        if ("" == obj.value) {
            jQuery("#divSubject").css("display", "block");
            try {
                document.getElementById('brdInfoSbjct').focus();
            } catch (e) {

            }
        } else if ("none" == obj.value) {
            jQuery("#brdInfoSbjct").val('');
            jQuery("#divSubject").css("display", "none");
        } else {
            jQuery("#divSubject").css("display", "none");
        }
    }

    $('.selectbox_wrap .value_holder').click(function () {
        $('.list_lyer').css('display', 'block');
        return false;
    });
    $('.selectbox_wrap > div').mouseleave(function () {
        $('.list_lyer').css('display', '');
        return false;
    });
    
    var qnaTxt = [
          '상품에 대해 궁금하신 내용을 작성해 주세요\n(성능, 사이즈, 유통기한 등)',
          '배송에 대해 궁금하신 내용을 작성해 주세요\n(배송 시점, 배송 요청사항 등)',
          '반품 및 취소에 대해 궁금하신 내용을 작성해 주세요\n(반품, 취소, 환불 등)',
          '교환 및 변경에 대해 궁금하신 내용을 작성해 주세요\n(교환, 변경 등)',
          '궁금하신 기타 문의사항이 있으신가요?\n(사은품, 이벤트, AS 등)'
              ];
    
    $("input[name=qnaDtlsCd]").click(function(e){
      var idx = Number($(this).val());
        $("#layerSecretYn").show();
      
      $('#brdInfoCont').attr('placeholder', qnaTxt[idx - 1] );
    });
</script>

</html>