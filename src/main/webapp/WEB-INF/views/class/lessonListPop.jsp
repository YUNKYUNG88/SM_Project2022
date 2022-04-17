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
        <title>수업 일정</title>
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
			           $( "#classDate" ).datepicker(dateConf);
			         
			   });
			   
			   function createLesson() {
				   $('#frm').submit();
			   }
			   
			   function deleteLesson(seq) {
				   $('#seq').val(seq);
				   $('#delFrm').submit();
			   }
				
		</script>
    </head>
    <body >
   		
      
      	
        <div id="layoutSidenav"> 
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                          <span class="d-block p-3 fs-2 fw-bold text-dark">수업 일정</span>
                        <form name="delFrm" id="delFrm" action="/lessonDel" method="post">
                        	<input type="hidden" name="seq" id="seq" value=""/>
                        	<input type="hidden" name="classSeq" value="${params.classSeq}"/>
                        </form>
                       	<form name="frm" id="frm" action="/lessonIns" method="post">
						<input type="hidden" name="classSeq" value="${params.classSeq}"/>
	                        <div class="card mb-4">
	                            <div class="card-header">
	                                <div class="row g-2 mb-3">
									  <div class="col-md">
									    <div class="input-group mb-3">
										  <span class="input-group-text" id="basic-addon1">날짜</span>
										  <input type="text" class="form-control" aria-label="classDate" name="classDate" id="classDate" value="" aria-describedby="basic-addon1">
										   <span class="input-group-text" id="basic-addon1">시간</span>
										  <input type="text" id="classTime" name="classTime" class="form-control" value="">
										  <button type="button" class="btn btn-darkgray"  onclick="createLesson();">등록</button>
										</div>
									  </div>
									</div>
	                            </div>
	                            <div class="card-body">
	                                <table id="datatablesSimple">
	                                    <thead>
	                                        <tr>
	                                            <th>날짜</th>
	                                            <th>시간</th>
	                                            <th></th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    	<c:forEach items="${lessonList}" var="lesson">
	                                    		<tr>
		                                            <td>${lesson.CLASS_DATE}</td>
		                                            <td>${lesson.CLASS_TIME}</td>
		                                            <td><button type="button" class="btn btn-gray text-dark btn-sm"  onclick="deleteLesson('${lesson.SEQ}');">삭제</button></td>
		                                        </tr>
	                                    	</c:forEach>
	                                        
	                                       
	                                    </tbody>
	                                </table>
	                            </div>
	                        </div>
                        </form>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
