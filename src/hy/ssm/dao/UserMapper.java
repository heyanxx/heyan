package hy.ssm.dao;

import java.util.List;
import java.util.Map;

import hy.ssm.pojo.User;

public interface UserMapper {
	//插入操作
	public int insert(User user);	
	
	//更新操作
	public int update(User user);
 
	//删除操作
	public int delete(User user);
	
	//验证用户密码，并返回单个用户
	public User getUser(User user);
	
	//查询单个用户
	public User getUserInfo(User user);
	//查询多个用户
	public List<User> getUserList();	
	
	public int getExistId(int id);
}
