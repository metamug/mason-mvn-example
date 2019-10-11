This project demonstrates implementation of MVC pattern for creating REST APIs using [Mason](https://github.com/metamug/mason).

![Model-View-Controller](https://lh3.googleusercontent.com/-abO9OBpPqpM/XaBvYhzW2gI/AAAAAAAAFUk/5zsyjQzXzVcH5RHSWbzH4kdWYdJWOdgzgCLcBGAsYHQ/s0/mvc.png)

### Controller

The Mason `Router` acts as a controller by routing incoming HTTP requests to the appropriate jsp file as per the API endpoint.

### View

The JSP file is the view. The JSP file contains `<m:execute>` tag which calls `process` method of the declared `RequestProcessable` class.

### Model

The RequestProcessable class should contain the business logic which interacts with the business layer of the application.
