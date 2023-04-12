package com.techelevator.model;


public class OperatingDto {
    private int id;
    private int landmark_id;
    private String day_of_week;
    private String opening;
    private String closing;
    private boolean closed;
    private boolean varies;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLandmark_id() {
        return landmark_id;
    }

    public void setLandmark_id(int landmark_id) {
        this.landmark_id = landmark_id;
    }

    public String getDay_of_week() {
        return day_of_week;
    }

    public void setDay_of_week(String day_of_week) {
        this.day_of_week = day_of_week;
    }

    public String getOpening() {
        return opening;
    }

    public void setOpening(String opening) {
        this.opening = opening;
    }

    public String getClosing() {
        return closing;
    }

    public void setClosing(String closing) {
        this.closing = closing;
    }

    public boolean isClosed() {
        return closed;
    }

    public void setClosed(boolean closed) {
        this.closed = closed;
    }

    public boolean isVaries() {
        return varies;
    }

    public void setVaries(boolean varies) {
        this.varies = varies;
    }

    @Override
    public String toString() {
        return "OperatingDto{" +
                "id=" + id +
                ", landmark_id=" + landmark_id +
                ", day_of_week='" + day_of_week + '\'' +
                ", opening=" + opening +
                ", closing=" + closing +
                ", closed=" + closed +
                ", varies=" + varies +
                '}';
    }
}
