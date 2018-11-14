<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
/* 리뷰 조건별 동적 검색 */
 


// 전체 검색(default) 값  검색
function reviewAllList() {
var listData = new Object();
	listData.productNum= $('#productNum').val(); 
    $.ajax({
        url: '/iceland/review/ajaxList.es',
        type: 'GET',
        data : listData,
        // dataType : 'json',
        success: function(request){
    			console.log('리퀘스트' + request);
	    		ajaxReviewShow(request);
        		console.log(typeof(request));
        	    console.log(listData);
        		console.log("ajax통신 success");
        		ajaxReviewShow(request);
            }
        });
}	


// 동적 쿼리를 활용한 다중 조건검색
function reviewDynamicList() {
var listData = new Object();
	listData.productNum= $('#productNum').val();
	listData.customerId= getCookie('loginId');

   
	console.log(getCookie('loginId'));
    $.ajax({
        url: '/iceland/review/ajaxList.es',
        type: 'GET',
        data : listData,
        // dataType : 'json',
        success: function(request){
    			console.log('리퀘스트' + request);
	    		ajaxReviewShow(request);
        		console.log(typeof(request));
        	    console.log(listData);
        		console.log("ajax통신 success");
        		ajaxReviewShow(request);
            }
        });
}	

// 비동기 통신 후 실행될 콜백함수
function ajaxReviewShow(data){
	data = data.substring(0, data.length - 1);
	data = '[' + data + ']';
	var jsonObj = JSON.parse(data);
	console.log("ajax통신 후 콜백함수 end라인");
	printReviewTable(jsonObj);
}


function printReviewTable(text){
	var table  =  "";
	var currentDate = new Date();
	if(text.length == 0){
		table += '<tr>';
		table += '<td class="td_num txt-center" colspan="5">작성된 문의 게시글이 없습니다.</td>';
		table += '</tr>';
	}else{
	for(var i=0; i < text.length; i++){
		var review = text[i];
		table  += '<tr>';
		table  += '<td class="td_num txt-center">'+review.reviewNum+'</td>';
		if(review.reviewIsanswered != 'Y'){
			table  += '<td class="txt_view txt-center flex-c-m"><span class=state>완료</span></td>';
		}else{
			table  += '<td class="txt_view txt-center flex-c-m"><span class=state>미완료</span></td>';	
		}
		table  += '<td><a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">'+review.reviewContent+'</a></td>';
		table  += '<td class="td_write txt-center">'+review.customerId+'</td>';
		if(review.reviewRegdate != null){
			table  += '<td class="td_date txt-center">'+review.reviewRegdate+'</td>';
		}else{
			table  += '<td class="td_date txt-center">'+currentDate.toLocaleDateString()+'</td>';
		}
		
		table  += '</tr>';
		console.log(review.reviewNum);
	}
	var div = document.getElementById("ajaxReviewBody");
	console.log(div);
	if(div){
		div.innerHTML = "";
		div.innerHTML = table;
	}
	}
}



/* 2. 문의글 관련 기능  */
 
function qnaAllList() {
	var listData = new Object();
		listData.productNum= $('#productNum').val();
	    $.ajax({
	        url: '/iceland/qna/ajaxList.es',
	        type: 'POST',
	        contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
	        data : listData,
	        success: function(request){
	    			console.log('리퀘스트' + request);
		    		ajaxReviewShow(request);
	        		console.log(typeof(request));
	        	    console.log(listData);
	        		console.log("ajax통신 success");
	        		console.log(request.jsonData);
	        		ajaxQnaShow(request);
	            }
	        });
	}	

 
 
function qnaDynamicList() {
		var listData = new Object();
		listData.customerId= getCookie('loginId');
		listData.productNum= $('#productNum').val();
		listData.typeNum= $('#selQnaDtlsCd Option:selected').val();	
		listData.qnaisLock= $('#qnaisLock').val();
	    
	    $.ajax({
	        url: '/iceland/qna/ajaxList.es',
	        type: 'POST',
	        contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
	        data : listData,
	        // dataType : 'json',
	        success: function(request){
	    			console.log('리퀘스트' + request);
		    		ajaxReviewShow(request);
	        		console.log(typeof(request));
	        	    console.log(listData);
	        		console.log("ajax통신 success");
	        		console.log(request.jsonData);
	        		ajaxQnaShow(request);
	            }
	        });
	}	

	function ajaxQnaShow(data){
		console.log("ajaxReviewShow메소드 진입");
		data = data.substring(0, data.length - 1);
		console.log(', 뺀 데이터 값' + data);
		data = '[' + data + ']';
		console.log('붙인 데이터값' + data);	
		var jsonObj = JSON.parse(data);
		console.log(jsonObj);
		console.log("ajax통신 후 콜백함수 end라인");
		console.log(typeof(jsonObj));
		printQnaTable(jsonObj);
	}
	
	
	function printQnaTable(text){
		var loginId = getCookie('loginId');
		var currentDate = new Date();
		var table  =  "";
		console.log('text' + text);
		console.log('textLength' + text.length);
		if(text.length == 0){
			table += '<tr>';
			table += '<td class="td_num txt-center" colspan="5">작성된 문의 게시글이 없습니다.</td>';
    		table += '</tr>';
		}else{
			for(var i=0; i < text.length; i++){
				
				var qna = text[i];
				table  += '<tr>';
				table  += '<td class="td_num txt-center">'+qna.qnaNum+'</td>';
				if(qna.reviewIsanswered != 'N'){
					table  += '<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>';
				}else{
					table  += '<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>';	
				}
				
				if(qna.qnaIsLock != 'N' && qna.customerId != loginId){
					table  += '<td><a id="showCloseDetail" class="txt_ellipsis" data-index="0">비밀글 입니다</a></td>';
				}else{
					table  += '<td class="td_date">'+qna.qnaContent+'</td>';	
				}
				table  += '<td class="td_write txt-center">'+qna.customerId+'</td>';
				if(qna.qnaRegdate == null){
					table  += '<td class="td_date txt-center">'+currentDate.toLocaleDateString()+'</td>';
				}else{
				 	table  += '<td class="td_date txt-center">'+qna.qnaRegdate+'</td>';
				}
				table  += '</tr>';
				}
			}
			var div = document.getElementById("ajaxQnaBody");
			if(div){
				div.innerHTML = "";
				div.innerHTML = table;
			}
		}
	
	/*3. 댓글읽기 기능 */
	  $(function(){
	    $("#showCloseDetail").on("click", function() {
	    	$("#dvQnqContDtl2").toggle(selectedEffect, options, 500);
	    });
	  });
	
/* 	 $(function(){
	  var sBtn = $("ul > li");    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
	  sBtn.find("a").click(function(){   // sBtn에 속해 있는  a 찾아 클릭 하면.
	   sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
	   $(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
	  })
	 }) */
</script>
<style>
 .toggler {
    width: 500px;
    height: 200px;
  }
  #button {
    padding: .5em 1em;
    text-decoration: none;
  }
  #effect {
    position: relative;
    width: 240px;
    height: 170px;
    padding: 0.4em;
  }
  #effect h3 {
    margin: 0;
    padding: 0.4em;
    text-align: center;
  }
</style>

			<div class="bor10 m-t-50 p-t-43 p-b-40">
				<!-- Tab01 -->
				<div class="tab01">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item p-b-10">
							<a class="nav-link active" data-toggle="tab" href="#description" role="tab">상품 상세</a>
						</li>
											
						<li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#information" role="tab">상품 정보</a>
						</li>

						<li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#reviews" role="tab" onclick="reviewAllList()">상품 후기</a>
						</li>
            
                        <li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#qna" role="tab" onclick="qnaAllList()">상품 문의</a>
						</li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content p-t-43">
					
						<!-- 상품 상세 설명 -->
						<div class="tab-pane fade show active" id="description"
							role="tabpanel">
							<div class="how-pos2 p-lr-15-md" style="background-color:white">
								<p class="stext-102 cl6">
									<c:forEach items="${selectAllById}" var="product">
									<c:set var ="imageRef" value="${product.imageRef}"/>
									<c:if test="${fn:contains(imageRef,'detail')}">
									<center><img src="${imageRef}" alt="IMG-PRODUCT"></center>
									</c:if>
									</c:forEach>
								</p>
							</div>
						</div>
						<!-- 상품 상세 끝 -->

						<!-- 상품 정보 -->
						<div class="tab-pane fade show" id="information" role="tabpanel">
							<div class="row" style="background-color:white">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
									<ul class="p-lr-28 p-lr-15-sm">
										<li class="flex-w flex-t p-b-7"><span
											class="stext-102 cl3 size-205"> 입기 좋은 용도 </span> <span
											class="stext-102 cl6 size-206"> ${selectAllById.get(1).productTpo} </span></li>
	
										<li class="flex-w flex-t p-b-7"><span
											class="stext-102 cl3 size-205"> 착용 적정 계절</span> <span
											class="stext-102 cl6 size-206"> ${selectAllById.get(1).productSeason} </span></li>
	
										<li class="flex-w flex-t p-b-7"><span
											class="stext-102 cl3 size-205"> 원단 </span> <span
											class="stext-102 cl6 size-206"> ${selectAllById.get(1).productFabric} </span></li>
	
										<li class="flex-w flex-t p-b-7"><span
											class="stext-102 cl3 size-205"> 제조사 </span> <span
											class="stext-102 cl6 size-206"> ${selectAllById.get(1).productManufacturer} </span></li>
	
										<li class="flex-w flex-t p-b-7"><span
											class="stext-102 cl3 size-205"> 출시일자 </span> <span
											class="stext-102 cl6 size-206"> ${selectAllById.get(1).productReleaseDate} </span></li>
									</ul>
								</div>
							</div>
						</div>
						
						<!-- 상품 정보 끝 설명 -->

               		                           

						<!-- 상품리뷰 -->
						<div class="tab-pane fade" id="reviews" role="tabpanel">
			               <div class="row" style="background-color:white">
			               	 <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
	                          	<div class="p-b-30 m-lr-15-sm">
	                          		<div class="flex-w flex-t p-b-68">
			                          	<div class="bbs_filter" style="width: 100%;">
			                          		<button type="button" id="myReview" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="reviewDynamicList()" >내 리뷰</button>
			                          		<button type="button" id="allReview" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="reviewAllList()" >전체리뷰</button>
			                          		<button type="button" id="insertReview" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" data-toggle="modal" data-target="#popLayWrap2">리뷰작성</button>
			                          	</div>
			                            
			                            <table class="prdc_bbs" summary="이 표는 상품 Q&amp;A 및 내용이 번호,문의유형,문의/답변,작성자,작성일로 구성되어 있습니다.">
			                            	<colgroup>
			                            		<col width="5%">
			                            		<col width="15%">
			                            		<col width="50%">
			                            		<col width="15%">
			                            		<col width="15%">
			                            	</colgroup>
			                            	<thead>
			                            	<tr>
			                            		<th scope="col" style="text-align:center;">번호</th>
			                            		<th scope="col" style="text-align:center;">관리자답변</th>
			                            		<th scope="col">제목</th>
			                            		<th scope="col" style="text-align:center;">작성자</th>
			                            		<th scope="col" style="text-align:center;">작성일</th>
			                            	</tr>
			                            	</thead>
			                            	<tbody id="ajaxReviewBody">
			                            		
			                            	<c:choose>
			                            	<%-- 리스트가 있을 때 --%>
			                            		<c:when test="${not empty ReviewList}">
			                            			<c:forEach var="review" items="${ReviewList}" varStatus="status">
			                            			<%-- 답변 완료 글 --%>
			                            			<c:choose>
												      <c:when test="${review.get('REVIEW_ISANSWERED')=='Y'}">
					                            		<tr>
					                            			<td class="td_num txt-center">${status.count}</td>
					                            			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
					                            			<td>
					                           					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${review.get('REVIEW_CONTENT')}</a>
					                            			</td>
					                            			<td class="td_write txt-center">${review.get('CUSTOMER_ID')}</td>
					                            			<td class="td_date txt-center">${review.get('REVIEW_REGDATE')}</td>
					                            		</tr>
					                            		<%-- 답변 클릭 시, 보이게 구현 --%>
					                            			<c:forEach var="comment" items="${CommentList}">
					                            				<c:if test="${comment.get('REVIEW_NUM')==review.get('REVIEW_NUM')}">
						                            			<tr class="trQna" id="trQnqContDtl1">
							                            			<td colspan="5" class="qna_expand" id="dvQnqContDtl2" style="display:none;">
							                            				<div class="question">
							                            					<span class="ico_question">${review.get('REVIEW_CONTENT')}</span>
							                            				  	<span class="checkmark"></span>"답변완료일 시 작성됨"<br><br>
							                            				  	<span class="adminAnswer">${comment.get('COMMENT_CONTENT')}</span>&nbsp;|&nbsp;
							                            				  	<span style="font-size: 16px; color: green;">${review.get('REVIEW_REGDATE')}</span>
							                            				</div>
						                            				</td>
						                            			</tr>
						                            			</c:if>
					                            			</c:forEach>
					                            		</c:when>
					                            	<%-- 답변 미완료 글 --%>
			                            				<c:otherwise>
				                            				<tr>
						                            			<td class="td_num txt-center">${status.count}</td>
						                            			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
						                            			<td>
						                           					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${review.get('REVIEW_CONTENT')}</a>
						                            			</td>
						                            			<td class="td_write txt-center">${review.get('CUSTOMER_ID')}</td>
						                            			<td class="td_date txt-center">${review.get('REVIEW_REGDATE')}</td>
				                            				</tr>
			                            				</c:otherwise>
			                            				</c:choose>
			                            			</c:forEach>
			                            		</c:when>
			                            		<%-- 리스트가 없을 때 --%>
			                            		<c:otherwise>
			                            			<tr><td class="td_num txt-center" colspan="5">조회한 리뷰가 없습니다.</td></tr>
			                            		</c:otherwise>
			                            	</c:choose>
			                            	</tbody>
			                            </table>
	                        		</div>
								</div>
	               			</div>
               			</div>
              		</div>
               
        			<%-- QnA 창 --%>
                    <div class="tab-pane fade" id="qna" role="tabpanel">
                         <div class="row" style="background-color:white">
              	 			<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                       			<div class="p-b-30 m-lr-15-sm">
                       				<div class="flex-w flex-t p-b-68">
			                        	<div class="bbs_filter" style="width: 100%;">
			                        		<button type="button" id="myQnA" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="qnaDynamicList()">내 문의</button>
			                        		<button type="button" id="allQnA" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="qnaAllList()">전체문의</button>
			                        		<button type="button" id="insertQnA" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" data-toggle="modal" data-target="#popLayWrap">문의하기</button>
			                           	  	<button type="button" id="secretQnA" class="float-l flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="qnaDynamicList()">비밀글 제외</button>
			                           	  	<input type="hidden" id="qnaisLock" value="N">
			                        	</div>
                        
				                        <table class="prdc_bbs" summary="이 표는 상품 Q&amp;A 및 내용이 번호,문의유형,문의/답변,작성자,작성일로 구성되어 있습니다.">
				                        	<colgroup>
				                        		<col width="5%">
				                        		<col width="5%">
				                        		<col width="15%">
				                        		<col width="45%">
				                        		<col width="15%">
				                        		<col width="15%">
				                        	</colgroup>
				                        	<thead>
				                        	<tr>
				                        		<th scope="col" style="text-align:center;">번호</th>
				                        		<th scope="col" style="text-align:center;">유형</th>
				                        		<th scope="col" style="text-align:center;">답변여부</th>
				                        		<th scope="col">제목</th>
				                        		<th scope="col" style="text-align:center;">작성자</th>
				                        		<th scope="col" style="text-align:center;">작성일</th>
				                        	</tr>
				                        	</thead>
				                        	<tbody id="ajaxQnaBody"> <!-- QnaList -->
				                        	
	<%-- 			                        	<c:choose>
				                        		리스트가 있을 때
												<c:when test="${not empty QnaList}">
			                            			<c:forEach var="qna" items="${QnaList}" varStatus="status">
			                            				답변 완료여부
			                            				<c:choose>
			                            					<c:when test="${qna.get('QNA_ISANSWERED')!='N'}">
					                            				비밀글 여부
					                            				<c:choose>
						                            					<c:when test="${qna.get('QNA_ISLOCK')!='N'}">
						                            							<c:if test="${cookie.loginId.value == qna.get('CUSTOMER_ID')}">
						                            								<tr>
													                        			<td class="td_num txt-center">${status.count}</td>
													                        			<td class="td_section txt-center">${qna.get('QNA_TITLE')}</td>
													                        			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
													                        			<td>
													                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${qna.get('QNA_CONTENT')}</a>
													                        			</td>
													                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
													                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
											                        				</tr>
													                        		답변 클릭 시, 보이게 구현
																					<c:forEach var="comment" items="${CommentList}">
											                            				<c:if test="${comment.get('QNA_NUM') == qna.get('QNA_NUM')}">
												                            			<tr class="trQna" id="trQnqContDtl1">
													                            			<td colspan="5" class="qna_expand" id="dvQnqContDtl2" style="display:none;">
													                            				<div class="question">
													                            					<span class="ico_question">${qna.get('QNA_CONTENT')}</span>
													                            				  	<span class="checkmark"></span>"답변완료"<br><br>
													                            				  	<span class="adminAnswer">${comment.get('COMMENT_CONTENT')}</span>&nbsp;|&nbsp;
													                            				  	<span style="font-size: 16px; color: green;">${qna.get('QNA_REGDATE')}</span>
													                            				</div>
												                            				</td>
												                            			</tr>
												                            			</c:if>
											                            			</c:forEach>
									                        					</c:if>
									                        			</c:when>
									                        		<c:otherwise>
									                        				<tr>
											                        			<td class="td_num txt-center">${status.count}</td>
											                        			<td class="td_section txt-center">${qna.get('QNA_TITLE')}</td>
											                        			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
											                        			<td>
											                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">비밀글입니다.</a>
											                        			</td>
											                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
											                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
											                        		</tr>
									                        		</c:otherwise>
						                        				</c:choose>
							                            	</c:when>
							                            	
							                           답변 미완료
							                           <c:otherwise>
								                           비밀글 여부
							                           		<c:choose> 
							                           			<c:when test="${qna.get('QNA_ISLOCK')!='N'}">
							                           				<c:if test="${cookie.loginId.value != qna.get('CUSTOMER_ID')}">
										                           		<tr>
										                               		<td class="td_num txt-center">${status.count}</td>
										                        			<td class="td_section txt-center ">${qna.get('QNA_TITLE')}</td>
										                        			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
										                        			<td>
										                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">비밀글입니다.</a>
										                        			</td>
										                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
										                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
										                            	</tr>
																	</c:if>
																		<tr>
										                               		<td class="td_num txt-center">${status.count}</td>
										                        			<td class="td_section txt-center ">${qna.get('QNA_TITLE')}</td>
										                        			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
										                        			<td>
										                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">비밀글입니다.</a>
										                        			</td>
										                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
										                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
										                            	</tr>
								                            	</c:when>
								                            	비밀글이 아닐 때
								                            	<c:otherwise>
								                            		<tr>
									                               		<td class="td_num txt-center">${status.count}</td>
									                        			<td class="td_section txt-center ">${qna.get('QNA_TITLE')}</td>
									                        			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
									                        			<td>
									                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${qna.get('QNA_CONTENT')}</a>
									                        			</td>
									                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
									                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
								                            		</tr>
								                            	</c:otherwise>
							                            		</c:choose>
							                          		 </c:otherwise> 	
							                      		</c:choose>
													</c:forEach>
				                            	</c:when>
				                            	
				                            	
				                            	리스트가 없을 때
												<c:otherwise>
													<tr>
					                               		<td class="td_num txt-center" colspan="5">작성된 문의 게시글이 없습니다.</td>
					                            	</tr>
												</c:otherwise>
				                            </c:choose> --%>
				                            
				                            <c:choose>
												<c:when test="${not empty QnaList}">
			                            			<c:forEach var="qna" items="${QnaList}" varStatus="status">
			                            					<c:if test="${qna.get('QNA_ISANSWERED')!='N'}">
					                            				<c:choose>
						                            					<c:when test="${qna.get('QNA_ISLOCK')!='N'}">
						                            							<c:if test="${cookie.loginId.value == qna.get('CUSTOMER_ID')}">
						                            								<tr>
													                        			<td class="td_num txt-center">${status.count}</td>
													                        			<td class="td_section txt-center">${qna.get('QNA_TITLE')}</td>
													                        			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
													                        			<td>
													                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${qna.get('QNA_CONTENT')}</a>
													                        			</td>
													                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
													                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
											                        				</tr>
																					<c:forEach var="comment" items="${CommentList}">
											                            				<c:if test="${comment.get('QNA_NUM') == qna.get('QNA_NUM')}">
												                            			<tr class="trQna" id="trQnqContDtl1">
													                            			<td colspan="5" class="qna_expand" id="dvQnqContDtl2" style="display:none;">
													                            				<div class="question">
													                            					<span class="ico_question">${qna.get('QNA_CONTENT')}</span>
													                            				  	<span class="checkmark"></span>"답변완료"<br><br>
													                            				  	<span class="adminAnswer">${comment.get('COMMENT_CONTENT')}</span>&nbsp;|&nbsp;
													                            				  	<span style="font-size: 16px; color: green;">${qna.get('QNA_REGDATE')}</span>
													                            				</div>
												                            				</td>
												                            			</tr>
												                            			</c:if>
											                            			</c:forEach>
									                        					</c:if>
									                        			</c:when>
									                        			<c:otherwise>
									                        				<tr>
											                        			<td class="td_num txt-center">${status.count}</td>
											                        			<td class="td_section txt-center">${qna.get('QNA_TITLE')}</td>
											                        			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
											                        			<td>
											                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">비밀글입니다.</a>
											                        			</td>
											                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
											                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
											                        		</tr>
											                        			<c:forEach var="comment" items="${CommentList}">
											                            				<c:if test="${comment.get('QNA_NUM') == qna.get('QNA_NUM')}">
												                            			<tr class="trQna" id="trQnqContDtl1">
													                            			<td colspan="5" class="qna_expand" id="dvQnqContDtl2" style="display:none;">
													                            				<div class="question">
													                            					<span class="ico_question">${qna.get('QNA_CONTENT')}</span>
													                            				  	<span class="checkmark"></span>"답변완료"<br><br>
													                            				  	<span class="adminAnswer">${comment.get('COMMENT_CONTENT')}</span>&nbsp;|&nbsp;
													                            				  	<span style="font-size: 16px; color: green;">${qna.get('QNA_REGDATE')}</span>
													                            				</div>
												                            				</td>
												                            			</tr>
												                            			</c:if>
											                            			</c:forEach>
									                        			</c:otherwise>
						                        					</c:choose>
						                        				</c:if>
						                        				
							                            	
							                           <c:if test="${qna.get('QNA_ISANSWERED')!='Y'}">
							                           		<c:choose> 
							                           			<c:when test="${qna.get('QNA_ISLOCK')!='N'}">
							                           				<c:if test="${cookie.loginId.value != qna.get('CUSTOMER_ID')}">
										                           		<tr>
										                               		<td class="td_num txt-center">${status.count}</td>
										                        			<td class="td_section txt-center ">${qna.get('QNA_TITLE')}</td>
										                        			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
										                        			<td>
										                        			
										                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">비밀글입니다.</a>
										                        			</td>
										                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
										                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
										                            	</tr>
																	</c:if>
																		<tr>
										                               		<td class="td_num txt-center">${status.count}</td>
										                        			<td class="td_section txt-center ">${qna.get('QNA_TITLE')}</td>
										                        			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
										                        			<td>
										                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">비밀글입니다.</a>
										                        			</td>
										                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
										                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
										                            	</tr>
								                            	</c:when>
								                            	<c:otherwise>
								                            		<tr>
									                               		<td class="td_num txt-center">${status.count}</td>
									                        			<td class="td_section txt-center ">${qna.get('QNA_TITLE')}</td>
									                        			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
									                        			<td>
									                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${qna.get('QNA_CONTENT')}</a>
									                        			</td>
									                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
									                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
								                            		</tr>
								                            	</c:otherwise>
							                            		</c:choose>
							                          		</c:if> 	
													</c:forEach>
				                            	</c:when>
				                            	
				                            	
												<c:otherwise>
													<tr>
					                               		<td class="td_num txt-center" colspan="5">작성된 문의 게시글이 없습니다.</td>
					                            	</tr>
												</c:otherwise>
				                            </c:choose>
				                        	</tbody>
				                        </table>                           
                           			 </div>
                        		</div>
                        	</div>
                        </div>
					</div>
				</div>
			</div>
		</div>
