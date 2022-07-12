package com.example.buysell.models;
import javax.persistence.*;
import lombok.Data;
@Entity
@Table(name = "responses")
@Data
public class Response {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private Product product;
    @ManyToOne
    private User user;
    @ManyToOne
    private User author;
    public Product getProduct() {
        return product;
    }
    public User getUser(){ return user; }
    public User getAuthor(){ return author;}
    public void setResponse (Product product, User user, User author){
       this.product = product;
       this.user = user;
       this.author = author;
    }
}
