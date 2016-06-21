<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>레쥬메닷컴</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand topnav" href="#">레쥬메닷컴</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	<c:if test="${empty sessionScope.member or empty sessionScope.member.email}">
                    <li>
                        <a href="member/add.do">회원가입</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/auth/login.do">로그인</a>
                    </li>
                    </c:if> 
                    <c:if test="${!empty sessionScope.member and !empty sessionScope.member.email}">
                    <li>
                        <a href="<%=request.getContextPath()%>/recruit/View.do">채용달력</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/application/list.do">자기소개서</a>
                    </li>
                    <li>
						<a href="<%=request.getContextPath()%>/auth/logout.do">로그아웃</a>
					</li>
					</c:if>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


    <!-- Header -->
    <a name="about"></a>
    <div class="intro-header">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <p>채용정보를 보기위해 일일이 찾아다니지 마세요!</p>
						<p>한 눈에 채용정보를 모아서 보여드립니다.</p>
                        <hr class="intro-divider">
                        <ul class="list-inline intro-social-buttons">
                            <li>
                             <c:if test="${!empty sessionScope.member and !empty sessionScope.member.email}">
                                <a href="<%=request.getContextPath()%>/application/list.do"><button class="button button5">레쥬메닷컴 시작</button></a>
                             </c:if>
                                 <c:if test="${empty sessionScope.member and empty sessionScope.member.email}">
                                <a href="<%=request.getContextPath()%>/auth/login.do"><button class="button button5">레쥬메닷컴 시작</button></a>
                             </c:if>
                            </li>
                        </ul>
					    <h3>자기소개서를 편리하게 작성하세요!</h3>
                    
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.intro-header -->

    <!-- Page Content -->

	<a  name="services"></a>
    <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">채용공고 한 눈에 보세요!</h2>
                    <p class="lead">원하는 기업과 직무를 골라 맞춤 달력을 제공합니다.</p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" width="700" src="img/calender.png" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

    <div class="content-section-b">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">HWP는 이제 그만!</h2>
                    <p class="lead">웹 페이지에서 자기소개서를 바로 <br> 작성하고 저장하세요!</p>
                </div>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                    <img class="img-responsive" src="img/writing.png" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>

 
    <!-- /.banner -->

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#about">About</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; Your Company 2014. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
