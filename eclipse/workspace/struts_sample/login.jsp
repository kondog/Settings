<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>

<html>
<head><title>login画面</title></head>
<body>

<html:errors/>

ID/パスワードを入力してください
<html:form action="/authentication" focus="id">
	<html:text property="id" size="16" />
	<br>
	<html:password property="pass" size="16" redisplay="false" />
	<br>
	<html:submit property="submit" value="送信" />
	<html:reset value="リセット" />
</html:form>

</body>
</html>