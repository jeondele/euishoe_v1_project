<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
/*
리뷰 조건별 동적 검색
*/

function reviewDynamicList() {
var listData = new Object();
	listData.customerId= $('#customerId').val();
	listData.productNum= $('#productNum').val(); 
   
	console.log('ajax로 보낼 데이터 '+ listData);
	console.log('ajax통신 시작');
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
        		console.log(request.jsonData);
        		ajaxReviewShow(request);
            }/* ,
        error : function(xhr, status) {
        		console.log(xhr + " : " + status);
        }/* , */
        
        /* callback : ajaxReviewShow */
        });
}	

// 비동기 통신 후 실행될 콜백함수
function ajaxReviewShow(data){
	console.log("ajaxReviewShow메소드 진입");
	data = data.substring(0, data.length - 1);
	console.log(', 뺀 데이터 값' + data);
	data = '[' + data + ']';
	console.log('붙인 데이터값' + data);	
	var jsonObj = JSON.parse(data);
	console.log(jsonObj);
	console.log("ajax통신 후 콜백함수 end라인");
	console.log(typeof(jsonObj));
	printReviewTable(jsonObj);
}

function printReviewTable(text){
	var table  =  "";
	for(var i=0; i < text.length; i++){
		var review = text[i];
		table  += "<tr>";
		table  += "<td class=td_num>"+review.reviewNum+"</td>";
		if(review.reviewIsanswered != 'Y'){
			table  += "<td class=txt_view>"+"<span class=state>완료</span>"+"</td>";
		}else{
			table  += "<td class=txt_view>"+"<span class=state>미완료</span>"+"</td>";	
		}
		table  += "<td>"+review.reviewContent+"</td>";
		table  += "<td>"+review.customerId+"</td>";
		table  += "<td class=td_date>"+review.reviewRegdate+"</td>";
		table  += "</tr>";
	}
	var div = document.getElementById("#ajaxReviewBody");
	if(div){
		div.innerHTML = table;
	}
}


function qnaDynamicList() {
	var listData = new Object();
		listData.customerId= $('#customerId').val();
		listData.productNum= $('#productNum').val();
		listData.typeNum= $('#selQnaDtlsCd Option:selected').val();	
		
		$('#secretQnA').click(function(){
			  $('#qnaisLock').val('Y');
			});
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

	function ajaxQnaShow(request){
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
		var table  =  "";
		for(var i=0; i < text.length; i++){
			var qna = text[i];
			table  += "<tr>";
			table  += "<td class="/"td_num txt-center"/">"+review.reviewNum+"</td>";
			if(qna.reviewIsanswered != 'Y'){
				table  += "<td class="/"txt_view"/">""<span class="/"state"/">완료</span>"+"</td>";
			}else{
				table  += "<td class="/"txt_view"/">""<span class="/"state"/">미완료</span>"+"</td>";	
			}
			
			if(qna.qnaIsLock != 'N'){
				table  += "<td>비밀 글 입니다.</td>";
			}else{
				table  += "<td>"+qna.qnaContent+"</td>";	
			}
			table  += "<td>"+qna.customerId+"</td>";
			table  += "<td class=td_date>"+qna.qnaRegdate+"</td>";
			table  += "</tr>";
		}
		var div = document.getElementById("#ajaxQnaBody");
		if(div){
			div.innerHTML = table;
		}
	}

	function readComment(){
		var Data = new Object();
		Data.customerId= $('#customerId').val();
		Data.productNum= $('#productNum').val(); 
		var url = "/iceland/comment/ajaxRead.es";
		
		$.ajax({
	        url: '/iceland/comment/ajaxRead.es',
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
	        		ajaxReviewShow(request);
	            }
	        });
	}

	function ajaxCommentShow(request){
		console.log("ajaxReviewShow메소드 진입");
		data = data.substring(0, data.length - 1);
		console.log(', 뺀 데이터 값' + data);
		data = '[' + data + ']';
		console.log('붙인 데이터값' + data);	
		var jsonObj = JSON.parse(data);
		console.log(jsonObj);
		console.log("ajax통신 후 콜백함수 end라인");
		console.log(typeof(jsonObj));
		setResult(jsonObj);
	}
	
	
	// 비동기통신 후 실행될 콜백함수
	function setResult(result){
		var commentDiv= document.getElementById('trQnqContDtl2'); 
		commentDiv.appendTo(comment);
	}
</script>
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
							<a class="nav-link" data-toggle="tab" href="#reviews" role="tab">상품 후기</a>
						</li>
            
                        <li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#qna" role="tab">상품 문의</a>
						</li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content p-t-43">
					
						<!-- 상품 상세 설명 -->
						<div class="tab-pane fade show active" id="description"
							role="tabpanel">
							<div class="how-pos2 p-lr-15-md">
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
							<div class="row">
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
			               <div class="row">
			               	 <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
	                          	<div class="p-b-30 m-lr-15-sm">
	                          		<div class="flex-w flex-t p-b-68">
			                          	<div class="bbs_filter" style="width: 100%;">
			                          		<button type="button" id="myReview" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="reviewDynamicList()" >내 리뷰</button>
			                          		<button type="button" id="allReview" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="" >전체리뷰</button>
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
												      <c:when test="${review.get('REVIEW_ISANSWERED')!='N'}">
					                            		<tr>
					                            			<td class="td_num txt-center">${review.get('REVIEW_NUM')}</td>
					                            			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
					                            			<td>
					                           					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${review.get('REVIEW_CONTENT')}</a>
					                            			</td>
					                            			<td class="td_write txt-center">${review.get('CUSTOMER_ID')}</td>
					                            			<td class="td_date txt-center">${review.get('REVIEW_REGDATE')}</td>
					                            		</tr>
					                            		<%-- 답변 클릭 시, 보이게 구현 --%>
					                            			<tr class="trQna" id="trQnqContDtl2">
						                            			<td colspan="5" class="qna_expand" id="dvQnqContDtl2" style="display:none;">
						                            				<div class="question">
						                            					<span class="ico_question">답변</span>
						                            				  	<span class="checkmark"></span>"답변완료일 시 작성됨"<br><br>
						                            				  	<span class="adminAnswer">소중한 리뷰 감사드립니다~</span>&nbsp;|&nbsp;<span style="font-size: 16px; color: green;">2018-11-07 11:38</span>
						                            				</div>
					                            				</td>
					                            			</tr>
					                            		</c:when>
					                            	<%-- 답변 미완료 글 --%>
			                            				<c:otherwise>
				                            				<tr>
						                            			<td class="td_num txt-center">${review.get('REVIEW_NUM')}</td>
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
			                            			<p>게시글이 존재하지 않습니다.</p>
			                            		</c:otherwise>
			                            	</c:choose>
			                            	</tbody>
			                            </table>
			                            
		                            	<div class="s_paging_v2">
		                            		<!-- <a href="#this" class="prev" title="이전목록"><span class="hide">이전목록</span></a> -->
		                            		<span>
		                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&lt;&lt;" data-keyno="20181107094625">&lt;&lt;</a>
		                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&lt;" data-keyno="20181107094625">&lt;</a>
		                            			<strong>1</strong>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="2" data-keyno="20181107094625">2</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="3" data-keyno="20181107085121">3</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="4" data-keyno="20181107080107">4</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="5" data-keyno="20181106234012">5</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="6" data-keyno="20181106212053">6</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="7" data-keyno="20181106184827">7</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="8" data-keyno="20181106174212">8</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="9" data-keyno="20181106162300">9</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="10" data-keyno="20181106151741">10</a>
		                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&gt;" data-keyno="20181107094625">&gt;</a>
		                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&gt;&gt;" data-keyno="20181107094625">&gt;&gt;</a>
		                            		</span>
		                            	</div>
	                        		</div>
								</div>
	               			</div>
               			</div>
              		</div>
               
        			<%-- QnA 창 --%>
        			
                    <div class="tab-pane fade" id="qna" role="tabpanel">
                         <div class="row">
              	 			<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                       			<div class="p-b-30 m-lr-15-sm">
                       				<div class="flex-w flex-t p-b-68">
			                        	<div class="bbs_filter" style="width: 100%;">
			                        		<button type="button" id="myQnA" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="qnaDynamicList()">내 문의</button>
			                        		<button type="button" id="allQnA" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="qnaDynamicList()">전체문의</button>
			                        		<button type="button" id="insertQnA" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" data-toggle="modal" data-target="#popLayWrap">문의하기</button>
			                         	  <select name="selQnaDtlsCd" class="float-l" id="selQnaDtlsCd" style="float:left; height: 35px; font-size: 15px;">
			                         	  	<option value="0" >문의유형(전체)</option>
			                         	  	<option value="1" selected="selected">상품</option>
			                         	  	<option value="2">배송</option>
			                         	  	<option value="3">반품/취소</option>
			                         	  	<option value="4">교환/변경</option>
			                         	  	<option value="5">기타</option>
			                         	  </select>	
			                         	  	<!-- 동적으로 표시버튼 누르면 바뀌도록 제작 -->
			                           	  <button type="button" id="secretQnA" class="float-l flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onclick="qnaDynamicList()">비밀글 제외</button>
			                           	  <input type="hidden" id="qnaisLock" value="N">
			                           		<%-- <button type="button" id="notSecretQnA" class="float-l flex-c-m stext-101 cl2 size-112 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">비밀글제외</button> --%>
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
				                        	
				                        	<c:choose>
				                        		<%-- 리스트가 있을 때--%>
												<c:when test="${not empty QnaList}">
			                            			<c:forEach var="qna" items="${QnaList}" varStatus="status">
			                            				<%-- 답변 완료여부 --%>
			                            				<c:choose>
			                            				<c:when test="${qna.get('QNA_ISANSWERED')!='N'}">
					                            				<%-- 비밀글 여부--%>
					                            				<c:choose>
					                            					<%-- <c:when test="${cookie.loginId.value} == ${qna.customerId}"> --%>
						                            					<c:when test="${qna.get('QNA_ISLOCK')!='N'}">
						                            							<c:if test="${cookie.loginId.value}==${qna.get('CUSTOMER_ID')}">
						                            								<tr>
													                        			<td class="td_num txt-center">${qna.get('QNA_NUM')}</td>
													                        			<td class="td_section txt-center">${qna.get('QNA_TITLE')}</td>
													                        			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
													                        			<td>
													                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${qna.get('QNA_CONTENT')}</a>
													                        			</td>
													                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
													                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
											                        				</tr>
													                        		<%-- 답변 클릭 시, 보이게 구현 --%>
													                        		<tr class="trQna" id="trQnqContDtl2">
													                        			<td colspan="6" class="qna_expand" id="dvQnqContDtl2" style="display:none;">
													                        				<div class="question">
													                        					<span class="ico_question">답변</span>
													                        				  	<span class="checkmark"></span>"답변완료일 시 작성됨"<br><br>
													                        				  	<span class="adminAnswer">관리자에 의해 작성 됨</span>&nbsp;|&nbsp;<span style="font-size: 16px; color: green;">2018-11-07 11:38</span>
													                        				</div>
													                        			</td>
													                        		</tr>
									                        					</c:if>
									                        					<tr>
												                               		<td class="td_num txt-center">${qna.get('QNA_NUM')}</td>
												                        			<td class="td_section txt-center ">${qna.get('QNA_TITLE')}</td>
												                        			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
												                        			<td>
												                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">비밀글입니다.</a>
												                        			</td>
												                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
												                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
										                            			</tr>
									                        			</c:when>
									                        		<c:otherwise>
									                        				<tr>
											                        			<td class="td_num txt-center">${qna.get('QNA_NUM')}</td>
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
							                            	
							                           <%-- 답변 미완료 --%>
							                           <c:otherwise>
								                           <%-- 비밀글 여부 --%>
							                           		<c:choose> 
							                           			<c:when test="${qna.get('QNA_ISLOCK')!='N'}">
							                           				<c:if test="${cookie.loginId.value}!=${qna.get('CUSTOMER_ID')}">
										                           		<tr>
										                               		<td class="td_num txt-center">${qna.get('QNA_NUM')}</td>
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
										                               		<td class="td_num txt-center">${qna.get('QNA_NUM')}</td>
										                        			<td class="td_section txt-center ">${qna.get('QNA_TITLE')}</td>
										                        			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
										                        			<td>
										                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">비밀글입니다.</a>
										                        			</td>
										                        			<td class="td_write txt-center">${qna.get('CUSTOMER_ID')}</td>
										                        			<td class="td_date txt-center">${qna.get('QNA_REGDATE')}</td>
										                            	</tr>
								                            	</c:when>
								                            	<%-- 비밀글이 아닐 때 --%>
								                            	<c:otherwise>
								                            		<tr>
									                               		<td class="td_num txt-center">${qna.get('QNA_NUM')}</td>
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
				                            	
				                            	
				                            	<%-- 리스트가 없을 때 --%>
												<c:otherwise>
													<tr>
					                               		<td class="td_num txt-center" colspan="5">작성된 문의 게시글이 없습니다.</td>
					                            	</tr>
												</c:otherwise>
				                            </c:choose>
				                            
				                            	
				                        	</tbody>
				                        </table>
                            
		                            	<div class="s_paging_v2">
		                            		<!-- <a href="#this" class="prev" title="이전목록"><span class="hide">이전목록</span></a> -->
		                            		<span>
		                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&lt;&lt;" data-keyno="20181107094625">&lt;&lt;</a>
		                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&lt;" data-keyno="20181107094625">&lt;</a>
		                            			<strong>1</strong>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="2" data-keyno="20181107094625">2</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="3" data-keyno="20181107085121">3</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="4" data-keyno="20181107080107">4</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="5" data-keyno="20181106234012">5</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="6" data-keyno="20181106212053">6</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="7" data-keyno="20181106184827">7</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="8" data-keyno="20181106174212">8</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="9" data-keyno="20181106162300">9</a>
		                            			<a href="#this" id="paging_page" data-pagetype="page" data-pagenum="10" data-keyno="20181106151741">10</a>
		                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&gt;" data-keyno="20181107094625">&gt;</a>
		                                        <a href="#this" id="paging_page" data-pagetype="page" data-pagenum="&gt;&gt;" data-keyno="20181107094625">&gt;&gt;</a>
		                            		</span>
		                            	</div>
                           			 </div>
                        		</div>
                        	</div>
                        </div>
					</div>
				</div>
			</div>
		</div>