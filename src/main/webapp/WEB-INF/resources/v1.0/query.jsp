<jsp:directive.page pageEncoding="UTF-8" trimDirectiveWhitespaces="true"/>
<%@taglib uri="mtg-mason.tld" prefix="m" %>

<m:resource>

    <m:request method="GET">
        <m:execute className="com.example.RequestHandler" var="getCustomer" 
                   param="${mtgReq}" output="true"/>
    </m:request>

</m:resource>
