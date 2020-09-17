package com.it.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.it.entity.UserProfileEntity;

public interface UserProfileRepository extends JpaRepository<UserProfileEntity, String> {

}
