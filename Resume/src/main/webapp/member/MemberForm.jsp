<%-- 프런트 컨트롤러 적용 - 링크에 .do 붙임 --%>
<%@ page 
  language="java" 
  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 등록</title>
<script>
function formCheck()
{
 var form = document.registerform;
 
 if( !form.email.value)
 {
	  alert( "이메일을 적어주세요" );
	  form.password2.focus();
	  return; 
 }
 else if( !form.password.value )
 {
	  alert( "비밀번호를 적어주세요" );
	  form.password.focus();
	  return;
 }
 else if( !form.password2.value)
 {
	  alert( "비밀번호 확인칸을 적어주세요" );
	  form.password2.focus();
	  return; 
 }
 else if( !form.name.value)
 {
	  alert( "이름을 적어주세요" );
	  form.name.focus();
	  return; 
 }
 else if(!document.form.password.value != document.form.password2.value) { 
	  alert("비밀번호가 일치하지 않습니다."); 
	  document.form.password2.focus(); 
	  return; 
 }
 else{
	 form.submit(); 
 }
}

</script>
</head>
<body>
<jsp:include page="/Header.jsp"/>
      <article class="container">
        <div class="page-header">
          <center><h1>회원가입 <small>Resume.com</small></h1></center>
        </div>
        <div class="col-md-6 col-md-offset-3">
          <form name='registerform' action='add.do' method='post'>
            <div class="form-group">
              <label for="InputEmail">이메일 주소</label>
              <input type="email" class="form-control" name="email" placeholder="이메일 주소">
            </div>
            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" class="form-control" name="password" placeholder="비밀번호">
            </div>
            <div class="form-group">
              <label for="InputPassword2">비밀번호 확인</label>
              <input type="password" class="form-control" name="password2" placeholder="비밀번호 확인">
              <p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
            </div>
            <div class="form-group">
              <label for="username">이름</label>
              <input type="text" class="form-control" name="name" placeholder="이름을 입력해 주세요">
            </div>
            <div class="form-group">
            <div class="col-sm-12 text-center">
				<button class="btn btn-primary" type="submit"  OnClick="javascript:formCheck();">회원가입<i class="fa fa-check spaceLeft"></i></button>
				<button class="btn btn-danger" type="reset">취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
        </div>
          </form>
        </div>
      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<jsp:include page="/Tail.jsp"/>
</body>
</html>
