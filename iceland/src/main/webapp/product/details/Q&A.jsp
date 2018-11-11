<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta name='description' content="Upgrade Your Life - 11번가">
    <meta name='keywords' content="Upgrade Your Life - 11번가">
    <title>Upgrade Your Cloth - EUISHOE</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="/iceland/css/util.css">
	<link rel="stylesheet" type="text/css" href="/iceland/css/main.css">
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
               
                /*cvntStr = convertRRN($("#brdInfoCont").val());
                if (cvntStr.length > 0) {
                    if (confirm('게시물 내용에 주민등록번호를 입력하실 수 없습니다.\n변경하시겠습니까?')) {
                        $("#brdInfoCont").val(cvntStr);
                    }
                    alert("게시물 내용을 확인하세요.");
                    $("#brdInfoCont").focus();
                    return;
                }*/
                /* 2015.09.15 개인정보 체크 INNER-9372 */
                /* 2016.07.25 개인정보 체크 알럿 제거를 인해 주석 */
                // if (PrivacyUtil.checkPrivacy($("#brdInfoCont").val())) { return; }
             
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
                
                
                
                
//                $(frmMain).attr("action", "https://www.11st.co.kr/product/ProductQnaInsert.tmall?method=insertProductQnA");
                    $(frmMain).attr("action", '/product/ProductQnaInsert.tmall?method=insertProductQnA');
                
                
                
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
                frm.action = "https://help.11st.co.kr/common/getCancel.jsp";
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
    
<style>
.qnaDtlsCd1, .qnaDtlsCd2, .qnaDtlsCd3, .qnaDtlsCd4, .qnaDtlsCd5 {
	display: inline; 
	font-size: 20px;
}

#email1, #email2, #email3 {
	display: inline;
	height: 40px;
}
</style>
</head>
<body >

<form name="cancelPathFrm" method="post">
</form>

<div id="popLayWrap">
    <form name="frmMain" method="post" action="/iceland/qna/write.es">
        <div class="popbody_con">
            <!-- 팝업 내용입력부분 ============================= -->
            <div class="prdc_qna_wrap">
                <div class="tblwrap">
                    <table class="tbl">
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:75%">
                        </colgroup>
                        <tbody>
                        	<tr>
                        		<th colspan="2">
                        			<h2 style="display:inline;">문의하기(Q&A)</h2>
                					<div><br></div>
                				</th>
                        	</tr>
                        
                            <tr>
                                <th scope="row" class="first alignL"><label for="qnaDtlsCd">문의유형</label></th>
                                <td class="alignL">
                                    <div class="select_wrap">
                                    	<span for="qnaDtlsCd1" class="qnaDtlsCd1"><input type="radio" id="qnaDtlsCd" name="qnaDtlsCd" class="qnaDtlsCd1" value="1">&nbsp;상품</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd2" class="qnaDtlsCd2"><input type="radio" id="qnaDtlsCd" name="qnaDtlsCd" class="qnaDtlsCd2" value="2">&nbsp;배송</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd3" class="qnaDtlsCd3"><input type="radio" id="qnaDtlsCd" name="qnaDtlsCd" class="qnaDtlsCd3" value="3">&nbsp;반품/취소</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd4" class="qnaDtlsCd4"><input type="radio" id="qnaDtlsCd" name="qnaDtlsCd" class="qnaDtlsCd4" value="4">&nbsp;교환/변경</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd5" class="qnaDtlsCd5"><input type="radio" id="qnaDtlsCd" name="qnaDtlsCd" class="qnaDtlsCd5" value="5">&nbsp;기타</span>
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
		                        <td colspan="2" style="text-align: center;">
		                        <div><br></div>
		                        	<input type="submit" id="addQnA" class="flex-c-m stext-101 cl2 size-112 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" value="작성" style="border:none; display:inline;">
	                				<button type="button" id="cancelQnA" class="flex-c-m stext-101 cl2 size-112 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" style="border:none; display:inline;">취소</button>
	                			</td>
                			</tr>
                        </tbody>
	                </table>            
                </div>
				<div class="chk_wrap" id = "layerSecretYn" style="display:none">
					 <label for="secretYn">
                          <!-- <input type="checkbox" name="secretYn" id="secretYn" value="Y" class="chk"> 비밀글로 문의하기 -->
                     </label>
				</div>
            </div>
            <div class="btn_wrap">
                <input type='hidden' name='com.skt.omp.serviceengine.taglib.TOKEN' value='CVN9UC9CK0SVHZ09MZPPITL4DCVWY9XT' />
                <!-- <input type="hidden" name="frontYN" value="Y">
                <input type="hidden" name="prdNo" value="2205838409">
                <input type="hidden" name="brdInfoClfNo" value="2205838409">
                <input type="hidden" name="curPage" value="1">
                <input type="hidden" name="hostUrl" value="deal.11st.co.kr">
                <input type="hidden" name="qnaPathLoc" value="">
                <input type="hidden" name="qnaCd" value="">
                <input type="hidden" name="callCenterYn" value=""> -->
            </div>
        </div>
    </form>
</div>

</body>
</html>
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
    
    var qnaTxt = ['상품에 대해 궁금하신 내용을 작성해 주세요\n(성능, 사이즈, 유통기한 등)'
		          ,'배송에 대해 궁금하신 내용을 작성해 주세요\n(배송 시점, 배송 요청사항 등)'
		          ,'반품 및 취소에 대해 궁금하신 내용을 작성해 주세요\n(반품, 취소, 환불 등)'
		          ,'교환 및 변경에 대해 궁금하신 내용을 작성해 주세요\n(교환, 변경 등)'
		          ,'궁금하신 기타 문의사항이 있으신가요?\n(사은품, 이벤트, AS 등)'
		          ];
    $("input[name=qnaDtlsCd]").click(function(e){
    	var idx = Number($(this).val());
    	if(idx == 1){
    		$("#layerSecretYn").hide();
    		$("#secretYn").attr('checked' , false);
    	}else{
    		$("#layerSecretYn").show();
    	}
    	
    	$('#brdInfoCont').attr('placeholder', qnaTxt[idx - 1] );
    });
</script>


<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	
	ga('create', 'UA-68494772-1', 'auto');

</script>

<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P3PMQD" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>
	(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','GA_dataLayer','GTM-P3PMQD');
</script>
<!-- End Google Tag Manager -->







<script>
    var rakeLogPageInfo = {"Switch":{"LogDisablePageshow":false,"ImpPC":true,"ImpMW":true,"LogDisable":false},"DeviceId":"","AppSessionIdXsite":"","_$RAKE_TOKEN":"871e1b1427359b4f70af57f1b03b1b89becc23d8","DataMerge":false,"AppSessionId":"","PageInfo":{"page_id":"/my11st/delivery_qna"},"_$RAKE_TOKEN_NPI":"19df1ef211ac21741c82322a9ffe739b4f5a1519","_$RAKE_ENV":"LIVE"};

    var RakeLoadScript = function() {
        var path = '//www.11st.co.kr/js/rake/rakeLog.js?v=20170808';
        try {
            var element = document.createElement('script');
            element.src = path;
            element.charset = 'euc-kr';
            document.head.appendChild(element);
        } catch(e) {}
    }
</script>
<script src="//www.11st.co.kr/js/rake/Log11stClientSentinelShuttle.js?v=20170808"></script>
<script>
    if (document.addEventListener) {
        document.addEventListener("DOMContentLoaded", RakeLoadScript);
    } else {
        document.attachEvent("onreadystatechange", function() {
            if (document.readyState !== "loading") {
                RakeLoadScript();
            }
        });
    }
</script>
