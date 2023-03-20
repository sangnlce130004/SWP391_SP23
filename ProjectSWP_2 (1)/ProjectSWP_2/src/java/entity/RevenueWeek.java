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
public class RevenueWeek {
    private String name;
    private Double revenue;

    public RevenueWeek() {
    }

    public RevenueWeek(String name, Double revenue) {
        this.name = name;
        this.revenue = revenue;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getRevenue() {
        return revenue;
    }

    public void setRevenue(Double revenue) {
        this.revenue = revenue;
    }

    @Override
    public String toString() {
        return "RevenueWeek{" + "name=" + name + ", revenue=" + revenue + '}';
    }
    
}
