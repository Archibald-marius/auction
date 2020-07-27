package auction.models;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Objects;

@Entity
@Table(name="items")
public class Items extends TimeZones{

        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        @Column(name="id")
        private Long id;

        @Column(name="name")
        private String name;

        @Column(name="initial_price")
        private Double initial_price;

    @Column(name="price")
    private Double price;

    @Column(name="type")
    private String type;

    @Column(name="year")
    private Long year;

    @Column(name="author")
    private String author;

    @Column(name="link")
    private String link;

    @Column(name="sold")
    private Boolean sold = false;

    @Column(name="added")
    @DateTimeFormat(pattern = "yyyy/MM/dd hh:mm")
    private ZonedDateTime added = ZonedDateTime.now(ZoneId.of(ua));

    @Column(name = "normal_date")
    private String normal_date=added.format(DateTimeFormatter.ofPattern("dd/MM/YYYY - HH:mm"));

    @Column(name = "timestamp")
    private Long timestamp = System.currentTimeMillis()/1000;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getInitial_price() {
        return initial_price;
    }

    public void setInitial_price(Double initial_price) {
        this.initial_price = initial_price;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Long getYear() {
        return year;
    }

    public void setYear(Long year) {
        this.year = year;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public ZonedDateTime getAdded() {
        return added;
    }

    public void setAdded(ZonedDateTime added) {
        this.added = added;
    }

    public Boolean getSold() {
        return sold;
    }

    public void setSold(Boolean sold) {
        this.sold = sold;
    }

    public String getNormal_date() {
        return normal_date;
    }

    public void setNormal_date(String normal_date) {
        this.normal_date = normal_date;
    }

    public Long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Long timestamp) {
        this.timestamp = timestamp;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Items items = (Items) o;
        return Objects.equals(id, items.id) &&
                Objects.equals(name, items.name) &&
                Objects.equals(initial_price, items.initial_price) &&
                Objects.equals(price, items.price) &&
                Objects.equals(type, items.type) &&
                Objects.equals(year, items.year) &&
                Objects.equals(author, items.author) &&
                Objects.equals(link, items.link) &&
                Objects.equals(added, items.added);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, initial_price, price, type, year, author, link, added);
    }

    public Items() {
    }

    public void addPrice(Items items) {
            this.price +=10.0;
        }
}
