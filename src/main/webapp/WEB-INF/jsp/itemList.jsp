<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询商品列表</title>
</head>
<body> 
<button id="deleteAll">点击删除</button>
<form action="${pageContext.request.contextPath }/queryitem.action" method="post">
查询条件：
<table width="100%" border=1>
<tr>
<td>商品id:<input type="text" name="item.id"/></td>
</tr>
<tr>
<td>商品名称:<input type="text" name="item.name"/></td>
</tr>
<tr>
<td><input type="submit" value="查询"/></td>
</tr>
</table>

商品列表：
<table width="100%" border=1>
<tr>
	<td>选择</td>
	<td>商品名称</td>
	<td>商品价格</td>
	<td>生产日期</td>
	<td>商品描述</td>
	<td>操作</td>
</tr>
<!-- 

	
 -->
<c:forEach items="${itemList }" var="item" varStatus="s">
 <tr>
	<td>
		<input type="checkbox" name="ids" value="${item.id }">
	</td>
	<input type="hidden" name="itemList[${s.index}].id"  value="${item.id }"/>
	<td>
	<!-- name属性必须是list属性名+下标+元素属性 -->
	<input type="text" name="itemList[${s.index}].name" value="${item.name }">
	</td>
	<td>
		<input type="text" name="itemList[${s.index}].price" value="${item.price }">
	</td>
	<td>
	<input type="text" name="itemList[${s.index}].createtime" value="<fmt:formatDate value='${item.createtime}' pattern='yyyy-MM-dd HH:mm:ss'/>">
	</td> 
	<td>
	<input type="text" name="itemList[${s.index}].detail" value="${item.detail }">
	</td>
	<td><a href="${pageContext.request.contextPath }/itemEdit.action?id=${item.id}">修改</a></td>
</tr> 
</c:forEach> 

</table>
</form>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js	"></script>
<script type="text/javascript">

	$("#deleteAll").click(function(){
		var all=$("input[name='ids']:checked");

		if(all.length==0){
			alert("请选择需要删除的商品")
			return false;
		}
		var ids=[];
		if(window.confirm("您确定需要删除所选"+all.length+"个商品吗")){
			//前端序列化
			let ids = all.serialize();
			//发送请求后台
			location.href="${pageContext.request.contextPath}/DeleteAllPidsServlet?pids="+ids;
		}else{
			all.removeProp("checked")
		}
	});
</script>


</html>