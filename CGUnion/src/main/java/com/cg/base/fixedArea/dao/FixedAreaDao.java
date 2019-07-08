package com.cg.base.fixedArea.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cg.base.fixedArea.domain.FixedArea;


public interface FixedAreaDao {
   
  public List<FixedArea> findAllFixedArea();
  public List<FixedArea> findPartFixedArea(@Param("fixed_area_name")String fixed_area_name);
  public int addFixedArea(FixedArea fixedArea);
  public int updateFixedArea(FixedArea fixedArea);
  public int deleteFixedArea(String fixed_area_id);
  public FixedArea findFixedAreaById(String fixed_area_id);
}
