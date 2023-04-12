package com.techelevator.model;

public class Landmarks {
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

    public Landmarks() {}
    public Landmarks(int id, String name, String category, String description, String phone, String address, int thumbsUp, int thumbsDown, boolean approved, String heroImg) {
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
