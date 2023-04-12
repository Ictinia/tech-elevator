package com.techelevator.controller;

import com.techelevator.dao.LandmarkDao;
import com.techelevator.model.Landmark;
import com.techelevator.model.LandmarkDto;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
public class LandmarkController {
    private LandmarkDao landmarkDao;

    public LandmarkController(LandmarkDao dao) {
        this.landmarkDao = dao;
    }

    @GetMapping(path = "/landmarks")
    public List<Landmark> getAll() {
        return landmarkDao.getAll();
    }

    @GetMapping(path = "/landmarks/{id}")
    public Landmark get(@PathVariable int id) {
        return landmarkDao.get(id);
    }

    @GetMapping(path = "/categories")
    public List<Landmark> getAllCategories() {
        return landmarkDao.getCategories();
    }

    @GetMapping(path = "/{category}")
    public List<Landmark> getByCategory(@RequestParam String category) {
        return landmarkDao.getLandmarkInCategory(category);
    }

    @PostMapping(path = "/landmarks")
    public void create(@RequestBody LandmarkDto landmark) {
        landmarkDao.create(landmark);
    }

    @PutMapping(path = "/landmarks")
    public void approve(@PathVariable int id) {
        landmarkDao.approve(id);
    }

    @DeleteMapping(path = "/landmarks")
    public void delete(@PathVariable int id) {
        landmarkDao.delete(id);
    }


}

