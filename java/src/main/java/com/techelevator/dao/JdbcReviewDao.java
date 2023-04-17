package com.techelevator.dao;

import com.techelevator.model.Review;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import java.util.List;
import java.util.ArrayList;

@Component
public class JdbcReviewDao implements ReviewDao {
JdbcTemplate jdbcTemplate = new JdbcTemplate();

public JdbcReviewDao(JdbcTemplate jdbcTemplate) {this.jdbcTemplate = jdbcTemplate;}


    @Override
    public List<Review> getReviewsByLandmarkId(int id) {
        List<Review> reviews = new ArrayList<>();
        String sql = "SELECT review_id, landmark_id, user_id, title, description FROM reviews WHERE landmark_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
        while (results.next()) {
            Review review = new Review();
            review.setReviewId(results.getInt("review_id"));
            review.setLandmarkId(results.getInt("landmark_id"));
            review.setUserId(results.getInt("user_id"));
            review.setTitle(results.getString("title"));
            review.setDescription(results.getString("description"));
            reviews.add(review);
        }
        return reviews;


    }

    @Override
    public Review addReview(Review review) {
        String sql = "INSERT INTO reviews (landmark_id, user_id, title, description) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, review.getLandmarkId(), review.getUserId(), review.getTitle(), review.getDescription());

        sql = "SELECT review_id, landmark_id, user_id, title, description FROM reviews WHERE review_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, review.getReviewId());
        if (results.next()) {
            review.setLandmarkId(results.getInt("landmark_id"));
            review.setUserId(results.getInt("user_id"));
            review.setTitle(results.getString("title"));
            review.setDescription(results.getString("description"));
        }

        return review;
    }
}






