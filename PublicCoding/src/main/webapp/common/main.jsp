<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>PUBLIC CODING | ��ΰ� ���� �ڵ�</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="assets/css/main2.css">


<!-- ////////////////////////////////////// LOGIN ACTION /////////////////////////// -->

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$('#logBtn').click(function() {
			var id = $('#id').val();
			if (id.trim() == "") {
				$('#id').focus();
				return;
			}

			var pwd = $('#pwd').val();
			if (pwd.trim() == "") {
				$('#pwd').focus();
				return;
			}
			$('#logForm').submit();
		});
		$('#logoutBtn').click(function() {
			$('#logoutForm').submit();
		});
	});
</script>
<!-- ////////////////////////////////////////////////////////////////////////////// -->



</head>
<body>

	<header>
		<h1>
			<a href="main.do"> PUBLIC CODING</a>
		</h1>

		<ul id="gnb">

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="boardmain.do"><i class="fa fa-book"></i>�¶���
					����</a>
				<ul class="dropdown-menu">
					<li><a href="scategory.do?dno=1">Language</a></li>
					<li><a href="scategory.do?dno=2">Database</a></li>
					<li><a href="scategory.do?dno=3">Web</a></li>
				</ul></li>


			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"><i class="fa fa-retweet"></i>��������
					���͵�</a>

				<center>
					<ul class="dropdown-menu">

						<li><a href="boardmain.do">������</a></li>
						<li><a href="#">������</a></li>

					</ul>
				</center></li>


			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"><i class="fa fa-file-text-o"></i>�Խ���</a>
				<ul class="dropdown-menu">
					<li><a href="qnaboard.do">Q&A �Խ���</a></li>
					<li><a href="free.do">���� �Խ���</a></li>
				</ul></li>

<div class="col-md-3">
            <center>
            <form action="#" method="get">
                <div class="input-group">
                    	���հ˻�
                    <input class="form-control" id="system-search" name="q" placeholder="�˻�� �Է����ּ���" required>
                  
                </div>
            </form>
            </center>
        </div>
			<!-- ȸ������-->

			<c:if test="${sessionScope.id==null }">
				<li class="joinok" data-toggle="modal" data-target="#join"><a
					href="#"><i class="fa fa-user"></i>ȸ������</a></li>

				<li class="logininok" data-toggle="modal" data-target="#login"><a
					href="#"><i class="fa fa-sign-in"></i>�α���</a></li>
			</c:if>

			<c:if test="${sessionScope.id!=null }">

				<li class="dropdown" id="loginok"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><img
						src="resources/userprofiles/${sessionScope.mimageurl }" alt=""
						width="29" height="29" class="img-rounded">
						${sessionScope.id}</a>

					<ul class="dropdown-menu">

						<li><a href="userMain.do?mno=${sessionScope.mno }"><i class="fa fa-pagelines fa-fw" aria-hidden="true"></i>My Page</a></li>
						<li><a href="#"><i class="fa fa-pencil fa-fw" aria-hidden="true"></i>������������</a></li>
						<li>
							<a href="signout.do" data-target="#logout" id="logoutBtn">
							<i class="fa fa-sign-out fa-fw"></i>�α׾ƿ�</a>
						</li>
					</ul>
			   </li>

			</c:if>

			<!-- ���� �α��ν�, �α��� �� ����� ���� ������ �޴� ���� -->
			<%-- <c:if test="${sessionScope.id==null }">
					<li>
						<!-- <a href="member/signin.jsp"> --> <input
						onclick="popup_signin()" type="button" value="�α���"> <!-- �α���<!-- </a> -->
					</li>
					<!-- <li><a href="elements.html">Elements</a></li> -->
					<!-- <li><a href="member/signup.jsp" class="button special">Sign Up</a></li> -->
					<li id="pop1"><input onclick="popup_signup()" type="button"
						class="button special" value="ȸ������"></li>
					</c:if>
					<c:if test="${sessionScope.id!=null }">
						<li><input type="button" value="${sessionScope.id}"></li>
						<div class="btn-group open">
							<a class="btn btn-default" href="#"><i
								class="fa fa-user fa-fw"></i> ${sessionScope.id}</a> <a
								class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
								href="#"> <span class="fa fa-caret-down"
								title="Toggle dropdown menu"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="fa fa-pencil fa-fw"
										aria-hidden="true"></i> Edit</a></li>
								<li><a href="#"><i class="fa fa-trash-o fa-fw"
										aria-hidden="true"></i> Delete</a></li>
								<li><a href="#"><i class="fa fa-ban fa-fw"
										aria-hidden="true"></i> Ban</a></li>
								<li class="divider"></li>
								<li><a href="#"><i class="fa fa-unlock"
										aria-hidden="true"></i> Make admin</a></li>
							</ul>
						</div>
					</c:if>
			 --%>
			<!-- ���� �α��ν�, �α��� �� ����� ���� ������ �޴� ���� �� -->
		</ul>

		<div class="modal fade" id="join" tabindex="-1" role="dialog"
			aria-labelledby="modalLabel" aria-hidden="true">

			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true"></span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="lineModalLabel">
							<center>PUCO�� ȸ���� �Ǿ� �ּ���</center>
						</h4>
					</div>
					<div class="modal-body">

						<!-- content goes here -->
						<form class="form-horizontal ng-pristine ng-valid ng-valid-email"
							role="form">

							<div class="row">
								<div class="col-sm-6 col-xs-12" style="margin-bottom: 10px;">
									<label for="firstname">���̵�</label> <input type="text"
										class="form-control ng-pristine ng-untouched ng-valid"
										id="firstName" placeholder="���̵�">
								</div>
								<div class="col-sm-6 col-xs-12" style="margin-bottom: 10px;">
									<label for="lastName">��й�ȣ</label> <input type="password"
										class="form-control ng-pristine ng-untouched ng-valid"
										id="password" placeholder="��й�ȣ">
								</div>
							</div>

							<div class="row onboarding-form-group">
								<div class="col-sm-12 col-xs-12">
									<div>
										<label for="email">E-mail</label> <input type="text"
											class="form-control ng-pristine ng-untouched ng-valid ng-valid-email"
											id="email" placeholder="E-mail">
									</div>
								</div>
							</div>
							<p>
							<p>
							<div class="row">
								<div class="col-mm-6 col-xs-12">
									<button type="submit" class="btn btn-block btn-primary">ȸ������</button>
								</div>
							</div>
						</form>

						<div class="row row-gap-medium ng-scope">
							<br>

							<p class="col-xs-6 col-xs-offset-3 bold text-center">
								�̹� ���� �ϼ̳���? <br> <br> <input type="button"
									class="btn btn-block btn-primary" data-toggle="modal"
									data-target="#login" data-dismiss="modal" value="�α���">

							</p>
						</div>

					</div>
				</div>
			</div>
		</div>


		<!-- ���� main ȭ�鿡 �ִ� �⺻ �α��� �κ� ���� -->
		<%-- <div class="modal fade" id="login" tabindex="-1" role="dialog"
			aria-labelledby="modalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true"></span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="lineModalLabel">
							<center>�ȳ��ϼ���. PUCO �Դϴ�.</center>
						</h4>
					</div>
					<div class="modal-body">
						<!-- content goes here -->
						<form class="form-horizontal ng-pristine ng-valid ng-valid-email"
							role="form">
							<div class="row">
								<div class="col-sm-6 col-xs-12" style="margin-bottom: 10px;">
									<label for="firstname">���̵�</label> <input type="text"
										class="form-control ng-pristine ng-untouched ng-valid"
										id="firstName" placeholder="���̵�">
								</div>
								<div class="col-sm-6 col-xs-12" style="margin-bottom: 10px;">
									<label for="lastName">��й�ȣ</label> <input type="password"
										class="form-control ng-pristine ng-untouched ng-valid"
										id="password" placeholder="��й�ȣ">
								</div>
							</div>
							<p>
							<p>
								<input type="button" class="btn btn-block btn-primary"
									data-target="#login" data-dismiss="modal" value="�α���">
						</form>
					</div>
				</div>
			</div>
		</div> --%>
		<!-- ���� main ȭ�鿡 �ִ� �⺻ �α��� �κ�  �� -->


		<!-- �α��� modal â�� id, password, �α���, �α׾ƿ� ��ư �κ� ���� -->
		<div class="modal fade" id="login" tabindex="-1" role="dialog"
			aria-labelledby="modalLabel" aria-hidden="true">

			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true"></span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="lineModalLabel">
							<center>�ȳ��ϼ���. PUCO �Դϴ�.</center>
						</h4>
					</div>
					<div class="modal-body">

						<!-- content goes here -->
						<c:if test="${sessionScope.id==null }">
							<form class="form-horizontal ng-pristine ng-valid ng-valid-email"
								role="form" method="post" action="signin.do" id="logForm">

								<div class="row">
									<div class="col-sm-6 col-xs-12" style="margin-bottom: 10px;">
										<label for="firstname">���̵�</label> <input type="text"
											class="form-control ng-pristine ng-untouched ng-valid"
											id="id" name="id" placeholder="���̵�">
									</div>
									<div class="col-sm-6 col-xs-12" style="margin-bottom: 10px;">
										<label for="lastName">��й�ȣ</label> <input type="password"
											class="form-control ng-pristine ng-untouched ng-valid"
											id="pwd" name="pwd" placeholder="��й�ȣ">
									</div>
								</div>

								<p>
								<p>
									<button type="button" class="btn btn-block btn-primary"
										data-target="#login" data-dismiss="modal" id="logBtn">�α���</button>
							</form>
						</c:if>
						<c:if test="${sessionScope.id!=null }">
							<form method="post" action="signout.do" id="logoutForm">
								${sessionScope.id }�� ȯ���մϴ�!!&nbsp;
								<button type="button" class="btn btn-block btn-primary"
									data-target="#login" data-dismiss="modal" id="logoutBtn">�α׾ƿ�</button>
							</form>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<!-- �α��� modal â�� id, password, �α���, �α׾ƿ� ��ư �κ� �� -->


	</header>
								

	<!-- content -->
				<jsp:include page="${jsp }"></jsp:include>

	<!-- Scripts -->

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>



	<!-- ȸ������/�α��� �˾�â ���� -->
	<script src="../assets/js/popup.js"></script>
	<!-- �������������� ������/�̹��� ��ġ�� ��ũ��Ʈ -->
	<script type="text/javascript"
		src="//cdn.jsdelivr.net/g/modernizr@2.7,respond@1.4,bootstrap@3.1,fittext@1.2"></script>


	<script type="text/javascript">
		$(function() {
			$(".dropdown").hover(function() {
				$('.dropdown-menu', this).stop(true, true).fadeIn("fast");
				$(this).toggleClass('open');
				$('b', this).toggleClass("caret caret-up");
			}, function() {
				$('.dropdown-menu', this).stop(true, true).fadeOut("fast");
				$(this).toggleClass('open');
				$('b', this).toggleClass("caret caret-up");
			});
		});
	</script>

	<script type="text/javascript">
	$(document).ready(function() {
	    var activeSystemClass = $('.list-group-item.active');

	    //something is entered in search form
	    $('#system-search').keyup( function() {
	       var that = this;
	        // affect all table rows on in systems table
	        var tableBody = $('.table-list-search tbody');
	        var tableRowsClass = $('.table-list-search tbody tr');
	        $('.search-sf').remove();
	        tableRowsClass.each( function(i, val) {
	        
	            //Lower text for case insensitive
	            var rowText = $(val).text().toLowerCase();
	            var inputText = $(that).val().toLowerCase();
	            if(inputText != '')
	            {
	                $('.search-query-sf').remove();
	                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>�˻���: "'
	                    + $(that).val()
	                    + '"</strong></td></tr>');
	            }
	            else
	            {
	                $('.search-query-sf').remove();
	            }

	            if( rowText.indexOf( inputText ) == -1 )
	            {
	                //hide rows
	                tableRowsClass.eq(i).hide();
	                
	            }
	            else
	            {
	                $('.search-sf').remove();
	                tableRowsClass.eq(i).show();
	            }
	        });
	        //all tr elements are hidden
	        if(tableRowsClass.children(':visible').length == 0)
	        {
	            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">��ġ�ϴ� �ܾ �����ϴ�.</td></tr>');
	        }
	    });
	});
	</script>
</body>
</html>