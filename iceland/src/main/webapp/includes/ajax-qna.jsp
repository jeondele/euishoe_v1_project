<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
					<%-- QnA 창 --%>
                         <div class="row">
              	 			<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                       			<div class="p-b-30 m-lr-15-sm">
                       				<div class="flex-w flex-t p-b-68">
			                        	<div class="bbs_filter" style="width: 100%;">
			                        		<button type="button" id="myQnA" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">내 문의</button>
			                        		<button type="button" id="allQnA" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">전체문의</button>
			                        		<button type="button" id="insertQnA" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" data-toggle="modal" data-target="#popLayWrap">문의하기</button>
			                         	  <select name="selQnaDtlsCd" class="float-l" id="selQnaDtlsCd" style="float:left; height: 35px; font-size: 15px;">
			                         	  	<option value="" selected="selected">문의유형(전체)</option>
			                         	  	<option value="1">상품</option><option value="2">배송</option>
			                         	  	<option value="3">반품/취소</option><option value="4">교환/변경</option>
			                         	  	<option value="5">기타</option>
			                         	  </select>	
			                         	  	<!-- 동적으로 표시버튼 누르면 바뀌도록 제작 -->
			                           	  <button type="button" id="secretQnA" class="float-l flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">비밀글표시</button>
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
				                        	<tbody> <!-- QnaList -->
				                        	
				                        	<c:choose>
				                        		<%-- 리스트가 있을 때--%>
												<c:when test="${not empty AjaxQnaList}">
			                            			<c:forEach var="qna" items="${AjaxQnaList}" varStatus="status">
			                            				<%-- 답변 완료여부 --%>
			                            				<c:choose>
			                            				<c:when test="${qna.qnaIsAnswered}=='Y'">
					                            				<%-- 비밀글 여부--%>
					                            				<c:choose>
					                            					<%-- <c:when test="${cookie.loginId.value} == ${qna.customerId}"> --%>
						                            					<c:when test="${qna.qnaIsLock}=='Y'">
						                            						<c:choose>
						                            							<c:when test="${cookie.loginId.value}==${qna.customerId}">
						                            						<tr>
											                        			<td class="td_num txt-center">${status.count}</td>
											                        			<td class="td_section txt-center">${qna.qnaTitle}</td>
											                        			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
											                        			<td>
											                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${qna.qnaContent}</a>
											                        			</td>
											                        			<td class="td_write txt-center">${qna.customerId}</td>
											                        			<td class="td_date txt-center">${qna.qnaRegdate}</td>
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
											                        		</c:when>
											                        		<c:otherwise>
											                        		<tr>
											                        			<td class="td_num txt-center">${status.count}</td>
											                        			<td class="td_section txt-center">${qna.qnaTitle}</td>
											                        			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
											                        			<td>
											                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">비밀글입니다.</a>
											                        			</td>
											                        			<td class="td_write txt-center">${qna.customerId}</td>
											                        			<td class="td_date txt-center">${qna.qnaRegdate}</td>
											                        		</tr>
											                        		</c:otherwise>
											                        		</c:choose>
									                        		</c:when>
									                        		<c:otherwise>
									                        		
									                        		</c:otherwise>
						                        				</c:choose>
							                            	</c:when>
							                           <%-- 답변 미완료 --%>
							                           <c:otherwise>
								                           <%-- 비밀글 여부 --%>
							                           		<c:choose> 
							                           			<c:when test="${qna.qnaIsLock}=='Y'">
								                           		<tr>
								                               		<td class="td_num txt-center">${status.count}</td>
								                        			<td class="td_section txt-center ">${qna.qnaTitle}</td>
								                        			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
								                        			<td>
								                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">비밀글입니다.</a>
								                        			</td>
								                        			<td class="td_write txt-center">${qna.customerId}</td>
								                        			<td class="td_date txt-center">${qna.customerId}</td>
								                            	</tr>

								                            	</c:when>
								                            	<%-- 비밀글이 아닐 때 --%>
								                            	<c:otherwise>
								                            		<tr>
								                               		<td class="td_num txt-center">${status.count}</td>
								                        			<td class="td_section txt-center ">${qna.qnaTitle}</td>
								                        			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
								                        			<td>
								                       					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${qna.qnaContent}</a>
								                        			</td>
								                        			<td class="td_write txt-center">${qna.customerId}</td>
								                        			<td class="td_date txt-center">${qna.qnaRegdate}</td>
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
