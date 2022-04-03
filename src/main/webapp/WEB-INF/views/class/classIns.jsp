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
         
    </head>
    <body class="bg-primary">
    <script type="text/javascript">
    function createClass() {
    	$('#frm').submit();

    }
    
    </script>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
	                <main>
	                    <div class="container">
	                        <div class="row justify-content-center">
	                            <div class="col-lg-7">
	                                <div class="card shadow-lg border-0 rounded-lg mt-5">
	                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">수업등록</h3></div>
	                                    <div class="card-body">
	                                        <form name="frm" id="frm" action="/classIns" method="post">
	                                            <div class="row mb-3">
	                                                <div class="col-md-6">
	                                                    <div class="form-floating mb-3 mb-md-0">
	                                                    	<input type="hidden"  name="userNo" type="text" value=""/>
	                                                        <input class="form-control" id="userNm" name="userNm" type="text" readonly="readonly"  />
	                                                        <label for="userNm">회원 성함</label>
	                                                    </div>
	                                                </div>
	                                                 <div class="col-md-6">
	                                                    <div class="form-floating mb-3 mb-md-0">
	                                                    	<input type="hidden"  name="tNo" id="tNo" value=""/>
	                                                        <input class="form-control" id="tNm" name="tNm" type="text" readonly="readonly"  />
	                                                        <label for="t_no">선생님 성함</label>
	                                                    </div>
	                                                </div>
	                                               <div class="col-md-6">
	                                                    <div class="form-floating mb-3 mb-md-0">
	                                                    	<select name="payType" id="payType">
	                                                    		<option value="T">이체</option>
	                                                    		<option value="C">카드</option>
	                                                    		<option value="M">현금</option>
	                                                    	</select>
	                                                        <label for="payType">결제방법</label>
	                                                    </div>
	                                                </div>
	                                                
	                                                <div class="col-md-6">
	                                                    <div class="form-floating">
	                                                        <input class="form-control" id="amt" name="amt" type="text" />
	                                                        <label for="amt">금액</label>
	                                                    </div>
	                                                </div>
	                                                 <div class="col-md-6">
	                                                    <div class="form-floating mb-3 mb-md-0">
	                                                    	<select name="joinType" id="joinType">
	                                                    		<option value="C">횟수</option>
	                                                    		<option value="T">기간</option>
	                                                    	</select>
	                                                        <label for="joinType">타입</label>
	                                                    </div>
	                                                </div>
	                                                 <div class="col-md-6">
	                                                    <div class="form-floating">
	                                                        <input class="form-control" id="classNm" name="classNm" type="text" />
	                                                        <label for="classNm">수업명</label>
	                                                    </div>
	                                                </div>
	                                                <div class="col-md-6">
	                                                    <div class="form-floating">
	                                                        <input class="form-control" id="stDate" name="stDate" type="text" />
	                                                        <label for="stDate">시작일</label>
	                                                    </div>
	                                                </div>
	                                                <div class="col-md-6">
	                                                    <div class="form-floating">
	                                                        <input class="form-control" id="edDate" name="edDate" type="text" />
	                                                        <label for="edDate">종료일</label>
	                                                    </div>
	                                                </div>
	                                                 <div class="col-md-6">
	                                                    <div class="form-floating">
	                                                        <input class="form-control" id="joinCnt" name="joinCnt" type="text" />
	                                                        <label for="joinCnt">등록횟수</label>
	                                                    </div>
	                                                </div>
	                                                <div class="col-md-6">
	                                                    <div class="form-floating">
	                                                        <input class="form-control" id="term" name="term" type="text" />
	                                                        <label for="compleCnt">등록기간</label>
	                                                    </div>
	                                                </div>
	                                                <div class="col-md-6">
	                                                    <div class="form-floating">
	                                                        <input class="form-control" id="income" name="income" type="text" />
	                                                        <label for="income">수입</label>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            
	                                        </form>
	                                        <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-primary btn-block" href="javascript:createClass();">등록</a></div>
                                            </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </main>
            </div>
            <div id="layoutAuthentication_footer">
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
    </body>
</html>
