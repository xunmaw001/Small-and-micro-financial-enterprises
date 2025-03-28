package com.dao;

import com.entity.DaikuanxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DaikuanxinxiVO;
import com.entity.view.DaikuanxinxiView;


/**
 * 贷款信息
 * 
 * @author 
 * @email 
 * @date 2023-02-28 16:44:52
 */
public interface DaikuanxinxiDao extends BaseMapper<DaikuanxinxiEntity> {
	
	List<DaikuanxinxiVO> selectListVO(@Param("ew") Wrapper<DaikuanxinxiEntity> wrapper);
	
	DaikuanxinxiVO selectVO(@Param("ew") Wrapper<DaikuanxinxiEntity> wrapper);
	
	List<DaikuanxinxiView> selectListView(@Param("ew") Wrapper<DaikuanxinxiEntity> wrapper);

	List<DaikuanxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DaikuanxinxiEntity> wrapper);
	
	DaikuanxinxiView selectView(@Param("ew") Wrapper<DaikuanxinxiEntity> wrapper);
	

}
