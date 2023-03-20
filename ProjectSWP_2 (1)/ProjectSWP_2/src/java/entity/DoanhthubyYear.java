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
public class DoanhthubyYear {
    private int year;
    private double total;

    public DoanhthubyYear() {
    }

    public DoanhthubyYear(int year, double total) {
        this.year = year;
        this.total = total;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "DoanhthubyYear{" + "year=" + year + ", total=" + total + '}';
    }
    
}
