package com.cakeshop.dao1;

import com.cakeshop.model.User;

public interface AdminDao {

	public  User validateAdmin (String emailId,String password);
}
