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
        <title>수강 등록</title>
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
		    
		    function selectUser(userType) {
		    
				var win = window.open("/memberListPop?userType="+userType, "회원정보", "width=500,height=600");
				

				
		    }
		    function createClass() {
		    	
		    	$('#frm').submit();

		    }
		    
		</script>

    </head>
	<body>
  	<div class="p-2 mb-3 text-dark text-center fw-bold fs-3" >수강 등록</div>
	 <form name="frm" id="frm" action="/classIns" method="post">
	<div class="container gap-3">
	  <!-- Content here -->
	  <div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">회원 성함</span>
		  <input type="hidden" name="userNo" id="userNo" value=""/>
		  <input type="text" class="form-control" aria-label="userNm" name="userNm" id="userNm" aria-describedby="basic-addon1" onclick="selectUser('M')" readonly= "readonly">
		</div>
		
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">선생님 성함</span>
		  <input type="hidden" name="tNo" id="tNo" value=""/>
		  <input type="text" class="form-control" aria-label="tNm" name="tNm" id="tNm" aria-describedby="basic-addon1"  onclick="selectUser('T')" readonly= "readonly">
		</div>
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">수업명</span>
		  <input type="text" class="form-control" aria-label="classNm" name="classNm" id="classNm" aria-describedby="basic-addon1">
		</div>
	   <div class="row g-2 mb-3">
		  <div class="col-md">
		    <div class="form-floating">
		      <select class="form-select" name="payType" id="payType" aria-label="Floating label select example">
		        <option selected>선택</option>
		        <option value="T">이체</option>
		        <option value="C">현금</option>
		        <option value="M">카드</option>
		      </select>
		      <label for="payType">결제방법</label>
		    </div>
		  </div>
		  
		  <div class="col-md">
		    <div class="form-floating">
		      <select class="form-select" name="joinType" id="joinType" aria-label="Floating label select example">
		        <option selected>선택</option>
		        <option value="C">횟수</option>
		        <option value="T">기간</option>
		      </select>
		      <label for="joinType">타입</label>
		    </div>
		  </div>
		</div>
		  <div class="row g-2 ">
		   <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">금액</span>
			  <input type="text" class="form-control" aria-label="amt" name="amt" id="amt" aria-describedby="basic-addon1">
			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">시간</span>
			  <input type="text" class="form-control" aria-label="classTime" name="classTime" id="classTime" aria-describedby="basic-addon1">
			</div>
		  </div>
		</div>
		  <div class="row g-2">
		  <div class="col-md">
		   <div class="input-group mb-3">
		    <span class="input-group-text" id="basic-addon1">시작일</span>
			 <input type="text" id="stDate" name="stDate" class="form-control">
			 

			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon1">종료일</span>
			 <input type="text" id="edDate" name="edDate" class="form-control">
			
			</div>
		  </div>
		</div>
		 <div class="row g-2">
		  <div class="col-md">
		   <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">등록횟수(8회, 10회)</span>
			  <input type="text" class="form-control" aria-label="joinCnt" id="joinCnt" name="joinCnt" aria-describedby="basic-addon1">
			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">등록기간(1개월,2개월)</span>
			  <input type="text" class="form-control" aria-label="term"  id="term" name="term" aria-describedby="basic-addon1">
			</div>
		  </div>
		</div>
		 <div class="row g-2">
		  <div class="col-md">
		   <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">비율</span>
			  <input type="text" class="form-control" aria-label="amtRate" id="amtRate" name="amtRate" aria-describedby="basic-addon1">
			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">수입</span>
			  <input type="text" class="form-control" aria-label="income"  id="income" name="income" aria-describedby="basic-addon1">
			</div>
		  </div>
		</div>
		 <div class="row g-2">
		 	 <div class="col-md">
			    <div class="input-group mb-3">
				  <span class="input-group-text" id="basic-addon1">비고</span>
				  <input type="text" class="form-control" aria-label="etc"  id="etc" name="etc" aria-describedby="basic-addon1">
				</div>
			  </div>
		 </div>
	</div>
	</form>
	<div class="d-grid gap-2 col-1 mx-auto">
      <button type="button" class="btn btn-darkgray"  onclick="createClass();">등록</button>
      <button type="button" class="btn btn-darkgray" onclick="location.href='/classList'">목록</button>
      
    </div>
	
  
  
  </body>
</html>
