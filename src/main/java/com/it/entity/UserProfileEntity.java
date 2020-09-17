package com.it.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "tb_user_profile")
public class UserProfileEntity implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	private String username;
	private String firstname;
	private String lastname;
	private String sex;
	private String birthday;
	private String activityFlag;
	private String createdDate;
	private String createdBy;
	private String updatedDate;
	private String updatedBy;
}
