package cn.believeus.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import cn.believeus.service.IService;

/**
 * 首页面
 * */
@Controller
public class ControllerLogin {
	
	@Resource
	private IService mysqlService;

	@RequestMapping(value = "/login")
	public ModelAndView index() {
		ModelAndView modelView=new ModelAndView();
		modelView.setViewName("/WEB-INF/front/login.jsp");
		return modelView;
	}
	
	
}
