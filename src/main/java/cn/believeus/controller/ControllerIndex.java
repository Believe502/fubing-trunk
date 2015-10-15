package cn.believeus.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.believeus.model.Tbannar;
import cn.believeus.model.TbaseEntity;
import cn.believeus.service.IService;

/**
 * 首页面
 * */
@Controller
public class ControllerIndex {
	
	@Resource
	private IService mysqlService;

	@RequestMapping(value = "/index")
	public ModelAndView index() {
		ModelAndView modelView=new ModelAndView();
		//获取bannar图片
		List<?> bannarList = mysqlService.findObjectList(Tbannar.class);
		modelView.addObject("bannarList", bannarList);
		modelView.setViewName("/WEB-INF/front/index.jsp");
		return modelView;
	}
	@RequestMapping(value="/showuser")
	public @ResponseBody String showuser(String deviceid,String devicetype){
		 String result=deviceid+":"+devicetype;
		 return result;
	}
	@RequestMapping(value = "/goods-{id}")
	public ModelAndView list(@PathVariable String id){
		ModelAndView modelView=new ModelAndView();
		modelView.setViewName("/WEB-INF/front/list.jsp");
		return modelView;
		
	}
}
