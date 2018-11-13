<%@ page contentType="text/html; charset=utf-8"%>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

<script>
/* $(document).ready(function(){
    $(function() {
        $('input:radio[name="qnaCheckLock"]').change(function() {
            if ($(this).val() == 'Y') {
            	$('#qnaIsLock').val('Y');
            	$('#qnapasswordDiv').show();    
            }else {
            	$('#qnaIsLock').val('N');
                $('#qnapasswordDiv').hide();   	
            }
        });
    });
    
 });



/*     if(!$('#Content').val.length < 10 || $('#Content').val.length > 100){
		 alert("10자 이하, 100자 이상 작성할 수 없습니다.");
		return;
   } */
   /*encodeURIComponent($('#reviewContent').val());*/
   function qnaFormSubmit() {
           $('input:radio[name="qnaDtlsCd"]').change(function() {
        	if($('input:radio[name="qnaDtlsCd"]:checked').val() == '1') {
        		$('#qnaTypeNum').val('1');
        		$('#qnaTitle').val('상품');
			}else if($('input:radio[name="qnaDtlsCd"]:checked').val() == '2'){
				$('#qnaTypeNum').val('2');
				$('#qnaTitle').val('배송');
			}else if($('input:radio[name="qnaDtlsCd"]:checked').val() == '3'){
				$('#qnaTypeNum').val('3');
				$('#qnaTitle').val('반품/취소');
			}else if($('input:radio[name="qnaDtlsCd"]:checked').val() == '4'){
				$('#qnaTypeNum').val('4');
				$('#qnaTitle').val('교환/변경');
			}else if($('input:radio[name="qnaDtlsCd"]:checked').val() == '5'){
				$('#qnaTypeNum').val('5');
				$('#qnaTitle').val($("qnaDtlsCd1".val()));
			}
        });
   		
           $(function() {
               $('input:radio[name="qnaCheckLock"]').change(function() {
                   if ($(this).val() == 'Y') {
	                   	$('#qnaIsLock').val('Y');
	                   	$('#qnapasswordDiv').show();    
                   }else {
	                   	$('#qnaIsLock').val('N');
	                    $('#qnapasswordDiv').hide();
	                    $('#qnaPassword').val(null);
                   }
               });
           });
   
   var qnaData = new Object();
   qnaData.qnaTypeNum = $('#reviewScore').val();
   qnaData.productNum = $('#productNum').val();
   qnaData.customerId= $('#customerId').val(); 
   qnaData.qnaTitle = $('#qnaTitle').val();
   qnaData.qnaContent = document.getElementById("brdInfoCont").value;
   qnaData.qnaPassword = $('#qnaPassword').val();
   qnaData.qnaIsLock = $('#qnaIslock').val();
   
    $.ajax({
        url: '/iceland/qna/write.es',
        type: 'POST',
        contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
        data : qnaData,
        success: function(){
                $('#popLayWrap').hide();
                alert("글 작성완료");
            },
        
        error : function(xhr, status) {
            alert(xhr + " : " + status);
        }
        });
   }
</script>

<%-- 문의 작성 Modal 창 --%>
	<div id="popLayWrap" class="modal fade" role="dialog">
    <form name="frmMain" id="qnaForm" method="post">
		<div class="modal-dialog modal-lg" style="width:690px; height:375px;">	
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
                                <th scope="row" class="first" style="text-align: center;"><label for="qnaDtlsCd">문의유형</label></th>
                                <td class="alignL">
                                    <div class="select_wrap">
                                    	<span for="qnaDtlsCd1" class="qnaDtlsCd1" id="qnaDtlsCd1"><input type="radio" id="qnaDtlsCd1" name="qnaDtlsCd" class="qnaDtlsCd1" value="1">&nbsp;상품</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd2" class="qnaDtlsCd2" id="qnaDtlsCd2"><input type="radio" id="qnaDtlsCd2" name="qnaDtlsCd" class="qnaDtlsCd2" value="2">&nbsp;배송</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd3" class="qnaDtlsCd3" id="qnaDtlsCd3"><input type="radio" id="qnaDtlsCd3" name="qnaDtlsCd" class="qnaDtlsCd3" value="3">&nbsp;반품/취소</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd4" class="qnaDtlsCd4" id="qnaDtlsCd4"><input type="radio" id="qnaDtlsCd4" name="qnaDtlsCd" class="qnaDtlsCd4" value="4">&nbsp;교환/변경</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd5" class="qnaDtlsCd5" id="qnaDtlsCd5"><input type="radio" id="qnaDtlsCd5" name="qnaDtlsCd" class="qnaDtlsCd5" value="5">&nbsp;기타</span>
                                    	
                                    	<input type="hidden" id="qnaTypeNum" name="qnaTypeNum">
                                    	<input type="hidden" id="qnaTitle" name="qnaTitle">
                                    	
                                    </div>
                                    <br>
                                </td>
                            </tr>
                        
                      
	                        <tr>
	                            <th scope="row" class="first" style="text-align: center;"><label for="brdInfoCont">내용</label></th>
	                            <td class="alignL">
	                                <textarea name="brdInfoCont" id="brdInfoCont" rows="10" cols="67" placeholder="문의유형을 선택해 주시고,궁금하신 내용을 작성해 주세요."></textarea>
	                                <input type="hidden" id="qnaContent" name="qnaContent">
	                            </td>
	                        </tr>
	                        
<!-- 	                        <tr>
	                            <th scope="row" class="myInfoHeader" style="text-align: center;">이메일</th>
			                    <td>
			                    	<div>
			                    		<br>
				                    	<input id="email1" name="email1" class="mailId" value="" type="text">&nbsp;@&nbsp;<input id="email2" name="email2" class="mailAddress" readonly="readonly" value="" type="text">
			                      		<select id="email3" style="vertical-align: middle;">
					                        <option value="" selected="selected">-이메일 선택 -</option>
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
			                    	<span class="sub_notice" style="font-size: 20px; color:blue;">* 답변완료시 등록한 이메일로 알려드립니다.</span><br>
			                  	</div>
			                  	</td>
	                        </tr> -->
	                        
	                        <tr>
	                        	<th scope="row" class="myInfoHeader" style="text-align: center;">비밀글 여부</th>
		                        <td class="alignL">
                                    <div class="select_wrap">
                                    	<span for="qnaDtlsCd6" class="qnaDtlsCd6"><input type="radio" name="qnaCheckLock" id="qnaCheckLock" value="Y">&nbsp;사용</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd7" class="qnaDtlsCd7"><input type="radio" name="qnaCheckLock" id="qnaCheckUnLock" value="N">&nbsp;미사용</span>&nbsp;&nbsp;
                                    	<input type="hidden" id="qnaIslock" name="qnaIslock" value="N">
									</div>
	                			</td>
                			</tr>
                			<%-- 비밀글 사용여부에 따라 비밀번호 활성 / 비활성 --%>
                      		<tr id="qnapasswordDiv" style="display:none;">
	                            <th scope="row" class="first" style="text-align: center;">
	                            <label for="brdInfoCont">비밀번호</label></th>
	                            <td class="alignL">
	                                <input type="password" id="qnaPassword" name="qnaPassword">
	                            </td>
	                        </tr>
                        	</tbody>
	                	</table>            
                </div>
                <div class="modal-footer" style="align-items:center;">
                  	<input type="button" onclick="qnaFormSubmit()" id="addQnA" class="flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" value="작성" style="border:none; display:inline; text-align:center;">
       				<button type="button" id="cancelQnA" class="flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" style="border:none; display:inline;" data-dismiss="modal">취소</button>
                </div>
                
               </div> 
            </div>
    </form>
</div>