<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品编辑</title>
</head>
<body>
<!-- enctype="multipart/form-data" -->
<form action="${pageContext.request.contextPath }/updateItem" method="post"   >
<table width="100%" border=1>
<input type="hidden" name="id" value="${item.id }"/>
	<tr>
		<td>商品名称</td>
		<td><input type="text" name="name" value="${item.name }"></td>
	</tr>
	<tr>
		<td>商品价格</td>
		<td><input type="text" name="price" value="${item.price }"></td>
	</tr>
	<tr>
		<td>商品描述</td>
		<td><input type="text" name="detail" value="${item.detail }"></td>
	</tr>
<%--	  <tr>--%>
<%--		<td>商品图片</td>--%>
<%--		<td>--%>
<%--		<c:if test="${item.pic !=null}">--%>
<%--				<img src="http://10.180.35.15:81/pic/${item.pic }" width="100" height="100">--%>
<%--			</c:if>--%>
<%--			<input type="file" name="pictureFile"> --%>
<%--		</td> --%>
<%--	</tr>  --%>

<%--	 <tr>--%>
<%--		<td>商品生产日期</td>--%>
<%--<td>--%>
<%-- <input type="text" name="createtime" value='<fmt:formatDate value="${item.createtime }" pattern="yyyy-MM-dd HH:mm:ss"/>'>--%>
<%-- </td>--%>
<%--	</tr>--%>
<%--		<tr>--%>
<%--		<td><input type="submit"  value="修改"></td>--%>
<%--	</tr> --%>
</table>
</form>
</body>
</html>