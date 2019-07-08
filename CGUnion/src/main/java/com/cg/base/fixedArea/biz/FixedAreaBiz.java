package com.cg.base.fixedArea.biz;


import java.util.List;

import com.cg.base.fixedArea.domain.FixedArea;




public interface FixedAreaBiz {
   
   public List<FixedArea> findAllFixedArea();
   public List<FixedArea> findPartFixedArea(String fixed_area_name);
   public int addFixedArea(FixedArea fixedArea);
   public int updateFixedArea(FixedArea fixedArea);
   public int deleteFixedArea(String fixed_area_id);
   public FixedArea findFixedAreaById(String fixed_area_id);
}
