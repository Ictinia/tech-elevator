package com.techelevator.model;

import java.math.BigDecimal;

public class Landmark {
    private int id;
    private String name;
    private String category;
    private String description;
    private String phone;
    private String address;
    private int thumbsUp;
    private int thumbsDown;
    private boolean approved;
    private String heroImg;
    private BigDecimal latitude;
    private BigDecimal longitude;
    private String mapLink;

    public Landmark() {}

    public Landmark(int id, String name, String category, String description, String phone, String address, int thumbsUp, int thumbsDown, boolean approved, String heroImg, BigDecimal latitude, BigDecimal longitude, String mapLink) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.description = description;
        this.phone = phone;
        this.address = address;
        this.thumbsUp = thumbsUp;
        this.thumbsDown = thumbsDown;
        this.approved = approved;
        this.heroImg = heroImg;
        this.latitude = latitude;
        this.longitude = longitude;
        this.mapLink = mapLink;
    }

    public String getMapLink() {
        return mapLink;
    }

    public void setMapLink(String mapLink) {
        this.mapLink = mapLink;
    }

    public BigDecimal getLatitude() {
        return latitude;
    }

    public void setLatitude(BigDecimal latitude) {
        this.latitude = latitude;
    }

    public BigDecimal getLongitude() {
        return longitude;
    }

    public void setLongitude(BigDecimal longitude) {
        this.longitude = longitude;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getThumbsUp() {
        return thumbsUp;
    }

    public void setThumbsUp(int thumbsUp) {
        this.thumbsUp = thumbsUp;
    }

    public int getThumbsDown() {
        return thumbsDown;
    }

    public void setThumbsDown(int thumbsDown) {
        this.thumbsDown = thumbsDown;
    }

    public boolean isApproved() {
        return approved;
    }

    public void setApproved(boolean approved) {
        this.approved = approved;
    }

    public String getHeroImg() {
        return heroImg;
    }

    public void setHeroImg(String heroImg) {
        this.heroImg = heroImg;
    }
}
