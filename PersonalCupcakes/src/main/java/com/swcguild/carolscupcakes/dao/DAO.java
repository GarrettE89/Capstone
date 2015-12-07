/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.carolscupcakes.dao;

import com.swcguild.carolscupcakes.model.Blog;
import com.swcguild.carolscupcakes.model.Comment;
import com.swcguild.carolscupcakes.model.Order;
import com.swcguild.carolscupcakes.model.User;
import java.sql.Date;
import java.util.List;
/**
 *
 * @author apprentice
 */
public interface DAO {

    
    // Blog access methods
    public Blog addBlog(Blog myBlog);
    public void editBlog(Blog myBlog);
    public List<Blog> getBlogByCategory(String category);
    public void deleteBlog(int blogId);
    public List<Blog> getAllBlogs();
    public Comment addComment(Comment myComment);
    public Blog getBlogById(int blogId);
    
    //Order access methods
    public Order addOrder(Order myOrder);
    
    // These methods are here in the interface for future possible use. At this time
    // the program does not have this functionality as all orders are emailed to 
    // the business owner at the time of the order and there is phone/email customer-business
    // contact after that point.
    public void removeOrder(int orderId);
    public void updateOrder(Order myOrder);
    public Order getOrderById(int orderId);
    public List<Order> getAllOrders();
    public List<Order> getOrdersByPickupDate(Date mydate);
    
    
    
    // User access methods
    public User getUserById(int userId);
    
    
    // These methods are included, but funcionality for users is not available at this time.
    // Account creation for public users accounts is not top priority. 
    // not top priority
    public User getUserByUsername(String username);
    public User getUserByEmail(String email); 
    public User addUser(User myUser);
    public User editUser(int userId);
    public List<User> getAllUsers();
    
    

}



 

 



