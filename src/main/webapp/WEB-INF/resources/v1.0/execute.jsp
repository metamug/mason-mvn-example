<jsp:directive.include file="../fragments/mason-init.jspf"/>

<m:resource>

    <m:request method="GET">
        
        <m:execute className="com.metamug.seed.Processor" var="executeResult" param="${mtgReq}" output="true"/>

    </m:request>

</m:resource>
