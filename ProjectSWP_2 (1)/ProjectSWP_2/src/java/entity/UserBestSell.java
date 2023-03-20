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
public class UserBestSell {
    private String user_id;
    private String name;
    private String email;
    private int phone;
    private int total_bestsell;

    public UserBestSell() {
    }

    public UserBestSell(String user_id, String name, String email, int phone, int total_bestsell) {
        this.user_id = user_id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.total_bestsell = total_bestsell;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public int getTotal_bestsell() {
        return total_bestsell;
    }

    public void setTotal_bestsell(int total_bestsell) {
        this.total_bestsell = total_bestsell;
    }

    @Override
    public String toString() {
        return "UserBestSell{" + "user_id=" + user_id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", total_bestsell=" + total_bestsell + '}';
    }
    
    
}
