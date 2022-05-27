package com.inexture.UMSTask.Service;

import java.util.List;

import com.inexture.UMSTask.Model.AssignBean;
import com.inexture.UMSTask.Model.UserBean;


public interface AdminService {

	List<AssignBean> checkUserType(UserBean uBean);

}