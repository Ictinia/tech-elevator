package com.techelevator.dao;

import com.techelevator.model.Itinerary;

import java.time.LocalDate;
import java.util.List;

public interface ItineraryDao {
    List<Itinerary> getUserItineraries (int userId);
    Itinerary get (int id);
    void create (Itinerary itinerary);
    void updateName (int id, String name);
    void updateDate (int id, LocalDate date);
    void delete (int id);
}
