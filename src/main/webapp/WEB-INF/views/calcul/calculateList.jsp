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
        <title>정산</title>
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
			    
				function searchSubmit() {
					
					$('#frm').submit();
				}
		
			</script>
    </head>
    <body class="sb-nav-fixed">
    	
    
        <div id="layoutSidenav"> 
            <c:import url="../page/lnb.jsp"></c:import>
           
            <div id="layoutSidenav_content">
                <main>
                	<div class="row row-cols-1 row-cols-md-4 g-1" style="width: 2010px; margin-left: 24px">
	                	 <div class="col">
						    <div class="card">
						      <div class="card-body">
						        <h5 class="card-title">카드</h5>
						        <p class="card-text">${sumInfo.C_AMT}</p>
						      </div>
						    </div>
						  </div>
						  <div class="col">
						    <div class="card">
						       <div class="card-body">
						        <h5 class="card-title">현금</h5>
						        <p class="card-text">${sumInfo.M_AMT}</p>
						      </div>
						    </div>
						  </div>
						  <div class="col">
						    <div class="card">
						       <div class="card-body">
						        <h5 class="card-title">이체</h5>
						        <p class="card-text">${sumInfo.T_AMT}</p>
						      </div>
						    </div>
						  </div>
						  <div class="col">
						    <div class="card">					      
						      <div class="card-body">
						        <h5 class="card-title">총 합계</h5>
						        <p class="card-text">${sumInfo.T_AMT + sumInfo.M_AMT +sumInfo.C_AMT}</p>
						      </div>
						    </div>
						  </div>
					  <div class="col">
					    <div class="card">
					      <div class="card-body">
					        <h5 class="card-title">수입 카드</h5>
					        <p class="card-text">${sumInfo.C_INCOME}</p>
					      </div>
					    </div>
					  </div>
					    <div class="col">
					    <div class="card">
					       <div class="card-body">
					        <h5 class="card-title">수입 현금</h5>
					        <p class="card-text">${sumInfo.M_INCOME}</p>
					      </div>
					    </div>
					  </div>
					  <div class="col">
					    <div class="card">
					       <div class="card-body">
					        <h5 class="card-title">수입 이체</h5>
					        <p class="card-text">${sumInfo.T_INCOME}</p>
					      </div>
					    </div>
					  </div>
					  <div class="col">
					    <div class="card">					      
					      <div class="card-body">
					        <h5 class="card-title">수입 총 합계</h5>
					        <p class="card-text">${sumInfo.T_INCOME + sumInfo.M_INCOME +sumInfo.C_INCOME}</p>
					      </div>
					    </div>
					  </div>
					  <div class="col">
					    <div class="card">
					      <div class="card-body">
					        <h5 class="card-title">PAY 카드</h5>
					        <p class="card-text">${sumInfo.C_PAY}</p>
					      </div>
					    </div>
					  </div>
					  <div class="col">
					    <div class="card">
					       <div class="card-body">
					        <h5 class="card-title">PAY 현금</h5>
					        <p class="card-text">${sumInfo.M_PAY}</p>
					      </div>
					    </div>
					  </div>
					  <div class="col">
					    <div class="card">
					       <div class="card-body">
					        <h5 class="card-title">PAY 이체</h5>
					        <p class="card-text">${sumInfo.T_PAY}</p>
					      </div>
					    </div>
					  </div>
					  <div class="col">
					    <div class="card">					      
					      <div class="card-body">
					        <h5 class="card-title">PAY 총 합계</h5>
					        <p class="card-text">${sumInfo.T_PAY + sumInfo.M_PAY +sumInfo.C_PAY}</p>
					      </div>
					    </div>
					  </div>
					 
					
					</div>
                	
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">정산</h1>
                            
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                               	<form name="frm" id="frm" action="/calculateList" method="get">
			         			<div class="row row-cols-4">
							    <div class="col">
								    <input type="hidden" name="tNo" id="tNo"  value="${params.tNo}"/>
								    <input type="text" class="form-control" placeholder="선생님" aria-label="선생님" name="tNm" id="tNm" onclick="selectUser('T')" value="${params.tNm}" readonly="readonly"/>
							    </div>
							    <div class="col">
							    	<input type="text" class="form-control" placeholder="시작일" aria-label="시작일" name="stDate" id="stDate"  value="${params.stDate}"/>
							    </div>
							    <div class="col">
							    	<input type="text" class="form-control" placeholder="종료일" aria-label="종료일" name="edDate" id="edDate"  value="${params.edDate}"/>
							    </div>
							    <div class="col">
							    	<button type="button" class="btn btn-primary" onclick="searchSubmit();">검색</button>
							    </div>
							 </div>
			      		</form>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                        	<th>날짜</th>
                                            <th>이름</th>
                                            <th>수업</th>
                                            <th>비율</th>
                                            <th>결제방법</th>
                                            <th>결제금액</th>
                                            <th>PAY</th>
                                            <th>수입</th>
                                            <th>환불일자</th>
                                            <th>환불금액</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:set var="totalAmt" value="0"></c:set>
                                    	<c:set var="totalPay" value="0"></c:set>
                                    	<c:set var="totalIncome" value="0"></c:set>
                                    	<c:set var="totalRefund" value="0"></c:set>
                                    	<c:forEach items="${calList}" var="cal">
                                    		<c:set var="totalAmt" value="${totalAmt +  cal.AMT}"></c:set>
	                                    	<c:set var="totalPay" value="${totalPay +  (cal.AMT-cal.INCOME)}"></c:set>
	                                    	<c:set var="totalIncome" value="${totalIncome +  cal.INCOME}"></c:set>
	                                    	<c:set var="totalRefund" value="${totalRefund +  cal.REFUND_AMT}"></c:set>
                                    		<tr>
                                    			<td>${cal.ST_DATE}</td>
	                                            <td>${cal.USER_NM}</td>
	                                            <td>${cal.CLASS_NM}</td>
	                                            <td>${cal.AMT_RATE}</td>
	                                            <td>
	                                           		<c:if test="${cal.PAY_TYPE eq 'T'}">이체 </c:if>
	                                           		<c:if test="${cal.PAY_TYPE eq 'M'}">현금 </c:if>
	                                           		<c:if test="${cal.PAY_TYPE eq 'C'}">카드 </c:if>
                                           		</td>
	                                            <td>${cal.AMT}</td>
	                                            <td>${cal.AMT-cal.INCOME}</td>
                                           		<td>${cal.INCOME}</td>
                                           		<td>${cal.REFUND_DATE}</td>
                                           		<td>${cal.REFUND_AMT}</td>
	                                        </tr>
                                    	</c:forEach>
                                    		<tr>
                                    			<td></td>
	                                            <td></td>
	                                            <td></td>
	                                            <td></td>
	                                            <td></td>
	                                            <td>${totalAmt}</td>
	                                            <td>${totalPay}</td>
                                           		<td>${totalIncome}</td>
                                           		<td></td>
                                           		<td>${totalRefund}</td>
	                                        </tr>
                                        
                                       
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
