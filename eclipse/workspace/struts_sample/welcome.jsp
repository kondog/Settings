<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld"  prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>

<logic:notPresent name="id" scope="session">
	<logic:redirect forward="fail"/>
</logic:notPresent>

<html>
<head><title>welcome画面</title></head>
<body>

Welcome
<bean:write name="id" scope="session" />
さん

<html:form action="/calcuration">
	<html:text property="num1" size="3" />
	<br>
	<html:text property="num2" size="3" />
	<br>
	<html:submit property="submit" value="送信" />
</html:form>

</body>
</html>