package com.techelevator.controller;

import com.techelevator.dao.LandmarkDao;
import com.techelevator.dao.OperatingDao;
import com.techelevator.model.Landmark;
import com.techelevator.model.LandmarkDto;
import com.techelevator.model.Operating;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
public class LandmarkController {
    private LandmarkDao landmarkDao;
    private OperatingDao operatingDao;

    public LandmarkController(LandmarkDao dao, OperatingDao operatingDao) {
        this.landmarkDao = dao;
        this.operatingDao = operatingDao;
    }

    @GetMapping(path = "/landmarks/{id}/hours")
    public List<Operating> getOperating(@PathVariable int id) {
        return operatingDao.getByLandmark(id);
    }
    @GetMapping(path = "/landmarks")
    public List<Landmark> getLandmarks(@RequestParam(required = false) String filter) {
        if (filter != null) {
            return landmarkDao.filterLandmarks(filter);
        }
        else {
            return landmarkDao.getAll();
        }
    }

    @GetMapping(path = "/landmarks/{id}")
    public Landmark get(@PathVariable int id) {
        return landmarkDao.get(id);
    }

    @GetMapping(path = "/categories")
    public List<String> getAllCategories() {
        return landmarkDao.getCategories();
    }

    @GetMapping(path = "/{category}")
    public List<Landmark> getByCategory(@PathVariable String category) {
        return landmarkDao.getLandmarkInCategory(category);
    }

    @PostMapping(path = "/landmarks")
    public void create(@RequestBody LandmarkDto landmark) {
        landmarkDao.create(landmark);
    }

    @PutMapping(path = "/landmarks/{id}")
    public void approve(@PathVariable int id) {
        landmarkDao.approve(id);
    }

    @DeleteMapping(path = "/landmarks/{id}")
    public void delete(@PathVariable int id) {
        landmarkDao.delete(id);
    }


}

