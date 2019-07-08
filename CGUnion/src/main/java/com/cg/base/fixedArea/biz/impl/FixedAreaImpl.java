package com.cg.base.fixedArea.biz.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.base.fixedArea.biz.FixedAreaBiz;
import com.cg.base.fixedArea.dao.FixedAreaDao;
import com.cg.base.fixedArea.domain.FixedArea;


@Component
public class FixedAreaImpl implements FixedAreaBiz{
	@Autowired
	  private FixedAreaDao fixedAreaDao;
   
	public FixedAreaImpl() {
		super();
	}
	public void setFixedAreaDao(FixedAreaDao fixedAreaDao) {
		this.fixedAreaDao = fixedAreaDao;
	}
	@Override
	public List<FixedArea> findAllFixedArea() {
		// TODO Auto-generated method stub
		return  fixedAreaDao.findAllFixedArea();
	}
	@Override
	public int addFixedArea(FixedArea fixedArea) {
		return  fixedAreaDao.addFixedArea(fixedArea);
	}
	public int updateFixedArea(FixedArea fixedArea) {
		return  fixedAreaDao.updateFixedArea(fixedArea);
	}
	@Override
	public FixedArea findFixedAreaById(String fixed_area_id) {
		// TODO Auto-generated method stub
		return fixedAreaDao.findFixedAreaById(fixed_area_id);
	}
	@Override
	public int deleteFixedArea(String fixed_area_id) {
		// TODO Auto-generated method stub
		return fixedAreaDao.deleteFixedArea(fixed_area_id);
	}
	@Override
	public List<FixedArea> findPartFixedArea(String fixed_area_name) {
		// TODO Auto-generated method stub
		return fixedAreaDao.findPartFixedArea(fixed_area_name);
	};
	
	}
