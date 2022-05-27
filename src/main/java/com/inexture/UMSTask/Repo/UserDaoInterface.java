package com.inexture.UMSTask.Repo;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.inexture.UMSTask.Model.UserBean;


public interface UserDaoInterface extends JpaRepository<UserBean, Integer> {

	@Query("from UserBean where Email=?1")
	UserBean getUserEmail(String uemail);
	
//	UserBean findDistinctByEmail(String uemail);

	@Query("from UserBean")
	List<UserBean> getAllUser();

	@Query("select Userid from UserBean where Email=?1")
	int getUserid(String email);
	
//	int findByUserid(String email);
	
	
}
