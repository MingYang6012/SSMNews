<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" isErrorPage="true"%>

<script type="text/javascript">
	function checkData(){
		var q=document.getElementById("q").value.trim();
		if(q==null || q==""){
			alert("请输入您要查询的关键字！");
			return false;
		}else{
			return true;
		}
	}
</script>
<div class="row">
	<div class="col-md-12" style="padding-top: 10px">
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="${pageContext.request.contextPath}/index.html"><font color="black"><strong>首页</strong></font></a>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
		      <ul class="nav navbar-nav">
		        <li><a href="${pageContext.request.contextPath}/download.html"><font color="black"><strong>系统介绍</strong></font></a></li>
		        <%--<li><a href="https://mp.weixin.qq.com/mp/homepage?__biz=MzI5NTExMTE3OA==&hid=1&sn=0900087a8d9d4921105072fd0cb24e33"><font color="black"><strong>我的java学习</strong></font></a></li>--%>
				<li><a href="https://space.bilibili.com/302417610?spm_id_from=333.337.0.0"><font color="black"><strong>我的java学习</strong></font></a></li>
		        <li><a href="${pageContext.request.contextPath}/login.jsp" target=“_blank”><font color="black"><strong>管理中心</strong></font></a></li>
		      </ul>
		      <form action="${pageContext.request.contextPath}/news/q.html" class="navbar-form navbar-right" role="search" method="post" onsubmit="return checkData()">
		        <div class="form-group" >
		          <input type="text" id="q" name="q" value="${q }" class="form-control" placeholder="请输入要查询的关键字...">
		        </div>
		        <button type="submit" class="btn btn-default">搜索</button>
		      </form>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div>
</div>