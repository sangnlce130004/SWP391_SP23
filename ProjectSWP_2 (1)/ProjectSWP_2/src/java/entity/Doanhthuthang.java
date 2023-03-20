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
public class Doanhthuthang {
    private String year;
    private String thang;
    private double doanhthu;

    public Doanhthuthang() {
    }

    public Doanhthuthang(String year, String thang, double doanhthu) {
        this.year = year;
        this.thang = thang;
        this.doanhthu = doanhthu;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getThang() {
        return thang;
    }

    public void setThang(String thang) {
        this.thang = thang;
    }

    public double getDoanhthu() {
        return doanhthu;
    }

    public void setDoanhthu(double doanhthu) {
        this.doanhthu = doanhthu;
    }

    @Override
    public String toString() {
        return "Doanhthuthang{" + "year=" + year + ", thang=" + thang + ", doanhthu=" + doanhthu + '}';
    }

    
}
