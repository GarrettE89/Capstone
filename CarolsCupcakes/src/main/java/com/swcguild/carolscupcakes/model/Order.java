/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.carolscupcakes.model;
import java.sql.Date;
import java.util.HashMap;

/**
 *
 * @author apprentice
 */
public class Order {
    private int orderID;
    private int userID;
    private Date orderDate;
    private Date pickupDate;
    private HashMap<Integer, Integer> details;

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getPickupDate() {
        return pickupDate;
    }

    public void setPickupDate(Date pickupDate) {
        this.pickupDate = pickupDate;
    }

    public HashMap<Integer, Integer> getDetails() {
        return details;
    }

    public void setDetails(HashMap<Integer, Integer> details) {
        this.details = details;
    }
    
    
}
