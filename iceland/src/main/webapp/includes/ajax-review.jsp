<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tt" uri="/WEB-INF/tlds/fordecode.tld"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

						<!-- 상품리뷰 -->
			               <div class="row">
			               	 <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
	                          	<div class="p-b-30 m-lr-15-sm">
	                          		<div class="flex-w flex-t p-b-68">
			                          	<div class="bbs_filter" style="width: 100%;">
			                          		<button type="button" id="myReview" class="float-r flex-c-m stext-101 cl2 size-100 bg8 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" onkeyup="searchFunction()" >내 리뷰</button>
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
			                            	<tbody id="ajaxTableBody">
			                            	<c:choose>
			                            		<c:when test="${not empty AjaxQnaList}">
			                            			<c:forEach var="review" items="${AjaxQnaList}" varStatus="status">
			                            			<c:choose>
												      <c:when test="${review.reviewIsAnswered}=='N'">
					                            		<tr>
					                            			<td class="td_num txt-center">${status.count}</td>
					                            			<td class="txt_view txt-center flex-c-m"><span class="state">완료</span></td>
					                            			<td>
					                           					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${review.reviewContent}</a>
					                            			</td>
					                            			<td class="td_write txt-center">${review.customerId}</td>
					                            			<td class="td_date txt-center">${review.reviewRegdate}</td>
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
			                            		<c:otherwise>
			                            				<tr>
					                            			<td class="td_num txt-center">${status.count}</td>
					                            			<td class="txt_view txt-center flex-c-m"><span class="state">미완료</span></td>
					                            			<td>
					                           					<a id="showCloseDetail" class="txt_ellipsis" data-index="0" data-brdinfono="118923340" data-subinfono="">${review.reviewContent}</a>
					                            			</td>
					                            			<td class="td_write txt-center">${review.customerId}</td>
					                            			<td class="td_date txt-center">${review.reviewRegdate}</td>
			                            				</tr>
			                            		</c:otherwise>
			                            		</c:choose>
			                            		</c:forEach>
			                            		</c:when>
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