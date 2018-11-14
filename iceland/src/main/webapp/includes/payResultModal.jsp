<%@ page contentType="text/html; charset=utf-8"%>

<%-- 결제 결과 Modal 창 --%>
<div id="popLayWrap3" class="modal fade popLayWrap3" role="dialog">
    <form name="frmMain" action="/iceland/home.es" method="post">
		<div class="modal-dialog modal-lg" style="width:690px; height:375px;">	
        	<div class="modal-content">
            <!-- 팝업 내용입력부분 ============================= -->
            	<div class="modal-header">
	      			<h1 class="modal-title" style="display:inline; text-align: center;">주문 완료</h1>
	            </div>
	            <div class="modal-body">
	            	<h1>주문이 정상적으로 완료되었습니다.</h1>
                </div>
                
                <div class="modal-footer" style="align-items:center;">
                  	<input type="submit" id="addQnA" class="flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" value="홈으로" style="border:none; display:inline; text-align:center;">
                </div>
                
               </div> 
            </div>
    </form>
</div>