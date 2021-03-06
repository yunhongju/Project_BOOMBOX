<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>BOOM SCHOOL</title>
    <link href="/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a6b1415e6e.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>
    <!-- google -->
    <meta name="google-signin-scope" content="profile email">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id"
        content="290856146603-r0r54hvfs9vbaf1c6cjpv5egid2ecl44.apps.googleusercontent.com">

    <style>
        .grid_title {
            font-size: 30px;
        }

        .main_container {
            padding-top: 30px;
            padding-left: 30px;
        }

    </style>
</head>

<body>
	<jsp:include page="/WEB-INF/views/menu/navi-school.jsp" />

			<div class="col-md-8 video_box">
				<div class="pl-5 pt-5 text-middle ">

					<h3>해당 페이지는 맴버쉽 가입자만 이용이 가능합니다.</h3>

				</div>


				<div class="p-5 pt-3">
					<h3>현재 맴버쉽  </h3>&emsp;<a><h5>미 가입자 <br>
					<div class=" text-right"><a class="btn btn-primary" href="/membership/payCheckForm" role="button">결제하러가기</a></div>
				</div>
			</div>




</body>

</html>