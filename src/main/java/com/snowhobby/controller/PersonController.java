package com.snowhobby.controller;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.snowhobby.db.entity.Person;
import com.snowhobby.db.entity.ResultVO;
import com.snowhobby.db.entity.ReturnEntity;
import com.snowhobby.db.entity.UploadFileVO;
import com.snowhobby.db.entity.User;
import com.snowhobby.service.PersonService;

@Controller
@RequestMapping("/person")
public class PersonController {

	@Autowired
	private PersonService personService;

	@RequestMapping("/toPersonal.do")
	public String toPersonal() {
		return "information";
	}

	@RequestMapping("/load.do")
	@ResponseBody
	public ReturnEntity load(HttpServletRequest request) {
		ReturnEntity result = new ReturnEntity();
		User user = (User) request.getSession().getAttribute("user");
		Person person = personService.findByUid(user.getUid());
		result.setMsg(person.getImagepath());
		result.setObj(person);
		return result;
	}

	// 上传文件
	@RequestMapping(value = "/uploadFile.do")
	@ResponseBody
	public ResultVO uploadFile(@Param("file") MultipartFile file,
			HttpServletRequest request) throws IOException {
		// 本地使用,上传位置
		String rootPath = request.getServletContext().getRealPath("/")
				+ "/images/personal/";
		// String rootPath ="/www/uploads/";
		// 文件的完整名称,如spring.jpeg
		String filename = file.getOriginalFilename();
		// 文件名,如spring
		String name = filename.substring(0, filename.indexOf("."));
		// 文件后缀,如.jpeg
		String suffix = filename.substring(filename.lastIndexOf("."));
		// 创建年月文件夹
		Calendar date = Calendar.getInstance();
		File dateDirs = new File(date.get(Calendar.YEAR) + File.separator
				+ (date.get(Calendar.MONTH) + 1));
		// 目标文件
		File descFile = new File(rootPath + File.separator + dateDirs
				+ File.separator + filename);

		int i = 1;
		// 若文件存在重命名
		String newFilename = filename;
		while (descFile.exists()) {
			newFilename = name + "(" + i + ")" + suffix;
			descFile = new File(rootPath + File.separator + dateDirs
					+ File.separator + newFilename);
			i++;
		}
		// 判断目标文件所在的目录是否存在
		if (!descFile.getParentFile().exists()) {
			// 如果目标文件所在的目录不存在，则创建父目录
			descFile.getParentFile().mkdirs();
		}
		// 将内存中的数据写入磁盘
		file.transferTo(descFile);
		// 完整的url
		String url = "images/personal/" + dateDirs + "/" + newFilename;
		ResultVO resultVO = new ResultVO();
		resultVO.setCode(0);
		resultVO.setMsg("成功");
		UploadFileVO uploadFileVO = new UploadFileVO();
		uploadFileVO.setUrl(url);
		uploadFileVO.setTitle(filename);
		resultVO.setData(uploadFileVO);
		return resultVO;
	}

	@RequestMapping("/saveInformation.do")
	@ResponseBody
	public ReturnEntity saveInformation(Person p, HttpServletRequest request) {
		ReturnEntity result = new ReturnEntity();
		try {
			User user = (User) request.getSession().getAttribute("user");
			Person person = personService.findByUid(user.getUid());
			p.setPid(person.getPid());
			p.setUid(person.getUid());
			personService.updateByPid(p);
			result.setMsg("保存成功");
			result.setObj(p);
			result.setStatus("200");
		} catch (Exception e) {
			// TODO: handle exception
			result.setMsg("保存失败");
			result.setStatus("500");
		}
		return result;
	}
}
