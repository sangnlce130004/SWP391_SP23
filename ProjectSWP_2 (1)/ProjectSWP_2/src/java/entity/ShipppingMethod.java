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
public class ShipppingMethod {
    private int ship_id;
    private String ship_name;

    public ShipppingMethod() {
    }

    public ShipppingMethod(int ship_id, String ship_name) {
        this.ship_id = ship_id;
        this.ship_name = ship_name;
    }

    public int getShip_id() {
        return ship_id;
    }

    public void setShip_id(int ship_id) {
        this.ship_id = ship_id;
    }

    public String getShip_name() {
        return ship_name;
    }

    public void setShip_name(String ship_name) {
        this.ship_name = ship_name;
    }

    @Override
    public String toString() {
        return "ShipppingMethod{" + "ship_id=" + ship_id + ", ship_name=" + ship_name + '}';
    }
    
}
