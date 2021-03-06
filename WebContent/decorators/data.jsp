<%-- 
    Document   : main
    Created on : 2008-3-21, 19:26:18
    Author     : Administrator
--%>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<html style="height:100%">
    <head>
        <jsp:include page="_head.jsp"></jsp:include>
        <decorator:head />
    </head>
    <body style="margin:0;padding:0;height:100%;background:#F2FBFF">
    	<div id="loading-mask"><div id="loading-msg">正在加载...</div></div>
    	<div class="mainwrap">
    		<div id="mainlayout" class="easyui-layout" fit="true">
    			<div region="north" border="false" style="height:94px;background:#A1C4ff">
					<jsp:include page="_north.jsp"></jsp:include>
    			</div>
    			<div region="east" border="false" style="padding:5px;width:170px;border-left:1px solid #92B7D0">
					<div class="subtitle">相关操作</div>
					<div class="submenu" style="padding:0 20px;">
						<a href="<c:url value='/data/depot/index'/>">仓库资料</a>
						<a href="<c:url value='/data/measureUnit/index'/>">计量单位</a>
						<a href="<c:url value='/data/goodType/index'/>">商品分类</a>
						<a href="<c:url value='/data/good/index'/>">商品资料</a>
						<a href="<c:url value='/data/intercourseType/index'/>">往来单位分类</a>
						<a href="<c:url value='/data/intercourse/index'/>">往来单位</a>
					</div>
    			</div>
    			<div region="center" border="false" style="overflow:hidden">
    				<decorator:body />
    			</div>
    		</div>
    	</div>
    </body>
</html>
