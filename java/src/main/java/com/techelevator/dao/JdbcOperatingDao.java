package com.techelevator.dao;

import com.techelevator.model.Landmark;
import com.techelevator.model.Operating;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.time.LocalTime;

@Component
public class JdbcOperatingDao implements OperatingDao{
    JdbcTemplate jdbcTemplate = new JdbcTemplate();

    public JdbcOperatingDao(JdbcTemplate jdbcTemplate) {this.jdbcTemplate = jdbcTemplate;}
    @Override
    public List<Operating> getByLandmark(int id) {
        List<Operating> operatings = new ArrayList<>();
        String sql = "SELECT id, landmark_id, day_of_week, opening_time, closing_time, closed, varies FROM operating_hrs WHERE landmark_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
        while (results.next()) {
            operatings.add(mapRowToOperatings(results));
        }
        return operatings;
    }

    public Operating mapRowToOperatings(SqlRowSet result) {
        Operating operating = new Operating();
        operating.setId(result.getInt("id"));
        operating.setLandmark_id(result.getInt("landmark_id"));
        operating.setDay_of_week(result.getString("day_of_week"));
        operating.setOpening(result.getString("opening_time"));
        operating.setClosing(result.getString("closing_time"));
        operating.setClosed(result.getBoolean("closed"));
        operating.setVaries(result.getBoolean("varies"));

        return operating;
    }
}
