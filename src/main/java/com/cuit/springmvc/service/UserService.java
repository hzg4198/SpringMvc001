package com.cuit.springmvc.service;

import com.cuit.springmvc.pojo.User;
import com.cuit.springmvc.pojo.UserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
	int countByExample(UserExample example);

	boolean deleteByExample(UserExample example);

	boolean deleteByPrimaryKey(Integer id);

	boolean insert(User record);

	boolean insertSelective(User record);

	List<User> selectByExample(UserExample example);

	User selectByPrimaryKey(Integer id);

	boolean updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

	boolean updateByExample(@Param("record") User record, @Param("example") UserExample example);

	boolean updateByPrimaryKeySelective(User record);

	boolean updateByPrimaryKey(User record);
}
