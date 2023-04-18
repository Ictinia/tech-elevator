package com.techelevator.model;


import java.time.LocalDate;
import java.util.List;

public class Itinerary {
    private int id;
    private int userId;
    private String name;
    private LocalDate date;
    private List<Landmark> landmarks;

    public Itinerary() {};
    public Itinerary(int id, int userId, String name, LocalDate date) {
        this.id = id;
        this.userId = userId;
        this.name = name;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }
}
