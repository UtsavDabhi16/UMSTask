package com.inexture.UMSTask.Repo;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.inexture.UMSTask.Model.AssignBean;



public interface AdminDaoInterface extends JpaRepository<AssignBean, Integer>{

	@Query("from AssignBean where user_Userid=?1")
	List<AssignBean> userType(Integer i);

}
