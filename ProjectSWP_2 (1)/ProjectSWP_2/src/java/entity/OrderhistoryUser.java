/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.text.DecimalFormat;

/**
 *
 * @author HP
 */
public class OrderhistoryUser {
    private String date;
    private String namep;
    private String img;
    private int quantity;
    private String address;
    private Double total_price;
    private String status;

    public OrderhistoryUser() {
    }

    public OrderhistoryUser(String date, String namep, String img, int quantity, String address, Double total_price, String status) {
        this.date = date;
        this.namep = namep;
        this.img = img;
        this.quantity = quantity;
        this.address = address;
        this.total_price = total_price;
        this.status = status;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getNamep() {
        return namep;
    }

    public void setNamep(String namep) {
        this.namep = namep;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTotal_price() {
        DecimalFormat df = new DecimalFormat("###,###,###");
        return df.format(total_price);
    }

    public void setTotal_price(Double total_price) {
        this.total_price = total_price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "OrderhistoryUser{" + "date=" + date + ", namep=" + namep + ", img=" + img + ", quantity=" + quantity + ", address=" + address + ", total_price=" + total_price + ", status=" + status + '}';
    }

    
}
