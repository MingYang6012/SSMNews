<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>【Java烂笔头】新闻中心</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/news.css">
	<link href="/News/favicon.ico" rel="SHORTCUT ICON">
	<script src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery-1.11.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/bootstrap3/js/bootstrap.min.js"></script>

	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?aa5c701f4f646931bf78b6f40b234ef5";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();

		function nofind() {
			var img = event.srcElement;
			img.src = "${pageContext.request.contextPath}/static/images/user.png";// 百度图片的地址
			img.onerror = null;// 控制不要一直跳动
		}

	</script>

	<style type="text/css">
		body {
			padding-top: 10px;
			padding-bottom: 40px;
		}
	</style>
</head>
<body>
<div class="container">
	<jsp:include page="/foreground/common/head.jsp"/>

	<jsp:include page="/foreground/common/menu.jsp"/>

	<div class="row">
		<div class="col-md-9">
			<jsp:include page="${mainPage }"></jsp:include>
		</div>

		<div class="col-md-3">
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/user_icon.png"/>
					作者信息
				</div>
				<div class="user_image">
					<img src="${pageContext.request.contextPath}/static/images/user.png"/>
<%--					<img src="${pageContext.request.contextPath}/static/userImages/${newsperson.imageName }" οnerrοr="nofind();"/>--%>
				</div>
				<div class="nickName">[${newsperson.nickName }]</div>
				<div class="userSign">(${newsperson.sign })</div>
			</div>

			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/byType_icon.png"/>
					按日志类别
				</div>
				<div class="datas">
					<ul>
						<c:forEach var="newsTypeCount" items="${newsTypeCountList }">
							<li><span><a href="${pageContext.request.contextPath}/index.html?typeId=${newsTypeCount.id }">${newsTypeCount.typeName }(${newsTypeCount.newsCount })</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>



			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/link_icon.png"/>
					友情链接
				</div>
				<div class="datas">
					<ul>
						<c:forEach var="link" items="${linkList }">
							<li><span><a href="${link.linkUrl }" target="_blank">${link.linkName }</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>

		</div>


	</div>

	<jsp:include page="/foreground/common/foot.jsp"/>
</div>
</body>
</html>