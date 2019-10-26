<jsp:directive.page pageEncoding="UTF-8" trimDirectiveWhitespaces="true"  errorPage="/WEB-INF/resources/error/500.jsp"/>
<%@taglib uri="mtg-mason.tld" prefix="m" %>

<m:resource>

    <m:request method="GET">
        <m:execute className="com.metamug.seed.Processor" var="getCustomer" param="${mtgReq}" output="true"/>
    </m:request>

</m:resource>
