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
public class SaleofWeek {
    private String productname;
    private int totalquantity;

    public SaleofWeek() {
    }

    public SaleofWeek(String productname, int totalquantity) {
        this.productname = productname;
        this.totalquantity = totalquantity;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public int getTotalquantity() {
        return totalquantity;
    }

    public void setTotalquantity(int totalquantity) {
        this.totalquantity = totalquantity;
    }

    @Override
    public String toString() {
        return "SaleofWeek{" + "productname=" + productname + ", totalquantity=" + totalquantity + '}';
    }
    
}
