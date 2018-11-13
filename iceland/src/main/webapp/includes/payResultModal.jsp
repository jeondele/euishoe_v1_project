<%@ page contentType="text/html; charset=utf-8"%>

<%-- 결제 결과 Modal 창 --%>
<div id="popLayWrap3" class="modal fade popLayWrap3" role="dialog">
    <form name="frmMain" method="post">
		<div class="modal-dialog modal-lg" style="width:690px; height:375px;">	
        	<div class="modal-content">
            <!-- 팝업 내용입력부분 ============================= -->
            	<div class="modal-header">
	      			<h2 class="modal-title" style="display:inline;">주문 완료</h2>
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
                        		<td colspan="2" scope="row" class="first" style="text-align: center;"><label for="qnaDtlsCd">주문내용</label></td>
                        	</tr>
                            <tr>
                                <th scope="row" class="first" style="text-align: center;">
                                	<label for="qnaDtlsCd">상품명</label>
                                </th>
                                <td class="alignL">
                                    <div class="select_wrap">데자와 외 1건</div>
                                </td>
                            </tr>
                        	<tr>
                                <th scope="row" class="first" style="text-align: center;"><label for="qnaDtlsCd">수량</label></th>
                                <td class="alignL">
                                    <div class="select_wrap">1개</div>
                                </td>
                            </tr>
                      		
	                        <tr>
                        		<td colspan="2" scope="row" class="first" style="text-align: center;"><label for="qnaDtlsCd">결제내역</label></td>
                        	</tr>
                            <tr>
                                <th scope="row" class="first" style="text-align: center;">
                                	<label for="qnaDtlsCd">결제방식</label>
                                </th>
                                <td class="alignL">
                                    <div class="select_wrap">신용카드 | 일시불</div>
                                </td>
                            </tr>
                        	<tr>
                                <th scope="row" class="first" style="text-align: center;">
                                	<label for="qnaDtlsCd">결제금액</label>
                                </th>
                                <td class="alignL">
                                    <div class="select_wrap">50000원</div>
                                </td>
                            </tr>
                        	</tbody>
	                	</table>            
                </div>
                <div class="modal-footer" style="align-items:center;">
                  	<input type="submit" id="addQnA" class="flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" value="홈으로" style="border:none; display:inline; text-align:center;">
                </div>
                
               </div> 
            </div>
    </form>
</div>