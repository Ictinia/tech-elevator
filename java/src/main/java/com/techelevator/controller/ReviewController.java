package com.techelevator.controller;


import com.techelevator.dao.ReviewDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.ItineraryDto;
import com.techelevator.model.LandmarkDto;
import com.techelevator.model.Review;
import com.techelevator.model.ReviewDto;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;


import java.security.Principal;
import java.util.List;

@CrossOrigin
@RestController
public class ReviewController {
    private ReviewDao reviewDao;
    private final UserDao userDao;

    public ReviewController(ReviewDao dao, UserDao userDao) {
        this.reviewDao = dao;
        this.userDao = userDao;
    }

    @GetMapping(path = "/landmarks/{id}/reviews")
    public List<Review> getReviews(@PathVariable int id) {
        return reviewDao.getReviewsByLandmarkId(id);
    }

    @PreAuthorize("isAuthenticated()")
    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping(path = "/landmarks/{id}/reviews")
    public void addReview(@PathVariable int id, @RequestBody ReviewDto reviewDto, Principal principal) {
        final int userId = userDao.findIdByUsername(principal.getName());
        reviewDao.addReview(id, reviewDto, userId);
    }
}




