package hy.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.druid.support.logging.Log;

import hy.ssm.pojo.User;
import hy.ssm.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
 
	@Autowired
	UserService userService;
	
	Logger log =Logger.getLogger(UserController.class);
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/validateUser")
	public String login(@Validated User user,BindingResult userBindingResult,HttpSession session,Model model) {	
		 if(userBindingResult.hasErrors()){
			 model.addAttribute("message", "出错了");
			 return "login";
	        }
		user = userService.getUser(user);//验证用户密码	
		if(user == null) {
			return "login";
		}else {			
			session.setAttribute("user", user);			
			return "welcome";		
	  }
	}
 
	
	@RequestMapping("/regUser")
	public String regUser() {
		return "regUser";
	}
	
	@RequestMapping("/addUser")
	public String addUser(User user) {//新增用户
		try {
		this.userService.addUser(user);
		}catch (Exception e) {
			// TODO: handle exception
			return "error";
		}
		return "login";
	}	
	
	@RequestMapping("/getUserInfo")
	String getUserInfo(User user,Model model) {
	
	user = this.userService.getUserInfo(user);
	model.addAttribute("getuser",user);
		 
		return "userInfo";
	}
	
	@RequestMapping("/updateUser")
	String updateUser(User user,Model model) {
		this.userService.updateUser(user);
		model.addAttribute("getuser",user);
		return "userInfo";
	}
	
	
	@RequestMapping(value = "/userlist")
	public String listUser(Model model) {//查看用户列表
		List<User> list = this.userService.getUserList();
		model.addAttribute("userList",list);
		return "userList";
	}		
	
	@RequestMapping(value = "/getId")
	public String getId(Model model) {//检查ID是否存在
		//生成随机数
		Random random=new Random();
		int rid=random.nextInt(999999)+10000;	
		int count = this.userService.getExistId(rid);
		while (count!=0) {
			log.info("获取到ID重复，重新获取>>>>>>"+rid);
			rid=random.nextInt(999999)+10000;	
			count = this.userService.getExistId(rid);
		}
		log.info("获取到ID成功>>>>>>"+rid);
		model.addAttribute("getIdResult",rid);
		return "regUser";
	}	
 
	
 
}
