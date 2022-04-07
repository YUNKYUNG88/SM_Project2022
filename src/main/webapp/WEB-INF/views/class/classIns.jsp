<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
    $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#startDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy-mm-dd"
 
            });
            $( "#endDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy-mm-dd"
 
            });    
    });
</script>

    </head>
<body>
  	<div class="bg-primary p-2 mb-3 text-white text-center bg-opacity-75 fw-bold fs-5" >수강등록</div>

	<div class="container gap-3">
	  <!-- Content here -->
	  <div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">회원 성함</span>
		  <input type="text" class="form-control" aria-label="userNm" aria-describedby="basic-addon1">
		</div>
		
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">선생님 성함</span>
		  <input type="text" class="form-control" aria-label="tNm" aria-describedby="basic-addon1">
		</div>
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">수업명</span>
		  <input type="text" class="form-control" aria-label="classNm" aria-describedby="basic-addon1">
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
			  <input type="text" class="form-control" aria-label="amt" aria-describedby="basic-addon1">
			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">시간</span>
			  <input type="text" class="form-control" aria-label="classTime" aria-describedby="basic-addon1">
			</div>
		  </div>
		</div>
		  <div class="row g-2">
		  <div class="col-md">
		   <div class="input-group mb-3">
		    <span class="input-group-text" id="basic-addon1">시작일</span>
			 <input type="text" id="startDate" class="form-control">
		

			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon1">종료일</span>
			 <input type="text" id="endDate" class="form-control">
			
			</div>
		  </div>
		</div>
		 <div class="row g-2">
		  <div class="col-md">
		   <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">등록횟수(8회, 10회)</span>
			  <input type="text" class="form-control" aria-label="joinCnt" aria-describedby="basic-addon1">
			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">등록기간(1개월,2개월)</span>
			  <input type="text" class="form-control" aria-label="term" aria-describedby="basic-addon1">
			</div>
		  </div>
		</div>
		 <div class="row g-2">
		  <div class="col-md">
		   <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">비율</span>
			  <input type="text" class="form-control" aria-label="amtRate" aria-describedby="basic-addon1">
			</div>
		  </div>
		  <div class="col-md">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">수입</span>
			  <input type="text" class="form-control" aria-label=income aria-describedby="basic-addon1">
			</div>
		  </div>
		</div>
	</div>
	<div class="d-grid gap-2 col-1 mx-auto">
      <button type="button" class="btn btn-primary">등록</button>
      </div>
	
  
  
  </body>
</html>
