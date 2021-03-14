package hy.ssm.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hy.ssm.dao.UserMapper;
import hy.ssm.pojo.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;//UserMapper 是接口
	
	public void addUser(User user) {		
		userMapper.insert(user);//调用接口的方法
	}	
	
	public int updateUser(User user) {
		return userMapper.update(user);
	}	
	
	public User getUser(User user) {
		return this.userMapper.getUser(user);
	}
	
	public User getUserInfo(User user) {
		return this.userMapper.getUserInfo(user);
	}
	
	public List<User> getUserList(){
		return this.userMapper.getUserList();
	}

	@Override
	public int getExistId(int id) {
		// TODO 自动生成的方法存根
		return this.userMapper.getExistId(id);
	}
}
