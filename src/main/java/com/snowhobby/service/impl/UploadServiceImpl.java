package com.snowhobby.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowhobby.db.dao.AttenchmentDAO;
import com.snowhobby.db.entity.Attenchment;
import com.snowhobby.service.UploadService;

@Service
public class UploadServiceImpl implements UploadService {
	@Autowired
	private AttenchmentDAO attDao;

	public List<Attenchment> getAllAtt(String agencyId) {
		return attDao.getAllAttByTid(agencyId);
	}

	public boolean uploadFile(Attenchment att) {
		return attDao.insertSelective(att) > 0 ? true : false;
	}

	public boolean deleteFile(Attenchment attment) {
		return attDao.deleteByPrimaryKey(attment.getAttid()) > 0 ? true : false;
	}

	public boolean checkFile(String deviceId) {
		List<Attenchment> temp = attDao.getAllAttByTid(deviceId);
		return temp.size() > 0 ? true : false;
	}

	public boolean updateFile(Attenchment att) {
		return attDao.updateByPrimaryKeySelective(att) > 0 ? true : false;
	}
}
