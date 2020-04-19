<jsp:directive.page pageEncoding="UTF-8" trimDirectiveWhitespaces="true"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://xml.metamug.net/jsp/jstl/mason" prefix="m" %>
<m:resource>
   <m:request method="GET">
        <sql:query var="myQuery" dataSource="${datasource}">SELECT 'Hello World'
        </sql:query>
        <c:set target="${output}" property="myQuery" value="${myQuery}"/>
    </m:request>
</m:resource>
