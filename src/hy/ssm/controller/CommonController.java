package hy.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class CommonController {
	@RequestMapping(value = "/about")
	public String about(Model model) {//关于我们
		return "/about/about";
	}		

}
