package com.techelevator.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class LandmarkIdDto {
    @JsonProperty("landmark-id")
    private int landmarkId;

    public int getLandmarkId() {
        return landmarkId;
    }
}