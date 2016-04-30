<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Landed by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>PUBLIC CODING</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->


<!-- �±�CSS -->

<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="resources/input_tags/bootstrap-tagsinput.css">
    <link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/rainbow/1.2.0/themes/github.css">
    <link rel="stylesheet" href="resources/input_tags/app.css">
    

<link rel="stylesheet" href="assets/css/newboard.css" />

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript"	src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="resources/se/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script>
	$(function() {
		//������������
		var editor_object = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : editor_object,
			elPlaceHolder : "ir1",
			sSkinURI : "resources/se/SmartEditor2Skin.html",
			htParams : {
				// ���� ��� ���� (true:���/ false:������� ����)
				bUseToolbar : true,
				// �Է�â ũ�� ������ ��� ���� (true:���/ false:������� ����)
				bUseVerticalResizer : true,
				// ��� ��(Editor | HTML | TEXT) ��� ���� (true:���/ false:������� ����)
				bUseModeChanger : true,

			}
		});

		//���۹�ư Ŭ���̺�Ʈ
		$("#sndbtn").click(function() {
			var title = $('#bsubject').val();
			if (title.trim() == "") {
				$('#bsubject').focus();
				alert("2");
				return;
			}
			alert(1);
			//id�� smarteditor�� textarea�� �����Ϳ��� ����
			editor_object.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
			alert(2);
			// �̺κп� ������ validation ����
			//�� submit
			$("#frm").submit();
		})
	})
</script>
</head>
<body>

	<!-- Main -->
	<div id="main" class="wrapper style1">
		<div class="container">
			<header class="major">
				<h2>�����Խ���(Freeboard)</h2>
				<p>�����Ӱ� ���� �ۼ��� �ּ���.</p>
			</header>

			<!-- Content -->
			<section id="content" style="margin-top: auto;">
				<div id="mbar" align="center">
					<!-- ������ -->
					<form class="form-horizontal" role="form" action="freeboard_insert_ok.do"
						method="post" id="frm">

						<!-- ���� -->
						<div class="form-group">
							<label class="control-label col-sm-2" for="title">Title:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="bsubject" name="bsubject"
									placeholder="Enter title">
							</div>
						</div>
						<!-- ������ -->
						<div class="form-group">
							<label class="control-label col-sm-2" for="content">Content:</label>
							<div class="col-sm-9">
								<textarea name="ir1" id="ir1"
									style="width: 775px; height: 300px; display: none;"></textarea>
								<input type="hidden" id="taglist" name="taglist">
							</div>
						</div>

						<!-- �۾����ư -->

						<div class="col-sm-offset-4 col-sm-8">
							<input type="button" id="sndbtn" value="�۾���"> <input
								type="button" onclick="javascript:history.back()" value="���">
						</div>



					</form>
</body>
</html>