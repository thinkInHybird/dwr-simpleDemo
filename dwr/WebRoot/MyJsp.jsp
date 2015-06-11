<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.5.1.js"></script>
	<script type='text/javascript' src='<%=request.getContextPath() %>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath() %>/dwr/util.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath() %>/dwr/interface/MessagePush.js'></script>
	
	<script type="text/javascript">
	
	function test() {
		var msg = document.getElementById("msgId").value;
		//msg = {msgId: '1', context: $("#msgContext").val()};
		MessagePush.sendMessageAuto(msg,"哈哈哈");
		
	}
	</script>
  </head>
  
  <body>
    id&nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="msgId" id="msgId" /> <br />
   
   	<input type="button" value="Send" onclick="test()"  />
   	
  </body>
</html>
