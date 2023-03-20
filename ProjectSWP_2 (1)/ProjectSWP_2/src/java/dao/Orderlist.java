/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.text.DecimalFormat;

/**
 *
 * @author HP
 */
public class Orderlist {
    private String user_id;
    private String oder_id;
    private int quantity;
    private Double total_price;
    private String shippping_method;

    public Orderlist() {
    }

    public Orderlist(String user_id, String oder_id, int quantity, Double total_price, String shippping_method) {
        this.user_id = user_id;
        this.oder_id = oder_id;
        this.quantity = quantity;
        this.total_price = total_price;
        this.shippping_method = shippping_method;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getOder_id() {
        return oder_id;
    }

    public void setOder_id(String oder_id) {
        this.oder_id = oder_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getTotal_price() {
        DecimalFormat df = new DecimalFormat("###,###,###");
        return df.format(total_price);
    }

    public void setTotal_price(Double total_price) {
        this.total_price = total_price;
    }

    public String getShippping_method() {
        return shippping_method;
    }

    public void setShippping_method(String shippping_method) {
        this.shippping_method = shippping_method;
    }

    @Override
    public String toString() {
        return "Orderlist{" + "user_id=" + user_id + ", oder_id=" + oder_id + ", quantity=" + quantity + ", total_price=" + total_price + ", shippping_method=" + shippping_method + '}';
    }
    
    
}
