package com.techelevator.controller;

import com.techelevator.dao.ItineraryDao;
import com.techelevator.dao.LandmarkDao;
import com.techelevator.dao.OperatingDao;
import com.techelevator.model.Itinerary;
import com.techelevator.model.ItineraryDto;
import com.techelevator.model.LandmarkDto;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
public class ItineraryController {
    private ItineraryDao itineraryDao;

    public ItineraryController(ItineraryDao dao) {
        this.itineraryDao = dao;
    }

    @GetMapping(path = "/itinerary")
    public List<Itinerary> getUserItineraries (@PathVariable int id) {
        return itineraryDao.getUserItineraries(id);
    }

    @GetMapping(path = "/itinerary/{id}")
    public Itinerary get (@PathVariable int id) {
        return itineraryDao.get(id);
    }

    @PostMapping(path = "/itinerary")
    public void create(@RequestBody Itinerary itinerary) {
        itineraryDao.create(itinerary);
    }

    @PutMapping(path = "/itinerary/{id}")
    public void update(@PathVariable int id, @RequestBody ItineraryDto itinerary) {
        itineraryDao.update(id, itinerary);
    }

    @DeleteMapping(path = "/itinerary/{id}")
    public void delete(@PathVariable int id) {
        itineraryDao.delete(id);
    }
}
