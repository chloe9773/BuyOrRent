<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<!-- css -->
	<link href="${path}/css/reset.css" rel="stylesheet"/>
	<link href="${path}/css/common.css" rel="stylesheet"/>
	<link href="${path}/css/home.css" rel="stylesheet"/>
	
	<!-- 제이쿼리, 폰트어썸 -->
	<script src="https://kit.fontawesome.com/64f7ef32af.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- js 스크립 -->
	<script type="text/javascript" src="${path}/js/common.js"></script>
</head>