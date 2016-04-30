<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../assets/css/newboard.css" />
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
</head>
<body>
<!-- Main -->
	<div id="main" class="wrapper style1">
		<div class="container">
			<header class="major">
				<h2>�����Խ���(Freeboard)</h2>
				<p>�ۼ��� ���� ���� �� �����ϱ� ��ư�� �����ּ���.</p>
			</header>

			<!-- Content -->
			<section id="content" style="margin-top: auto;">
				<div id="mbar" align="center">
					<!-- ������ -->
					<form class="form-horizontal" role="form" action="freeboard_update_ok.do"
						method="post" id="frm">

						<!-- ���� -->
						<div class="form-group">
							<label class="control-label col-sm-2" for="title">Title:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="bsubject" name="bsubject"
									value="${vo.bsuject }">
							</div>
						</div>
						<!-- ������ -->
						<div class="form-group">
							<label class="control-label col-sm-2" for="content">Content:</label>
							<div class="col-sm-9">
								<textarea name="ir1" id="ir1" 
									style="width: 775px; height: 300px; display: none;">${vo.bcontent }</textarea>
								<input type="hidden" id="taglist" name="taglist">
							</div>
						</div>

						<!-- �۾����ư -->

						<div class="col-sm-offset-4 col-sm-8">
							<input type="button" id="sndbtn" value="�����ϱ�"> 
							<input type="button" onclick="javascript:history.back()" value="���">
						</div>



					</form>
</body>
</html>