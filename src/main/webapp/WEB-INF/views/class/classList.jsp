<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="utf-8">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>수업 관리</title>
        <link href="css/styles.css" rel="stylesheet" />
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
		<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
        
        <script type="text/javascript">
	        var dateConf ={
	                changeMonth: true, 
	                changeYear: true,
	                nextText: '다음 달',
	                prevText: '이전 달', 
	                dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
	                dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
	                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	                dateFormat: "yy-mm-dd"
	
	           }; 
				
				
		    $(document).ready(function () {
		            $.datepicker.setDefaults($.datepicker.regional['ko']); 
		            $( "#stDate" ).datepicker(dateConf);
		            $( "#edDate" ).datepicker(dateConf);    
		    });
        	function classPop(classSeq) {
        		var win = window.open("/classLessonList?classSeq="+classSeq, "수업목록", "width=1000,height=600");	
        		
        		
        	}
        </script>
    </head>
    <body class="sb-nav-fixed">
      
        <div id="layoutSidenav"> 
            <c:import url="../page/lnb.jsp"></c:import>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                       <span class="d-block p-3 fs-2 fw-bold text-dark">수업 관리</span>
                       <i class="fas fa-table me-1"></i>
                          <div class="card-header">
                               	<form name="frm" id="frm" action="/classList" method="get">
				         			<div class="row row-cols-9 align-item-center mt-2">
									  <div class="text-end col-0 mt-2">
									      선생님
									  </div>
									  <div class="col">
									 	<input type="text" class="form-control" name="tNm" value=""/>
									  </div>
									  <div class="text-end col-0 mt-2">
									        회원
									  </div>
									  <div class="col">
										<input type="text" class="form-control" name="userNm" value=""/>
									  </div>
									  <div class="text-end col-0 mt-2">
									      기간
									  </div>
									  <div class="col">
									  	<input type="text" class="form-control mb-2" placeholder="시작일" aria-label="시작일" name="stDate" id="stDate"  value=""/>
									  </div>
									  <div class="text-center col-99 mt-2">
									    ~
									  </div>
									  <div class="col">
									  	<input type="text" class="form-control mb-2" placeholder="종료일" aria-label="종료일" name="edDate" id="edDate"  value=""/>
									  </div>
									  <div class="col-1 ms-sm-2">
									  	<button type="submit" class="btn btn-darkgray" onclick="searchSubmit();">검색</button>
									  </div>
									  <div class="col-1 ms-sm-1">
									    <a class="small" href=""></a>
	                                    <a class="btn btn-darkgray" href="/classEdit">등록</a>
	                                  </div>
								  </div>
				      			</form>
                         </div>
                            
                        <div class="card mb-4">
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th class="text-center">등록일자</th>
                                            <th class="text-center">회원 성함</th>
                                            <th class="text-center">수업명</th>
                                            <th class="text-center">시간</th>
                                            <th class="text-center">선생님</th>
                                            <th class="text-center">등록횟수</th>
                                            <th class="text-center">등록기간</th>
                                            <th class="text-center">금액</th>
                                            <th class="text-center">수입</th>
                                            <th class="text-center">결제방법</th>
                                            <th class="text-center">비고</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	
                                    	<c:forEach items="${classList}" var="cl">
                                    		<tr>
	                                            <td>${cl.ST_DATE}</td>
	                                            <td>${cl.USER_NM}</td>
	                                            <td><a href="/classEdit?seq=${cl.SEQ}">${cl.CLASS_NM}</a></td>
												<td>${cl.CLASS_TIME}</td>
												<td>${cl.T_NM}</td>
	                                            <td>${cl.JOIN_CNT}</td>
	                                            <td>${cl.TERM}</td>
	                                            <td>${cl.AMT}</td>
                                           		<td>${cl.INCOME}</td>
                                           		<td>
	                                           		<c:if test="${cl.PAY_TYPE eq 'T'}">이체 </c:if>
	                                           		<c:if test="${cl.PAY_TYPE eq 'M'}">현금 </c:if>
	                                           		<c:if test="${cl.PAY_TYPE eq 'C'}">카드 </c:if>
                                           		</td>
                                           		<td>${cl.ETC}</td>
                                           		<td>
                                           			<a class="btn btn-gray text-dark btn-sm " href="javascript:classPop('${cl.SEQ }');">수업일정</a>
                                           		</td>
	                                        </tr>
                                    	</c:forEach>
                                        
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
