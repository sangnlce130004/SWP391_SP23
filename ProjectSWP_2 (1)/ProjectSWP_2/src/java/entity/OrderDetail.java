package entity;

public class OrderDetail extends Product{        
    private int quantity;
    private String oid;
    private String uid;    
    private String date;

    public OrderDetail() {
    }

    public OrderDetail(int quantity, String oid, String uid, String date) {
        super();
        this.quantity = quantity;
        this.oid = oid;
        this.uid = uid;
        this.date = date;
    }

    public OrderDetail(int quantity, String uid, String date) {
        super();
        this.quantity = quantity;
        this.uid = uid;
        this.date = date;
    }
    

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
}
