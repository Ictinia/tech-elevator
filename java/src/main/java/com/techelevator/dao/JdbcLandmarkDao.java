package com.techelevator.dao;

import com.techelevator.model.Landmark;
import com.techelevator.model.LandmarkDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcLandmarkDao implements LandmarkDao {
    JdbcTemplate jdbcTemplate = new JdbcTemplate();

    public JdbcLandmarkDao(JdbcTemplate jdbcTemplate) {this.jdbcTemplate = jdbcTemplate;}

    @Override
    public List<Landmark> getAll() {
        List<Landmark> landmarks = new ArrayList<>();
        String sql = "SELECT landmark_id, name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link FROM landmarks;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            landmarks.add(mapRowToLandmarks(results));
        }
        return landmarks;
    }

    @Override
    public Landmark get(int id) {
        Landmark landmark = null;
        String sql = "SELECT landmark_id, name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link FROM landmarks WHERE landmark_id = ?;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, id);
        if (result.next()) {
            landmark = mapRowToLandmarks(result);
        }
        return landmark;
    }

    @Override
    public List<String> getCategories() {
        List<String> landmarks = new ArrayList<>();
        String sql = "SELECT DISTINCT category FROM landmarks ORDER BY category ASC;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            String str = results.getString("category");
            landmarks.add(str);
        }
        return landmarks;
    }

    @Override
    public List<Landmark> getLandmarkInCategory(String category) {
        List<Landmark> landmarks = new ArrayList<>();
        String sql = "SELECT landmark_id, name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link FROM landmarks WHERE category = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, category);
        while (results.next()) {
            landmarks.add(mapRowToLandmarks(results));
        }
        return landmarks;
    }

    @Override
    public void create(LandmarkDto landmark) {
        String sql = "INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        jdbcTemplate.update(sql, landmark.getName(), landmark.getCategory(), landmark.getDescription(), landmark.getPhone(), landmark.getAddress(), 0, 0, false, landmark.getHeroImg(), landmark.getLatitude(), landmark.getLongitude(), landmark.getMapLink());
    }

    @Override
    public void approve(int id) {
        String sql = "UPDATE landmarks SET approved = true WHERE landmark_id = ?;";
        jdbcTemplate.update(sql, id);
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM landmarks WHERE landmark_id = ?;";
        jdbcTemplate.update(sql, id);
    }

    public Landmark mapRowToLandmarks(SqlRowSet result) {
        Landmark landmark = new Landmark();
        landmark.setId(result.getInt("landmark_id"));
        landmark.setName(result.getString("name"));
        landmark.setCategory(result.getString("category"));
        landmark.setDescription(result.getString("description"));
        landmark.setPhone(result.getString("phone"));
        landmark.setAddress(result.getString("address"));
        landmark.setThumbsUp(result.getInt("thumbs_up"));
        landmark.setThumbsDown(result.getInt("thumbs_down"));
        landmark.setApproved(result.getBoolean("approved"));
        landmark.setHeroImg(result.getString("hero_img"));
        landmark.setLatitude(result.getBigDecimal("latitude"));
        landmark.setLongitude(result.getBigDecimal("longitude"));
        landmark.setMapLink(result.getString("map_link"));

        return landmark;
    }
}
