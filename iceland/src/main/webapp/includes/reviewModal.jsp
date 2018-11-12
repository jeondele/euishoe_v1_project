<%@ page contentType="text/html; charset=utf-8"%>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

<script>
$(document).ready(function(){
    var reviewScore = document.getElementsByClassName("item-rating pointer zmdi zmdi-star").length;
    $('#reviewScore').val(reviewScore);
     
    var content = document.getElementById("Content").value;
    $('#reviewContent').val(content);

    
 });   


function formSubmit() {
/*     if(!$('#Content').val.length < 10 || $('#Content').val.length > 100){
		 alert("10자 이하, 100자 이상 작성할 수 없습니다.");
		return;
   } */
   /*encodeURIComponent($('#reviewContent').val());*/
   
       $(function() {
        $('input:radio[name="checkIsLock"]').change(function() {
            if ($('input:radio[name="checkIsLock"]:checked').val() == 'Y') {
            	$('#reviewIslock').val('Y');
            	$('#passwordDiv').show();    
            }else {
            	$('#reviewIslock').val('N');
                $('#passwordDiv').hide();   	
            }
        });
    });
   
   var data = new Object();
   data.customerId= $('#customerId').val(); 
   data.productNum = $('#productNum').val(); 
   data.reviewContent = document.getElementById("Content").value;
   data.reviewScore = $('#reviewScore').val();
   data.reviewPassword = $('#reviewPassword').val();
   
    $.ajax({
        url: '/iceland/review/write.es',
        type: 'POST',
        contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
        data : data,
        success: function(){
                $('#popLayWrap2').hide();
                alert("글 작성완료");
            },
        
        error : function(xhr, status) {
            alert(xhr + " : " + status);
        }
        });
}

</script>

<script> 
/*         $("#reviewForm").submit(function(event) {
          event.preventDefault();
          var url = $(this).attr("action");
          var data = $(this).serialize();
          $.post(url, data)
          .done(function(data){
            console.log(data);
            alert(data);
          });
        }); */

</script>


<%-- 리뷰 작성 Modal 창 --%>
<div id="popLayWrap2" class="modal fade" role="dialog">
    <form name="frmMain" method="post" id=reviewForm action="/iceland/review/write.es">
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
                                <th scope="row" class="first" style="text-align: center;">
                                <label for="qnaDtlsCd">평점 선택</label>
                                </th>
                                
                                <td class="alignL">
                                    <div class="select_wrap">
                                    	<span class="wrap-rating fs-18 cl11 pointer" style="font-size: 20px;">
											<i class="item-rating pointer zmdi zmdi-star" id=star></i>
											<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
											<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
											<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
											<i class="item-rating pointer zmdi zmdi-star-outline" id=star></i>
											<input class="dis-none" type="number" name="reviewScore" id="reviewScore">
										</span>
                                    </div>
                                </td>
                            </tr>
                            
	                        <tr>
	                           <th scope="row" class="first" style="text-align: center;">
	                           	<label for="brdInfoCont">내용</label>
	                           </th>
	                            <td class="alignL"><br>
	                               <textarea name="brdInfoCont" id="Content" rows="10" cols="67" placeholder="리뷰 평점을 선택하시고, 구매평을 자유롭게 남겨주세요"></textarea>
	                               <input type="hidden" id="reviewContent" name="reviewContent">
	                            </td>
	                        </tr>
	                        <tr>
	                        	<th scope="row" class="myInfoHeader" style="text-align: center;">비밀글 여부</th>
		                        <td class="alignL">
		                        	<br>
	                                    <div class="select_wrap">
	                                    	<span for="checkIsLock" class="qnaDtlsCd6"><input type="radio" name="checkIsLock" id="checkIsLock" value="Y">&nbsp;사용</span>&nbsp;&nbsp;
	                                    	<span for="checkIsLock" class="qnaDtlsCd7"><input type="radio" name="checkIsLock" id="checkIsUnLock" value="N">&nbsp;미사용</span>&nbsp;&nbsp;
	                                    	<input type="hidden" id="reviewIslock" name="reviewIslock">
										</div>
									<br>
	                			</td>
                			</tr>
                			<%-- 비밀글 사용여부에 따라 비밀번호 활성 / 비활성 --%>
                      		<tr id="passwordDiv" style="display:none;">
	                            <th scope="row" class="first" style="text-align: center;">
	                            <label for="brdInfoCont">비밀번호</label></th>
	                            <td class="alignL">
	                                <input type="password" id="reviewPassword" name="reviewPassword">
	                            </td>
	                        </tr>
                        	</tbody>
	                	</table>            
                </div>
                <div class="modal-footer" style="align-items:center;">
                  	<input type="button" id="addReview" onclick="formSubmit()"  "flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" value="작성" style="border:none; display:inline; text-align:center;">
       				<button type="button" id="cancelReview" class="flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" style="border:none; display:inline;" data-dismiss="modal">취소</button>
                </div>
                <input type="hidden" id="customerId" name="customerId" value="${cookie.loginId.value}">
                <input type="hidden" id="productNum" name="productNum" value="1">
               </div> 
            </div>
    	</form>
	</div>