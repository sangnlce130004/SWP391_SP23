/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author DELL
 */
public class Order {
    private String order_id;
    private String date;
    private String address;
    private double total_price;
    private String voucher_id;
    private String user_id;
    private String status;
    private String shipping_method;

    public Order() {
    }

    public Order(String order_id, String date, String address, double total_price, String voucher_id, String user_id, String status, String shipping_method) {
        this.order_id = order_id;
        this.date = date;
        this.address = address;
        this.total_price = total_price;
        this.voucher_id = voucher_id;
        this.user_id = user_id;
        this.status = status;
        this.shipping_method = shipping_method;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    public String getVoucher_id() {
        return voucher_id;
    }

    public void setVoucher_id(String voucher_id) {
        this.voucher_id = voucher_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getStatus() {
        return "Order Success";
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getShipping_method() {
        return shipping_method;
    }

    public void setShipping_method(String shipping_method) {
        this.shipping_method = shipping_method;
    }

    @Override
    public String toString() {
        return "Order{" + "order_id=" + order_id + ", date=" + date + ", address=" + address + ", total_price=" + total_price + ", voucher_id=" + voucher_id + ", user_id=" + user_id + ", status=" + status + ", shipping_method=" + shipping_method + '}';
    }
    

    
}
