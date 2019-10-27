/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example;

import com.example.entity.Customer;
import com.metamug.entity.Request;
import com.metamug.entity.Response;
import com.metamug.exec.RequestProcessable;
import java.util.Map;
import javax.sql.DataSource;


/**
 *
 * @author anishhirlekar
 */
public class RequestHandler implements RequestProcessable {

    @Override
    public Response process(Request request, DataSource ds, Map<String, Object> args) throws Exception {


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
