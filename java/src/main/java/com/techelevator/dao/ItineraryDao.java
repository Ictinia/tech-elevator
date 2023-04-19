package com.techelevator.dao;

import com.techelevator.model.Itinerary;
import com.techelevator.model.ItineraryDto;
import com.techelevator.model.Landmark;

import java.util.List;

public interface ItineraryDao {
    int getNextId ();
    List<Itinerary> getUserItineraries (int userId);
    Itinerary get(int itineraryId, int userId);
    void createItinerary(ItineraryDto itinerary, int userId);
    void updateItineraryNameOrDate(int id, ItineraryDto itineraryDto, int userId);
    void delete(int itineraryId, int userId);

    void updateItinerary(int itineraryId, Itinerary itinerary, int userId);
}
