package com.inexture.UMSTask.Service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inexture.UMSTask.Model.AssignBean;
import com.inexture.UMSTask.Model.UserBean;
import com.inexture.UMSTask.Repo.AdminDaoInterface;
import com.inexture.UMSTask.Repo.UserDaoInterface;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private UserDaoInterface userDao;

	@Autowired
	private AdminDaoInterface adminDao;

	@Override
	public List<AssignBean> checkUserType(UserBean uBean) {

		UserBean userBean = userDao.getUserEmail(uBean.getEmail());
		List<AssignBean> usertype = adminDao.userType(userBean.getUserid());

		return usertype;
	}

}
