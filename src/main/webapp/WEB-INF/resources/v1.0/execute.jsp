<jsp:directive.include file="../fragments/mason-init.jspf"/>
<m:resource>
    <m:request method="GET">
        <m:execute className="com.example.RequestHandler" var="getCustomer" 
                   param="${mtgReq}" output="true"/>
    </m:request>

</m:resource>
