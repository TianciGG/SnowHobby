package com.snowhobby.service;

import java.util.List;

import com.snowhobby.db.entity.DicCode;

public interface DicListService {

	List<DicCode> selectDicType();

	List<DicCode> selectDicAll(DicCode dicCode);

	DicCode selectByPrimaryKey(String dicId);

	boolean updateByPrimaryKeySelective(DicCode dicCode);

	boolean insertSelective(DicCode dicCode);

	boolean deleteByPrimaryKey(String dicId);

	List<DicCode> getDataByType(String type);

}
