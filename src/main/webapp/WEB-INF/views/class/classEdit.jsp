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
		            $( "#stDate" ).datepicker(dateConf);
		            $( "#edDate" ).datepicker(dateConf);    
		            $( "#refundDate" ).datepicker(dateConf);    
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
  	<div class="bg-primary p-2 mb-3 text-white text-center bg-opacity-75 fw-bold fs-5" >수강 수정</div>
	<form name="frm" id="frm" action="/classUpd" method="post">
	<input type="hidden" name="seq" value="${member.SEQ }"/>
	<div class="container gap-3">
	  <!-- Content here -->
	  <div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">회원 성함</span>
		  <input type="hidden" name="userNo" id="userNo" value="${member.USER_NO}"/>
		  <input type="text" class="form-control" aria-label="userNm" name="userNm" id="userNm" aria-describedby="basic-addon1" onclick="selectUser('M')" readonly= "readonly" value="${member.USER_NM}">
		</div>
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">선생님 성함</span>
		  <input type="hidden" name="tNo" id="tNo" value="${member.T_NO}"/>
		  <input type="text" class="form-control" aria-label="tNm" name="tNm" id="tNm" aria-describedby="basic-addon1"  onclick="selectUser('T')" readonly= "readonly" value="${member.T_NM}">
		</div>
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">수업명</span>
		  <input type="text" class="form-control" aria-label="classNm" name="classNm" id="classNm" aria-describedby="basic-addon1" value="${member.CLASS_NM}">
		</div>
	   <div class="row g-2 mb-3">
		  <div class="col-md">
		    <div class="form-floating"> 
		      <select class="form-select" name="payType" id="payType" aria-label="Floating label select example">
		        <option >선택</option>
		        <option value="T" <c:if test="${member.PAY_TYPE eq 'T'}"> selected  </c:if> > 이체</option>
		        <option value="M" <c:if test="${member.PAY_TYPE eq 'M'}">selected </c:if> > 현금</option> 
		        <option value="C" <c:if test="${member.PAY_TYPE eq 'C'}">selected </c:if> > 카드</option>
		      </select>
		      <label for="payType">결제방법</label>
		    </div>
		  </div>
		  
		  <div class="col-md">
		    <div class="form-floating">
		      <select class="form-select" name="joinType" id="joinType" aria-label="Floating label select example">
		        <option >선택</option>
		        <option value="C" <c:if test="${member.JOIN_TYPE eq 'C'}">selected </c:if>>횟수</option>
		        <option value="T" <c:if test="${member.JOIN_TYPE eq 'T'}">selected </c:if>>기간</option>
		      </select>
		      <label for="joinType">타입</label>
		    </div>
		  </div>
		</div>
		  <div class="row g-2 ">
		   <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">금액</span>
			  <input type="text" class="form-control" aria-label="amt" name="amt" id="amt" value="${member.AMT}" aria-describedby="basic-addon1">
			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">시간</span>
			  <input type="text" class="form-control" aria-label="classTime" name="classTime" id="classTime" value="${member.CLASS_TIME}" aria-describedby="basic-addon1">
			</div>
		  </div>
		</div>
		  <div class="row g-2">
		  <div class="col-md">
		   <div class="input-group mb-3">
		    <span class="input-group-text" id="basic-addon1">시작일</span>
			 <input type="text" id="stDate" name="stDate" class="form-control" value="${member.ST_DATE}">
		

			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon1">종료일</span>
			 <input type="text" id="edDate" name="edDate" class="form-control" value="${member.ED_DATE}">
			
			</div>
		  </div>
		</div>
		 <div class="row g-2">
		  <div class="col-md">
		   <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">등록횟수(8회, 10회)</span>
			  <input type="text" class="form-control" aria-label="joinCnt" id="joinCnt" name="joinCnt" value="${member.JOIN_CNT}" aria-describedby="basic-addon1">
			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">등록기간(1개월,2개월)</span>
			  <input type="text" class="form-control" aria-label="term"  id="term" name="term" value="${member.TERM}" aria-describedby="basic-addon1">
			</div>
		  </div>
		</div>
		 <div class="row g-2">
		  <div class="col-md">
		   <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">비율</span>
			  <input type="text" class="form-control" aria-label="amtRate" id="amtRate" name="amtRate" value="${member.AMT_RATE}" aria-describedby="basic-addon1">
			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">수입</span>
			  <input type="text" class="form-control" aria-label="income"  id="income" name="income" value="${member.INCOME}" aria-describedby="basic-addon1">
			</div>
		  </div>
		   <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">환불일자</span>
			  <input type="text" class="form-control" aria-label="refundDate"  id="refundDate" name="refundDate" value="${member.REFUND_DATE}" aria-describedby="basic-addon1">
			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">환불금액</span>
			  <input type="text" class="form-control" aria-label="refundAmt"  id="refundAmt" name="refundAmt" value="${member.REFUND_AMT}" aria-describedby="basic-addon1">
			</div>
		  </div>
		</div>
		 <div class="row g-2">
		 	 <div class="col-md">
			    <div class="input-group mb-3">
				  <span class="input-group-text" id="basic-addon1">비고</span>
				  <input type="text" class="form-control" aria-label="etc"  id="etc" name="etc" value="${member.ETC}" aria-describedby="basic-addon1">
				</div>
			  </div>
		 </div>
	</div>
	</form>
	<div class="d-grid gap-2 col-1 mx-auto">
      <button type="button" class="btn btn-primary" onclick="createClass();">수정</button>
      <button type="button" class="btn btn-primary" onclick="location.href='/classList'">목록</button>
     </div>
	
  
  
  </body>
</html>
