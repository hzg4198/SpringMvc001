package com.cuit.springmvc.service.Impl;

import com.cuit.springmvc.mapper.UserMapper;
import com.cuit.springmvc.pojo.User;
import com.cuit.springmvc.pojo.UserExample;
import com.cuit.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserserviceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	public int countByExample(UserExample example) {
		return userMapper.countByExample(example);
	}

	public boolean deleteByExample(UserExample example) {
		return userMapper.deleteByExample(example)==1;
	}

	public boolean deleteByPrimaryKey(Integer id) {
		return userMapper.deleteByPrimaryKey(id)==1;
	}

	public boolean insert(User record) {
		return userMapper.insert(record)==1;
	}

	public boolean insertSelective(User record) {
		return userMapper.insertSelective(record)==1;
	}

	public List<User> selectByExample(UserExample example) {
		return userMapper.selectByExample(example);
	}

	public User selectByPrimaryKey(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}

	public boolean updateByExampleSelective(User record, UserExample example) {
		return userMapper.updateByExampleSelective(record,example)==1;
	}

	public boolean updateByExample(User record, UserExample example) {
		return userMapper.updateByExample(record,example)==1;
	}

	public boolean updateByPrimaryKeySelective(User record) {
		return userMapper.updateByPrimaryKeySelective(record)==1;
	}

	public boolean updateByPrimaryKey(User record) {
		return userMapper.updateByPrimaryKey(record)==1;
	}
}
