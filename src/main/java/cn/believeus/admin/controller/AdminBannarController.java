package cn.believeus.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import mydfs.storage.server.MydfsTrackerServer;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Assert;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import cn.believeus.model.Tbannar;
import cn.believeus.service.IService;

@Controller
public class AdminBannarController {
	private static final Log log=LogFactory.getLog(AdminBannarController.class);
	
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	@Resource
	private IService mysqlService;

	@RequestMapping(value = "/admin/bannar/addView")
	public ModelAndView addView() {
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("/WEB-INF/back/bannar/add.jsp");
		return modelView;
	}

	@RequestMapping(value="/admin/bannar/save")
	public String save(Tbannar bannar,HttpServletRequest request) {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		String storepath = "";
		Map<String, MultipartFile> files = multipartRequest.getFileMap();
		for (MultipartFile file : files.values()) {
			InputStream inputStream;
			try {
				inputStream = file.getInputStream();
				if(inputStream.available()==0){
					break;
				}
				Assert.assertNotNull("upload file InputStream is null", inputStream);
				String originName=file.getOriginalFilename();
				String extention = originName.substring(originName.lastIndexOf(".") + 1);
				log.debug("upload file stuffix:"+extention);
				storepath += mydfsTrackerServer.upload(inputStream, extention);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		bannar.setImgpath(storepath);
		mysqlService.saveOrUpdate(bannar);
		return "redirect:/admin/bannar/list.jhtml";
	}

	@RequestMapping(value = "/admin/bannar/list")
	public ModelAndView list() {
		List<?> bannarList = mysqlService.findObjectList(Tbannar.class);
		String view="/WEB-INF/back/bannar/list.jsp";
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName(view);
		modelView.addObject("bannarList",bannarList);
		return modelView;
	}

}
