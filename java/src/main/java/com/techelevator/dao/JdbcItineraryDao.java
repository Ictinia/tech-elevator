package com.techelevator.dao;

import com.techelevator.model.Itinerary;
import com.techelevator.model.ItineraryDto;
import com.techelevator.model.Landmark;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcItineraryDao implements ItineraryDao {
    JdbcTemplate jdbcTemplate = new JdbcTemplate();

    public JdbcItineraryDao(JdbcTemplate jdbcTemplate) {this.jdbcTemplate = jdbcTemplate;}

    @Override
    public int getNextId() {
        return 0;
    }

    @Override
    public List<Itinerary> getUserItineraries(int userId) {
        final List<Itinerary> itineraries = new ArrayList<>();
        final String sql = "SELECT itinerary_id, user_id, name, date FROM itineraries WHERE user_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        while (results.next()) {
            itineraries.add(mapRowToItinerary(results));
        }
        return itineraries;
    }

    @Override
    public Itinerary get(int itineraryId, int userId) {
        String sql = "SELECT itinerary_id, user_id, name, date FROM itineraries WHERE itinerary_id = ? AND user_id = ?;";
        String landmarksSql = "SELECT landmarks.landmark_id, name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link, sequence_number\n" +
                "FROM landmarks\n" +
                "JOIN itinerary_details ON landmarks.landmark_id = itinerary_details.landmark_id \n" +
                "WHERE itin_id = ?\n" +
                "ORDER BY sequence_number ASC;";
        final SqlRowSet results = jdbcTemplate.queryForRowSet(sql, itineraryId, userId);
        if (!results.next()) {
            return null;
        }
        final Itinerary itinerary = this.mapRowToItinerary(results);

        final SqlRowSet landmarksRs = this.jdbcTemplate.queryForRowSet(landmarksSql, itineraryId);
        List<Landmark> landmarks = new ArrayList<>();
        while (landmarksRs.next()) {
            Landmark landmark = new Landmark();
            landmark.setId(landmarksRs.getInt("landmark_id"));
            landmark.setName(landmarksRs.getString("name"));
            landmark.setCategory(landmarksRs.getString("category"));
            landmark.setDescription(landmarksRs.getString("description"));
            landmark.setPhone(landmarksRs.getString("phone"));
            landmark.setAddress(landmarksRs.getString("address"));
            landmark.setThumbsUp(landmarksRs.getInt("thumbs_up"));
            landmark.setThumbsDown(landmarksRs.getInt("thumbs_down"));
            landmark.setApproved(landmarksRs.getBoolean("approved"));
            landmark.setHeroImg(landmarksRs.getString("hero_img"));
            landmark.setLatitude(landmarksRs.getBigDecimal("latitude"));
            landmark.setLongitude(landmarksRs.getBigDecimal("longitude"));
            landmark.setMapLink(landmarksRs.getString("map_link"));

            landmarks.add(landmark);
        }
        return itinerary;
    }

    @Override
    public void createItinerary(ItineraryDto itinerary, int userId) {
        String sql = "INSERT INTO itineraries (user_id, name, date) VALUES (?, ?, ?);";
        jdbcTemplate.update(sql, userId, itinerary.getName(), itinerary.getDate());
    }

    @Override
    public void update(int itineraryId, ItineraryDto itineraryDto, int userId) {
        String sql = "UPDATE itineraries SET name = ?, date = ? WHERE itinerary_id = ? AND user_id = ?;";
        jdbcTemplate.update(sql, itineraryDto.getName(), itineraryDto.getDate(), itineraryId, userId);
    }

    @Override
    public void delete(int itineraryId, int userId) {
        String sql = "DELETE FROM itineraries WHERE itinerary_id = ? AND user_id = ?;";
        jdbcTemplate.update(sql, itineraryId, userId);
    }

    @Override
    public void addDestination(int itineraryId, int landmarkId) {
        String sql = "INSERT INTO itinerary_details (itin_id, landmark_id, sequence_number) VALUES (?, ?, nextval('itinerary_sequence'));";
        jdbcTemplate.update(sql, itineraryId, landmarkId);
    }

    public Itinerary mapRowToItinerary(SqlRowSet result) {
        Itinerary itinerary = new Itinerary();
        itinerary.setId(result.getInt("itinerary_id"));
        itinerary.setUserId(result.getInt("user_id"));
        itinerary.setName(result.getString("name"));
        if (result.getDate("date").toLocalDate() != null) {
            itinerary.setDate(result.getDate("date").toLocalDate());
        }
        return itinerary;
    }
}
