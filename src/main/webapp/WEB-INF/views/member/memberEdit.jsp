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
    function updateMember() {
    	$.ajax({
            url : '/memberUpd',   // 요청한 서버 경로
            type : 'post',   // 요청방식 (get/post)
             data : $('#frm').serialize(),  // 전송 데이터(없으면 생략가능)
            success : function(data){
                // 응답 성공 시, 실행함수
                console.log("success");
                console.log(data.result);
            },
            error : function(){
                console.log("error");
            }
        })

    }
    
    </script>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
            	
	                <main>
	                    <div class="container">
	                        <div class="row justify-content-center">
	                            <div class="col-lg-7">
	                                <div class="card shadow-lg border-0 rounded-lg mt-5">
	                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">회원수정</h3></div>
	                                    <div class="card-body">
	                                        <form name="frm" id="frm" action="/memberIns" method="post">
	                                        	<input type="hidden" name="userNo" value="${member.USER_NO}"/>
	                                            <div class="row mb-3">
	                                                <div class="col-md-6">
	                                                    <div class="form-floating mb-3 mb-md-0">
	                                                        <input class="form-control" id="userNm" name="userNm" type="text" value="${member.USER_NM}"  />
	                                                        <label for="userNm">이름</label>
	                                                    </div>
	                                                </div>
	                                               <div class="col-md-6">
	                                                    <div class="form-floating mb-3 mb-md-0">
	                                                        <input class="form-control" id="mobile" name="mobile" type="text" value="${member.MOBILE}"  />
	                                                        <label for="mobile">전화번호</label>
	                                                    </div>
	                                                </div>
	                                                
	                                                 <div class="col-md-6">
	                                                    <div class="form-floating">
	                                                        <input class="form-control" id="joinDate" name="joinDate" type="text" value="${member.JOIN_DATE}" />
	                                                        <label for="joinDate">등록일</label>
	                                                    </div>
	                                                </div>
	                                                
	                                            </div>
	                                            
	                                        </form>
	                                        <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-primary btn-block" href="javascript:updateMember();">수정</a></div>
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
