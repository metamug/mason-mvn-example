<jsp:directive.page pageEncoding="UTF-8" trimDirectiveWhitespaces="true"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://xml.metamug.net/jsp/jstl/mason" prefix="m" %>

<m:resource>
    <m:request method="GET" item="true">
        <%-- Set a variable greet --%>
        <c:set var="greet" scope="page" value="Hello ${mtgReq.params['id']}"/>
        <%-- Send variable greet to output --%>
        <c:set target="${output}" property="greet" value="${pageScope['greet']}"/>
    </m:request>

</m:resource>
