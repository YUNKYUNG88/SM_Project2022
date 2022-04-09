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
        <title>수업 리스트</title>
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
                        <h1 class="mt-4">수업 리스트</h1>
                       	
                       <div class="d-flex align-items-center justify-content-between mt-4 mb-1">
	                       	<a class="small" href=""></a>
	                        <a class="btn btn-primary" href="/classEdit">수업등록</a>
                       </div>
                       
                       <form class="well form-search" action="/classList">
                       		기간
			                <input type="text" name="stDate" id="stDate" value=""/>~
			                <input type="text" name="edDate" id="edDate" value=""/>
			                            선생님
							<input type="text" name="tNm" value=""/>
							회원
							<input type="text" name="userNm" value=""/>
			                
			                
			                <button type="submit" class="btn">Search</button>
			            </form>

                            
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                               	수업 리스트
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>등록일자</th>
                                            <th>회원 성함</th>
                                            <th>수업명</th>
                                            <th>시간</th>
                                            <th>선생님</th>
                                            <th>등록횟수</th>
                                            <th>등록기간</th>
                                            <th>금액</th>
                                            <th>수입</th>
                                            <th>결제방법</th>
                                            <th>비고</th>
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
                                           			<a class="btn btn-primary" href="javascript:classPop('${cl.SEQ }');">수업</a>
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
