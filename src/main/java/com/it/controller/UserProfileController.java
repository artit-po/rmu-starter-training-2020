package com.it.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.it.dao.UserProfileRepository;
import com.it.entity.UserProfileEntity;

@RestController
@RequestMapping("/user-profile")
public class UserProfileController {
	
	private static final Logger LOGGER = LogManager.getLogger(UserProfileController.class);

	@Autowired
	private UserProfileRepository userProfileRepository;

	@GetMapping
	public ResponseEntity<List<UserProfileEntity>> getUserProfileAll() {
		LOGGER.info("getUserProfileAll ...");
		return new ResponseEntity<>(userProfileRepository.findAll(), HttpStatus.OK);
	}

}
