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
        <title>회원 관리</title>
        <link href="css/styles.css" rel="stylesheet" />
         
    </head>
    <body class="sb-nav-fixed">
    <script type="text/javascript">

		function openMemberEdit(userNo) {
			if(userNo == '') {
				var win = window.open("/memberEdit", "회원정보", "width=700,height=600");	
			} else {
				var win = window.open("/memberEdit?userNo="+userNo, "회원정보", "width=700,height=600");	
			}
			
			

		}
		

	</script>
      
      
        <div id="layoutSidenav"> 
            <c:import url="../page/lnb.jsp"></c:import>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <span class="d-block p-3 fs-2 fw-bold text-dark">회원 관리</span>
                          <i class="fas fa-table me-1"></i>
                            <div class="card-header">
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
	                                    <a class="btn btn-darkgray" href="javascript:openMemberEdit('');">등록</a>
	                                  </div>
								  </div>
                                
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                           <th class="text-center">구분</th>
                                           <th class="text-center">이름</th>
                                           <th class="text-center">핸드폰번호</th>
                                           <th class="text-center">등록일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${memberList}" var="member">
                                    		<tr>
                                    			<td>
                                    			<c:if test="${member.USER_TYPE eq 'T'}">선생님</c:if>
                                    			<c:if test="${member.USER_TYPE eq 'M'}">회원</c:if>
                                    			</td>
	                                            <td><a href="javascript:openMemberEdit('${member.USER_NO}')">${member.USER_NM}</a></td>
	                                            <td>${member.MOBILE}</td>
	                                            <td>${member.JOIN_DATE}</td>
	                                        </tr>
                                    	</c:forEach>
                                        
                                       
                                    </tbody>
                                </table>
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
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
