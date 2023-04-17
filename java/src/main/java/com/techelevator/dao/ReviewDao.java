package com.techelevator.dao;

import com.techelevator.model.Itinerary;
import com.techelevator.model.ItineraryDto;
import com.techelevator.model.Review;
import com.techelevator.model.ReviewDto;

import java.util.List;

public interface ReviewDao {
    List<Review> getReviewsByLandmarkId(int id);
    Review addReview(Review review);
}
