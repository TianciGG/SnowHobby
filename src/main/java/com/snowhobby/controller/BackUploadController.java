package com.snowhobby.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.snowhobby.db.entity.Attenchment;
import com.snowhobby.service.UploadService;

@Controller
@RequestMapping("/logic")
public class BackUploadController {
	@Autowired
	private UploadService uploadService;

	// 个人中心页面，上传按钮所造成的请求
	@RequestMapping(value = "/myUpload.do")
	public void upload(
			@RequestParam(value = "devicePicName", required = false) MultipartFile file,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		request.setCharacterEncoding("UTF-8");
		String deviceId = request.getParameter("deviceId");
		System.out
				.println("-----------------------------------------------------");
		System.out.println(deviceId);
		String tAttid = request.getParameter("mytAttid");
		System.out
				.println("-----------------------------------------------------");
		System.out.println(tAttid);
		String attType = request.getParameter("attType");
		System.out
				.println("-----------------------------------------------------");
		System.out.println(attType);
		String savePath = request.getSession().getServletContext()
				.getRealPath("uploadFile")
				+ File.separator;
		System.out
				.println("-----------------------------------------------------");
		System.out.println(savePath);
		String fileURL = request.getContextPath() + "/uploadFile" + "/";
		System.out
				.println("-----------------------------------------------------");
		System.out.println(fileURL);
		String fileName = file.getOriginalFilename();
		System.out
				.println("-----------------------------------------------------");
		System.out.println(fileName);
		File targetFile = new File(savePath, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		try {
			file.transferTo(targetFile);
			Attenchment att = new Attenchment();
			att.setAttname(fileName);
			att.setAtturl(fileURL);
			att.setType(attType);
			att.setId(deviceId);
			if (uploadService.checkFile(deviceId)) {
				att.setAttid(tAttid);
				if (uploadService.updateFile(att)) {
					response.getWriter().write(JSON.toJSONString(att));
				} else {
					response.getWriter().write("myfail");
				}
			} else {
				att.setAttid(UUID.randomUUID().toString());
				if (uploadService.uploadFile(att)) {
					response.getWriter().write(JSON.toJSONString(att));
				} else {
					response.getWriter().write("myfail");
				}
			}
			response.setCharacterEncoding("UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
