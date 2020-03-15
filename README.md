### Purpose

Make REST API with JSP. Call classes from jsp and map them to REST methods. 

```jsp
<jsp:directive.page pageEncoding="UTF-8" trimDirectiveWhitespaces="true"/>
<%@taglib uri="mtg-mason.tld" prefix="m" %>

<m:resource>

    <m:request method="GET">
        <m:execute className="com.example.RequestHandler" var="getCustomer" 
                   param="${mtgReq}" output="true"/>
    </m:request>

</m:resource>
```

```
http://localhost:8080/rest/v1.0/execute
```

This project demonstrates implementation of MVC pattern for creating REST APIs using [Mason](https://github.com/metamug/mason).

![Model-View-Controller](https://metamug.com/img/mvc.png)

### Controller

The Mason `Router` acts as a controller by routing incoming HTTP requests to the appropriate jsp file as per the API endpoint.

### View

The JSP file is the view. The JSP file contains `<m:execute>` tag which calls `process` method of the declared `RequestProcessable` class.

### Model

The RequestProcessable class should contain the business logic which interacts with the business layer of the application.

### Setup
This maven web project needs a servlet container to work with. Uses mason dependency. To use latest mason, install the dependency on local machine. Check pom.xml for more details
