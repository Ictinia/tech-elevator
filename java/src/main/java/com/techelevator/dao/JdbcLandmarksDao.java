package com.techelevator.dao;

import com.techelevator.model.Landmarks;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcLandmarksDao implements LandmarksDao{
    JdbcTemplate jdbcTemplate = new JdbcTemplate();

    public JdbcLandmarksDao(JdbcTemplate jdbcTemplate) {this.jdbcTemplate = jdbcTemplate;}

    @Override
    public List<Landmarks> getAll() {
        List<Landmarks> landmarks = new ArrayList<>();
        String sql = "SELECT landmark_id, name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img FROM landmarks;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            landmarks.add(mapRowToLandmarks(results));
        }
        return landmarks;
    }

    @Override
    public Landmarks get(int id) {
        Landmarks landmarks = null;
        String sql = "SELECT landmark_id, name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img FROM landmarks WHERE landmark_id = ?;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, id);
        if (result.next()) {
            landmarks = mapRowToLandmarks(result);
        }
        return landmarks;
    }

    @Override
    public List<Landmarks> getCategories() {
        List<Landmarks> landmarks = new ArrayList<>();
        String sql = "SELECT DISTINCT category FROM landmarks;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            landmarks.add(mapRowToLandmarks(results));
        }
        return landmarks;
    }

    @Override
    public void create(Landmarks landmark) {
        String sql = "INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img) VALUES (?, ?, ?, ?, ?, 0, 0, ?, ?);";
        jdbcTemplate.update(sql);
    }

    @Override
    public void delete(int id) {

    }

    public Landmarks mapRowToLandmarks(SqlRowSet result) {
        Landmarks landmarks = new Landmarks();
        landmarks.setId(result.getInt("landmark_id"));
        landmarks.setName(result.getString("name"));
        landmarks.setCategory(result.getString("category"));
        landmarks.setDescription(result.getString("description"));
        landmarks.setPhone(result.getString("phone"));
        landmarks.setAddress(result.getString("address"));
        landmarks.setThumbsUp(result.getInt("thumbs_up"));
        landmarks.setThumbsDown(result.getInt("thumbs_down"));
        landmarks.setApproved(result.getBoolean("approved"));
        landmarks.setHeroImg(result.getString("hero_img"));
        return landmarks;
    }
}
