/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.carolscupcakes.controller;

import com.swcguild.carolscupcakes.dao.DAO;
import com.swcguild.carolscupcakes.model.Blog;
import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author apprentice
 */
@Controller
public class HomeController {

    private DAO dao;
    
    @Inject
    public HomeController(DAO dao){
        this.dao = dao;
    }
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String displayHomePage() {
        return "index";
    }
    
    @RequestMapping(value = {"/about"}, method = RequestMethod.GET)
    public String displayAboutPage() {
        return "about";
    }
    
    @RequestMapping(value = {"/contact"}, method = RequestMethod.GET)
    public String displayContactPage() {
        return "contact";
    }
    
    @RequestMapping(value = {"/order"}, method = RequestMethod.GET)
    public String displayOrderPage() {
        return "order";
    }
    
    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String displayLogInPage() {
        return "login";
    }

    
    @RequestMapping(value = "/index/{category}", method = RequestMethod.GET)
    @ResponseBody
    public List<Blog> getBlogByCat(@PathVariable("category") String category){
        return dao.getBlogByCategory(category);
    }
    
    @RequestMapping(value = {"/admin"}, method = RequestMethod.GET)
    public String displayAdminPage() {
        return "admin";
    }
}