/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author HP
 */
public class Top5Products {
    private String name;
    private int total_sales;

    public Top5Products() {
    }

    public Top5Products(String name, int total_sales) {
        this.name = name;
        this.total_sales = total_sales;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getTotal_sales() {
        return total_sales;
    }

    public void setTotal_sales(int total_sales) {
        this.total_sales = total_sales;
    }

    @Override
    public String toString() {
        return "Top5Products{" + "name=" + name + ", total_sales=" + total_sales + '}';
    }

    
}
