package com.techelevator.model;

public class ReviewDto {
    private int reviewId;
    private int landmarkId;
    private int userId;
    private String title;
    private String description;


    public int getReviewId() {
        return reviewId;
    }

    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }

    public int getLandmarkId() {
        return landmarkId;
    }

    public void setLandmarkId(int landmarkId) {
        this.landmarkId = landmarkId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

 /*   @Override
    public String toString() {
        return "ReviewDto{" +
                "reviewid=" + reviewId +
                "landmarkid=" + landmarkId +
                ", userId=" + userId +
                ", name='" + title + '\'' +
                ", date=" + description +
                '}';*/


    }

