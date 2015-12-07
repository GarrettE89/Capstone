/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.carolscupcakes.controller;

import com.swcguild.carolscupcakes.dao.DAO;
import com.swcguild.carolscupcakes.model.Order;
import javax.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author apprentice
 */
public class orderController {
    
    private DAO dao;
    
    @RequestMapping(value="/order", method=RequestMethod.POST)
    @ResponseStatus(HttpStatus.CREATED)
    @ResponseBody 
    public Order addOrder(@Valid @RequestBody Order order){
        dao.addOrder(order);
        
        return order;
        
    }

    
}
