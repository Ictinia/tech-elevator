package com.techelevator.controller;


import com.techelevator.dao.ReviewDao;
import com.techelevator.model.Review;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
public class ReviewController {
    private ReviewDao reviewDao;
    public ReviewController(ReviewDao dao){
        this.reviewDao = dao;
    }
    @GetMapping(path = "/landmarks/{id}/reviews")
    public List<Review> getReviews(@PathVariable int id) {
        return reviewDao.getReviewsByLandmarkId(id);
    }

}
