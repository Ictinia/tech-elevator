package com.techelevator.controller;


import com.techelevator.dao.ReviewDao;
import com.techelevator.model.ItineraryDto;
import com.techelevator.model.LandmarkDto;
import com.techelevator.model.Review;
import com.techelevator.model.ReviewDto;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;


import java.util.List;

@CrossOrigin
@RestController
public class ReviewController {
    private ReviewDao reviewDao;

    public ReviewController(ReviewDao dao) {
        this.reviewDao = dao;
    }

    @GetMapping(path = "/landmarks/{id}/reviews")
    public List<Review> getReviews(@PathVariable int id) {
        return reviewDao.getReviewsByLandmarkId(id);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping(path = "/landmarks/{id}/reviews")
    public Review addReview(@PathVariable int id, @RequestBody ReviewDto reviewDto) {
        Review review = new Review(
                0,
                id,
                reviewDto.getUserId(),
                reviewDto.getTitle(),
                reviewDto.getDescription()
        );
        return reviewDao.addReview(review);
    }
}




