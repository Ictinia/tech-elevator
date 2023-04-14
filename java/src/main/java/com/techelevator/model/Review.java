package com.techelevator.model;

public class Review {
    private int reviewId;
    private int landmarkId;
    private int userId;
    private String title;
    private String description;

    public Review() {
    }

    public Review(int reviewId, int landmarkId, int userId, String title, String description) {
        this.reviewId = reviewId;
        this.landmarkId = landmarkId;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

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
}
