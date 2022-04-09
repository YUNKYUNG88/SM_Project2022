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
        <title>회원 리스트</title>
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
			           $( "#joinDate" ).datepicker(dateConf);
			         
			   });
			    
			    function createMember() {
			    	$.ajax({
			            url : '/memberUpd',   // 요청한 서버 경로
			            type : 'post',   // 요청방식 (get/post)
			             data : $('#frm').serialize(),  // 전송 데이터(없으면 생략가능)
			            success : function(data){
			                // 응답 성공 시, 실행함수
			                console.log("success");
			                console.log(data.result);
			                alert("수정 되었습니다.");
			                opener.location.reload();
			                self.close();
			                
			            },
			            error : function(){
			                console.log("error");
			                alert("error");
			            }
			        })
			
			    }
			    
			    </script>
    </head>
    <body >
  
	    <div class="bg-primary p-2 mb-3 text-white text-center bg-opacity-75 fw-bold fs-5" >회원 수정</div>
		 <form name="frm" id="frm" action="/classUpd" method="post">
		 <input type="hidden" name="userNo" value="${member.USER_NO}"/>
		 
		<div class="container gap-3">
		  <!-- Content here -->
		 
			   <div class="row g-2 mb-3">
			   	  
				  <div class="col-md">
				    <div class="form-floating">
				      <select class="form-select" name="userType" id="userType" aria-label="Floating label select example">
				        <option selected>선택</option>
				        <option value="T" <c:if test="${member.USER_TYPE eq 'T'}">selected</c:if> >선생님</option>
				        <option value="M" <c:if test="${member.USER_TYPE eq 'M'}">selected</c:if> >회원</option>
				      </select>
				      <label for="userType">타입</label>
				    </div>
				  </div>
				  
				  
				  <div class="row g-2 ">
				   <div class="col-md">
				    <div class="input-group mb-3">
					  <span class="input-group-text" id="basic-addon1">이름</span>
					  <input type="text" class="form-control" aria-label="userNm" name="userNm"  id="userNm" value="${member.USER_NM}" aria-describedby="basic-addon1">
					</div>
				  </div>
				  <div class="col-md">
				    <div class="input-group mb-3">
					  <span class="input-group-text" id="basic-addon1">전화번호</span>
					  <input type="text" class="form-control" aria-label="mobile" name="mobile" id="mobile" value="${member.MOBILE}" aria-describedby="basic-addon1">
					</div>
				  </div>
				</div>
				  <div class="row g-2">
				  <div class="col-md">
				   <div class="input-group mb-3">
				    <span class="input-group-text" id="basic-addon1">등록일</span>
					<input type="text" id="joinDate" name="joinDate" class="form-control" value="${member.JOIN_DATE}">
					</div>
				  </div>
				 </div>
				</div>
			</div>
		</form>
		<div class="d-grid gap-2 col-1 mx-auto">
	      <button type="button" class="btn btn-primary"  onclick="createMember();">수정</button>
	    </div>
    
    
    </body>
</html>
