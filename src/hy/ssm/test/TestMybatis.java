package hy.ssm.test;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import hy.ssm.pojo.User;
import hy.ssm.service.UserService;

public class TestMybatis extends Junit4Test{
	 
	@Autowired
	private UserService userService;	
 
	@Test
	@Transactional
	@Rollback(false)//防止事务自动回滚
	public void test() {
		testUser();
	}
	
	private void testUser() {
		//add
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("id", "110");
		map.put("username", "jerry");
		map.put("password", "sl311");
		map.put("name", "Jerry bruce");
		userService.addUser(map);	
		
		User user = new User();
		user.setUserName("jerry");//userName, password 作为查询条件
		user.setPassword("sl311");
		user = this.userService.getUser(user);
		System.out.println(user.getName());		
	}
}
