package com.techelevator.model;

import java.time.LocalDate;

public class ItineraryDto {
//    private int id;
//    private int userId;
    private String name;
    private LocalDate date;

//    public int getId() {
//        return id;
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public int getUserId() {
//        return userId;
//    }
//
//    public void setUserId(int userId) {
//        this.userId = userId;
//    }

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

//    @Override
//    public String toString() {
//        return "ItineraryDto{" +
//                "id=" + id +
//                ", userId=" + userId +
//                ", name='" + name + '\'' +
//                ", date=" + date +
//                '}';
//    }
}
