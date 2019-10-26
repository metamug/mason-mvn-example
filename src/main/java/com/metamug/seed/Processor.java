/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.metamug.seed;

import com.metamug.entity.Request;
import com.metamug.entity.Response;
import com.metamug.exec.RequestProcessable;
import com.metamug.seed.entity.Customer;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 *
 * @author anishhirlekar
 */
public class Processor implements RequestProcessable {

    Logger logger = LoggerFactory.getLogger(RequestProcessable.class.getName());

    @Override
    public Response process(Request request, DataSource ds, Map<String, Object> args) throws Exception {

        Context initialContext = new InitialContext();
        DataSource datasource = (DataSource) initialContext.lookup("java:/comp/env/jdbc/mason");

        try (Connection connection = datasource.getConnection()) {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from movie");
            while (rs.next()) {
                System.out.println("Employee ID=" + rs.getFloat("rating") + ", Name=" + rs.getString("name"));
            }
        }
        
//        logger.info(request.getParameter(""));
//        int id = Integer.parseInt(request.getParameter("id"));

        Customer customer = new Customer();
        customer.setName("John Doe.");
        customer.setId(8);
        customer.setContact("+1 943 322 4292", "john.doe@gmail.com");

        Response response = new Response();
        // set your model object as payload here
        response.setPayload(customer);
        return response;
    }

}
