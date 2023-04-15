package com.techelevator.dao;

import com.techelevator.model.Itinerary;
import com.techelevator.model.ItineraryDto;
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
        List<Itinerary> itineraries = new ArrayList<>();
        String sql = "SELECT itinerary_id, user_id, name, date FROM itineraries WHERE user_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        while (results.next()) {
            itineraries.add(mapRowToItinerary(results));
        }
        return itineraries;
    }

    @Override
    public Itinerary get(int itineraryId, int userId) {
        Itinerary itinerary = null;
        String sql = "SELECT itinerary_id, user_id, name, date FROM itineraries WHERE itinerary_id = ? AND user_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, itineraryId, userId);
        if (results.next()) {
            itinerary = mapRowToItinerary(results);
        }
        return itinerary;
    }

    @Override
    public void create(ItineraryDto itinerary, int userId) {
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
