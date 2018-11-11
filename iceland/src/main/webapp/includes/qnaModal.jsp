<%@ page contentType="text/html; charset=utf-8"%>

<%-- 문의 작성 Modal 창 --%>
	<div id="popLayWrap" class="modal fade" role="dialog">
    <form name="frmMain" method="post">
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
                                    	<span for="qnaDtlsCd1" class="qnaDtlsCd1"><input type="radio" name="qnaDtlsCd1" class="qnaDtlsCd1" value="01">&nbsp;상품</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd2" class="qnaDtlsCd2"><input type="radio" name="qnaDtlsCd2" class="qnaDtlsCd2" value="02">&nbsp;배송</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd3" class="qnaDtlsCd3"><input type="radio" name="qnaDtlsCd3" class="qnaDtlsCd3" value="03">&nbsp;반품/취소</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd4" class="qnaDtlsCd4"><input type="radio" name="qnaDtlsCd4" class="qnaDtlsCd4" value="04">&nbsp;교환/변경</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd5" class="qnaDtlsCd5"><input type="radio" name="qnaDtlsCd5" class="qnaDtlsCd5" value="05">&nbsp;기타</span>
                                    </div>
                                    <br>
                                </td>
                            </tr>
                        
                      
	                        <tr>
	                            <th scope="row" class="first" style="text-align: center;"><label for="brdInfoCont">내용</label></th>
	                            <td class="alignL">
	                                <textarea name="brdInfoCont" id="brdInfoCont" rows="10" cols="67" placeholder="문의유형을 선택해 주시고,궁금하신 내용을 작성해 주세요."></textarea>
	                            </td>
	                        </tr>
	                        
	                        <tr>
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
	                        </tr>
	                        
	                        <tr>
	                        	<th scope="row" class="myInfoHeader" style="text-align: center;">비밀글 여부</th>
		                        <td class="alignL">
                                    <div class="select_wrap">
                                    	<span for="qnaDtlsCd6" class="qnaDtlsCd6"><input type="radio" name="qnaDtlsCd6" class="qnaDtlsCd6" value="true">&nbsp;사용</span>&nbsp;&nbsp;
                                    	<span for="qnaDtlsCd7" class="qnaDtlsCd7"><input type="radio" name="qnaDtlsCd7" class="qnaDtlsCd7" value="false">&nbsp;미사용</span>&nbsp;&nbsp;
									</div>
	                			</td>
                			</tr>
                        	</tbody>
	                	</table>            
                </div>
                <div class="modal-footer" style="align-items:center;">
                  	<input type="submit" id="addQnA" class="flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" value="작성" style="border:none; display:inline; text-align:center;">
       				<button type="button" id="cancelQnA" class="flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" style="border:none; display:inline;" data-dismiss="modal">취소</button>
                </div>
                
               </div> 
            </div>
    </form>
</div>