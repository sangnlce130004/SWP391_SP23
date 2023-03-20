package entity;

public class User {

    private String id;
    private String name;
    private String password;
    private String email;
    private String phone;
    private String role_id;

    public User() {
    }

    public User(String id, String name, String password, String email, String phone, String role_id) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.role_id = role_id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRole_id() {
        return role_id;
    }

    public void setRole_id(String role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", phone=" + phone + ", role_id=" + role_id + '}';
    }

    
}
