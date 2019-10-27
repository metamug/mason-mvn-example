<jsp:directive.include file="../fragments/mason-init.jspf"/>
<m:resource>
   <m:request method="GET">
        <sql:query var="myQuery" dataSource="${datasource}">SELECT 'Hello World'
        </sql:query>
        <c:set target="${output}" property="myQuery" value="${myQuery}"/>
    </m:request>
</m:resource>
