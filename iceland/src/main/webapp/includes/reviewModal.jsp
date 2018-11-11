<%@ page contentType="text/html; charset=utf-8"%>

<%-- 리뷰 작성 Modal 창 --%>
<div id="popLayWrap2" class="modal fade" role="dialog">
    <form name="frmMain" method="post">
		<div class="modal-dialog modal-lg" style="width:600px; height:375px;">	
        	<div class="modal-content">
            <!-- 팝업 내용입력부분 ============================= -->
            	<div class="modal-header">
	      			<h2 class="modal-title" style="display:inline;">리뷰작성</h2>
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
                                <th scope="row" class="first" style="text-align: center;"><label for="qnaDtlsCd">평점 선택</label></th>
                                <td class="alignL">
                                    <div class="select_wrap">
                                    	<span class="wrap-rating fs-18 cl11 pointer" style="font-size: 20px;">
											<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
											<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
											<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
											<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
											<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
											<input class="dis-none" type="number" name="rating" id="reviewScore" value="">
										</span>
                                    </div>
                                </td>
<script>
	${star}
</script>
                                
                            </tr>
	                        <tr>
	                            <th scope="row" class="first" style="text-align: center;"><label for="brdInfoCont">내용</label></th>
	                            <td class="alignL">
	                            <br>
	                                <textarea name="brdInfoCont" id="brdInfoCont" rows="10" cols="67" placeholder="리뷰 평점을 선택하시고, 구매평을 자유롭게 남겨주세요"></textarea>
	                            </td>
	                        </tr>
	                        <tr>
	                        	<th scope="row" class="myInfoHeader" style="text-align: center;">비밀글 여부</th>
		                        <td class="alignL">
		                        	<br>
	                                    <div class="select_wrap">
	                                    	<span for="qnaDtlsCd6" class="qnaDtlsCd6"><input type="radio" name="qnaDtlsCd6" class="qnaDtlsCd6" value="true">&nbsp;사용</span>&nbsp;&nbsp;
	                                    	<span for="qnaDtlsCd7" class="qnaDtlsCd7"><input type="radio" name="qnaDtlsCd7" class="qnaDtlsCd7" value="false">&nbsp;미사용</span>&nbsp;&nbsp;
										</div>
									<br>
	                			</td>
                			</tr>
                			<%-- 비밀글 사용여부에 따라 비밀번호 활성 / 비활성 --%>
                      		<tr>
	                            <th scope="row" class="first" style="text-align: center;"><label for="brdInfoCont">비밀번호</label></th>
	                            <td class="alignL">
	                                <input type="password" id="reviewPassword" name="reviewPassword">
	                            </td>
	                        </tr>
                        	</tbody>
	                	</table>            
                </div>
                <div class="modal-footer" style="align-items:center;">
                  	<input type="submit" id="addReview" class="flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" value="작성" style="border:none; display:inline; text-align:center;">
       				<button type="button" id="cancelReview" class="flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" style="border:none; display:inline;" data-dismiss="modal">취소</button>
                </div>
                
               </div> 
            </div>
    	</form>
	</div>