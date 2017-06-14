<%@ tag pageEncoding="UTF-8"%>

<%@ attribute name="pm" required="true" type="com.smy.entity.PageModel" %>
<%@ attribute name="url" required="true" type="java.lang.String" %>

<table width="100%">
    	<tr>
	    	<td align="right">
	    		总${pm.sumCount }条 第${pm.currentPage }/${pm.sumPage }页 
	    		<a href="${url }?pageNo=${pm.first }">首页</a> 
	    		<a href="${url }?pageNo=${pm.upper }">上一页</a> 
	    		<a href="${url }?pageNo=${pm.down }">下一页</a> 
	    		<a href="${url }?pageNo=${pm.last }">尾页</a>	
	    	</td>
    	</tr>
</table>