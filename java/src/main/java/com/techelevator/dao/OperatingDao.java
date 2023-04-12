package com.techelevator.dao;

import com.techelevator.model.Operating;
import com.techelevator.model.OperatingDto;

import java.util.List;

public interface OperatingDao {
    List<Operating> getByLandmark (int id);
}
