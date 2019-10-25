<jsp:directive.page pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
    errorPage="/WEB-INF/resources/error/500.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="mtg-mason.tld" prefix="m" %>


<m:resource>

    <m:request method="GET">
        <m:execute className="com.metamug.seed.Processor" var="executeResult" param="${mtgReq}" output="true"/>
    </m:request>

</m:resource>
