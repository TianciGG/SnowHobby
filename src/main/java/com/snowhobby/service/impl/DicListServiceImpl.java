package com.snowhobby.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowhobby.db.dao.DicCodeDAO;
import com.snowhobby.db.entity.DicCode;
import com.snowhobby.service.DicListService;

@Service
public class DicListServiceImpl implements DicListService {

	@Autowired
	DicCodeDAO codeDao;

	public List<DicCode> selectDicType() {
		return codeDao.selectAll();
	}

	public List<DicCode> selectDicAll(DicCode dicCode) {
		return codeDao.selectDicAll(dicCode.getName(), dicCode.getType());
	}

	public DicCode selectByPrimaryKey(String dicId) {
		return codeDao.selectByPrimaryKey(dicId);
	}

	public boolean updateByPrimaryKeySelective(DicCode dicCode) {
		return codeDao.updateByPrimaryKeySelective(dicCode) > 0 ? true : false;
	}

	public boolean insertSelective(DicCode dicCode) {
		return codeDao.insertSelective(dicCode) > 0 ? true : false;
	}

	public boolean deleteByPrimaryKey(String dicId) {
		return codeDao.deleteByPrimaryKey(dicId) > 0 ? true : false;
	}

	public List<DicCode> getDataByType(String type) {
		return codeDao.getDataByType(type);
	}
}
