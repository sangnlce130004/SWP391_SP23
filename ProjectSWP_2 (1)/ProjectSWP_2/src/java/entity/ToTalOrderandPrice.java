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
public class ToTalOrderandPrice {

    private String date;
    private int total_in_day;
    private int total_product_in_day;
    private float total_price;

    public ToTalOrderandPrice() {
    }

    public ToTalOrderandPrice(String date, int total_in_day, int total_product_in_day, float total_price) {
        this.date = date;
        this.total_in_day = total_in_day;
        this.total_product_in_day = total_product_in_day;
        this.total_price = total_price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getTotal_in_day() {
        return total_in_day;
    }

    public void setTotal_in_day(int total_in_day) {
        this.total_in_day = total_in_day;
    }

    public int getTotal_product_in_day() {
        return total_product_in_day;
    }

    public void setTotal_product_in_day(int total_product_in_day) {
        this.total_product_in_day = total_product_in_day;
    }

    public String getTotal_price() {
        DecimalFormat df = new DecimalFormat("###,###,###");
        return df.format(total_price);
    }

    public void setTotal_price(float total_price) {
        this.total_price = total_price;
    }

    @Override
    public String toString() {
        return "ToTalOrderandPrice{" + "date=" + date + ", total_in_day=" + total_in_day + ", total_product_in_day=" + total_product_in_day + ", total_price=" + total_price + '}';
    }

}
