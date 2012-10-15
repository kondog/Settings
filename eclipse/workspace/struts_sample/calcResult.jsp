<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld"  prefix="bean" %>

<logic:notPresent name="result" scope="session">
	<logic:redirect forward="fail" />
</logic:notPresent>

<html>
<head<title>result画面</title></head>
<body>

Calculation Result is
<bean:write name="result" scope="session" />

</body>
</html>