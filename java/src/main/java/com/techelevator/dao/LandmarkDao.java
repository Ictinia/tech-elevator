package com.techelevator.dao;

import com.techelevator.model.Landmark;
import com.techelevator.model.LandmarkDto;

import java.util.List;

public interface LandmarkDao {
    List<Landmark> getAll();
    Landmark get (int id);
    List<String> getCategories ();
    List<Landmark> getLandmarkInCategory (String category);
    void create (LandmarkDto landmark);
    void delete (int id);
    void approve (int id);
}
