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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author apprentice
 */
public class DAOImpl implements DAO {

    // Blog SQL Statements
    private static final String SQL_INSERT_BLOG = "INSERT INTO Blog (UserID, Date,"
            + "Content, Category, Title, Approved) VALUES(?,?,?,?,?,?,?,?)";
    private static final String SQL_DELETE_BLOG = "DELETE FROM Blog WHERE BlogID = ?";
    private static final String SQL_SELECT_BLOG_BY_ID = "SELECT * FROM Blog WHERE BlogID = ?";
    private static final String SQL_UPDATE_BLOG = "UPDATE Blog SET UserID = ?,"
            + "Date = ?, Content = ?, Category = ?, Title = ?, Approved = ? WHERE BlogID = ?";
    private static final String SQL_SELECT_ALL_BLOGS = "SELECT * FROM Blog";
    private static final String SQL_SELECT_BLOG_BY_CATEGORY = "SELECT * FROM Blog WHERE Category = ?";
    private static final String SQL_SELECT_COMMENTS_BY_BLOG_ID = "SELECT * FROM COMMENTS WHERE BlogID = ?";

    private static final String SQL_ADD_COMMENT_TO_BLOG = "INSERT INTO Comments SET CommentID = ?,"
            + "Date = ?, UserID = ?, Message = ?, BlogID = ? WHERE BlogID = ?";

    // Order SQL Statements
    private static final String SQL_INSERT_ORDER = "INSERT INTO Orders (OrderID,"
            + "UserID, OriginDate, PickupDate, Quantity) VALUES(?,?,?,?,?)";
    private static final String SQL_SELECT_ORDER = "SELECT * FROM Orders WHERE OrderID = ?";
    private static final String SQL_UPDATE_ORDER = "UPDATE Orders SET UserID = ?,"
            + "OriginDate = ?, PickupDate = ?, Quantity = ? WHERE OrderID = ?";
    private static final String SQL_SELECT_ALL_ORDERS = "SELECT * FROM Orders";
    private static final String SQL_DELETE_ORDER = "DELETE FROM Orders WHERE OrderID = ?";

    // User SQL Statements
    private static final String SQL_INSERT_USER = "INSERT INTO Users (UserID,"
            + "UserName, Password, FirstName, LastName, Title, Clearance, Email,"
            + "StreetAddress, Phone, City, State) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
    private static final String SQL_SELECT_USER = "SELECT * FROM Users WHERE UserID = ?";
    private static final String SQL_DELETE_USER = "DELETE FROM Users WHERE UserID = ?";

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    @Override
    public Blog addBlog(Blog myBlog) {
        jdbcTemplate.update(SQL_INSERT_BLOG,
                myBlog.getTitle(),
                myBlog.getUserID(),
                myBlog.getDate(),
                myBlog.getContent(),
                myBlog.getCategory(),
                myBlog.getTitle(),
                myBlog.getApproved());

        Integer id = jdbcTemplate.queryForObject("SELECT LAST_INSERT_ID()", Integer.class);
        myBlog.setBlogID(id);
        return myBlog;
    }

    @Override
    public Comment addComment(Comment myComment) {
        jdbcTemplate.update(SQL_ADD_COMMENT_TO_BLOG,
                myComment.getDate(),
                myComment.getUserID(),
                myComment.getMessage(),
                myComment.getBlogID());

        Integer id = jdbcTemplate.queryForObject("SELECT LAST_INSERT_ID()", Integer.class);
        myComment.setCommentID(id);
        return myComment;
    }

    @Override
    public void editBlog(Blog myBlog) {
        jdbcTemplate.update(SQL_UPDATE_BLOG,
                myBlog.getUserID(),
                myBlog.getDate(),
                myBlog.getContent(),
                myBlog.getCategory(),
                myBlog.getTitle(),
                myBlog.getApproved(),
                myBlog.getBlogID());
    }

    @Override
    public List<Blog> getBlogByCategory(String category) {

        List<Blog> blogs;

        try {
            blogs = jdbcTemplate.query(SQL_SELECT_BLOG_BY_CATEGORY, new BlogMapper(), category);

            // Now iterate thru blogs & get & set all comments into each blog object
//            for (int i = 0; i < blogs.size(); i++) {
//                blogs.get(i).setComments(getCommentsByBlogID(blogs.get(i).getBlogID()));
//            }

        } catch (EmptyResultDataAccessException e) {
            return null;
        }

        return blogs;
    }

    @Override
    public Blog getBlogById(int blogId) {
        Blog myBlog = new Blog();

        try {
            myBlog = jdbcTemplate.queryForObject(SQL_SELECT_BLOG_BY_ID, new BlogMapper(), blogId);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
        return myBlog;
    }

    @Override
    public void deleteBlog(int blogId) {
        jdbcTemplate.update(SQL_DELETE_BLOG, blogId);
    }

    @Override
    public List<Blog> getAllBlogs() {
        return jdbcTemplate.query(SQL_SELECT_ALL_BLOGS, new BlogMapper());
    }

    @Override
    public Order addOrder(Order myOrder) {
        jdbcTemplate.update(SQL_INSERT_ORDER,
                myOrder.getOrderID(),
                myOrder.getUserID(),
                myOrder.getOrderDate(),
                myOrder.getPickupDate(),
                myOrder.getDetails());

        Integer id = jdbcTemplate.queryForObject("SELECT LAST_INSERT_ID()", Integer.class);
        myOrder.setOrderID(id);
        return myOrder;

    }

    @Override
    public void removeOrder(int orderId) {
        jdbcTemplate.update(SQL_DELETE_ORDER, orderId);
    }

    @Override
    public void updateOrder(Order myOrder) {
        jdbcTemplate.update(SQL_UPDATE_BLOG,
                myOrder.getOrderID(),
                myOrder.getUserID(),
                myOrder.getOrderDate(),
                myOrder.getPickupDate(),
                myOrder.getDetails());
    }

    @Override
    public Order getOrderById(int orderId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Order> getAllOrders() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Order> getOrdersByPickupDate(Date mydate) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User getUserById(int userId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User getUserByUsername(String username) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User getUserByEmail(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User addUser(User myUser) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User editUser(int userId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<User> getAllUsers() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public List<Comment> getCommentsByBlogID(int blogID){
        return jdbcTemplate.query(SQL_SELECT_COMMENTS_BY_BLOG_ID, new CommentMapper(), blogID);
    }

    // Blog Mapper
    private static final class BlogMapper implements RowMapper<Blog> {

        @Override
        public Blog mapRow(ResultSet rs, int i) throws SQLException {
            Blog myBlog = new Blog();

            myBlog.setBlogID(rs.getInt("BlogID"));
            myBlog.setUserID(rs.getInt("UserID"));
            myBlog.setDate(rs.getDate("Date"));
            myBlog.setContent(rs.getString("Content"));
            myBlog.setCategory(rs.getString("Category"));
            myBlog.setTitle(rs.getString("Title"));
            myBlog.setApproved(rs.getInt("Approved"));
//            myBlog.setComments(rs.getString("Comments"));

            return myBlog;
        }
    }


    //  Comment Mapper
    private static final class CommentMapper implements RowMapper<Comment> {

        @Override
        public Comment mapRow(ResultSet rs, int i) throws SQLException {
            Comment myComment = new Comment();

            myComment.setBlogID(rs.getInt("BlogID"));
            myComment.setUserID(rs.getInt("UserID"));
            myComment.setDate(rs.getDate("Date"));
            myComment.setMessage(rs.getString("Message"));
            myComment.setCommentID(rs.getInt("CommentID"));
            return myComment;
        }
    }

}
