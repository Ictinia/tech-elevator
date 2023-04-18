package com.techelevator.dao;

import com.techelevator.model.Itinerary;
import com.techelevator.model.ItineraryDto;

import java.util.List;

public interface ItineraryDao {
    int getNextId ();
    List<Itinerary> getUserItineraries (int userId);
    Itinerary get(int itineraryId, int userId);
    void createItinerary(ItineraryDto itinerary, int userId);
    void update(int id, ItineraryDto itineraryDto, int userId);
    void delete(int itineraryId, int userId);

    void addDestination(int itineraryId, int landmarkId);
}
