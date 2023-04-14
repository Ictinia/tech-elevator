package com.techelevator.dao;

import com.techelevator.model.Itinerary;
import com.techelevator.model.ItineraryDto;
import com.techelevator.model.Landmark;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcItineraryDao implements ItineraryDao {
    JdbcTemplate jdbcTemplate = new JdbcTemplate();

    public JdbcItineraryDao(JdbcTemplate jdbcTemplate) {this.jdbcTemplate = jdbcTemplate;}

    @Override
    public List<Itinerary> getUserItineraries(int userId) {
        List<Itinerary> itineraries = new ArrayList<>();
        String sql = "SELECT itinerary_id, user_id, name, date FROM itineraries;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            itineraries.add(mapRowToItinerary(results));
        }
        return itineraries;
    }

    @Override
    public Itinerary get(int id) {
        Itinerary itinerary = new Itinerary();
        String sql = "SELECT itinerary_id, user_id, name, date FROM itineraries WHERE itinerary_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            itinerary = mapRowToItinerary(results);
        }
        return itinerary;
    }

    @Override
    public void create(Itinerary itinerary) {
        String sql = "INSERT INTO itineraries (user_id, name, date) VALUES (?, ?, ?);";
        jdbcTemplate.update(sql, itinerary.getUserId(), itinerary.getName(), itinerary.getDate());
    }

    @Override
    public void update(int id, ItineraryDto itineraryDto) {
        String sql = "UPDATE itineraries SET name = ?, date = ? WHERE itinerary_id = ?;";
        jdbcTemplate.update(sql, itineraryDto.getName(), itineraryDto.getDate(), id);
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM itineraries WHERE itinerary_id = ?;";
        jdbcTemplate.update(sql, id);
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
