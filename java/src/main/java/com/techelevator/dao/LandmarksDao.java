package com.techelevator.dao;

import com.techelevator.model.Landmarks;

import java.util.List;

public interface LandmarksDao {
    List<Landmarks> getAll();
    Landmarks get (int id);
    List<Landmarks> getCategories ();
    void create (Landmarks landmark);
    void delete (int id);
}
