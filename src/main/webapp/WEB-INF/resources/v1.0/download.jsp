<jsp:directive.page pageEncoding="UTF-8" trimDirectiveWhitespaces="true"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://xml.metamug.net/jsp/jstl/mason" prefix="m" %>

<m:resource>

  <m:request method="GET" item="false">
    <m:param name="file" type="TEXT" value="${mtgReq.params['file']}" minLen="2" isRequired="true"/>
    
    <m:execute var="download" className="com.metamug.plugin.sftp.FileDownload" param="${mtgReq}" output="true">
      <m:arg name="host" value="example.metamug.net"/>
      <m:arg name="user" value="root"/>
      <m:arg name="password" value="password"/>
      <m:arg name="dir" value="/home/ubuntu/crap/myproject"/>
    </m:execute>

  </m:request>

</m:resource>