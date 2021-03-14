package hy.ssm.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import hy.ssm.pojo.User;

public interface UserService {
	public void addUser(User user);
	public int updateUser(User user);
	public User getUser(User user);
	public User getUserInfo(User user);
	public List<User> getUserList();
	public int getExistId(int id);
}

