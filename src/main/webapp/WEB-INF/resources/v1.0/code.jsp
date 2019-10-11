<jsp:directive.include file="../fragments/mason-init.jspf"/>

<m:resource>

    <m:request method="GET">
        
        <m:execute className="com.metamug.seed.RequestProcessor" var="result" param="${mtgReq}"/>

        <c:set target="${output}" property="executeResult" value="${result}" />
        
    </m:request>

</m:resource>
