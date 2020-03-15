<jsp:directive.page pageEncoding="UTF-8" trimDirectiveWhitespaces="true"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://xml.metamug.net/jsp/jstl/mason" prefix="m" %>

<%-- Your JSP Code here --%>

<m:xrequest var="echoRequest" url="https://postman-echo.com/post" output="true" method="POST" >
    <m:header name="Content-Type" value="application/json"/>
    <m:xbody>
        {
            "foo1": "${requestScope.foo1}",
            "foo2": ${requestScope.foo2}
        }
    </m:xbody>
</m:xrequest>

<c:out value="${m:jsonPath('$.args.foo1', echoRequest)}" />

