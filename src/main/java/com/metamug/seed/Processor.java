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
import java.util.Map;
import javax.sql.DataSource;

/**
 *
 * @author anishhirlekar
 */
public class Processor implements RequestProcessable {

    @Override
    public Response process(Request request, DataSource ds, Map<String, Object> args) throws Exception {
        Customer customer = new Customer();
        customer.setName("John");
        customer.setId(1);
        customer.setContact("8080808080", "john@example.com");
        
        Response response = new Response();
        // set your model object as payload here
        response.setPayload(customer);
        return response;
    }
    
}
