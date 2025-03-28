package com.dao;

import com.entity.JifenshangchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JifenshangchengVO;
import com.entity.view.JifenshangchengView;


/**
 * 积分商城
 * 
 * @author 
 * @email 
 * @date 2023-02-28 16:44:52
 */
public interface JifenshangchengDao extends BaseMapper<JifenshangchengEntity> {
	
	List<JifenshangchengVO> selectListVO(@Param("ew") Wrapper<JifenshangchengEntity> wrapper);
	
	JifenshangchengVO selectVO(@Param("ew") Wrapper<JifenshangchengEntity> wrapper);
	
	List<JifenshangchengView> selectListView(@Param("ew") Wrapper<JifenshangchengEntity> wrapper);

	List<JifenshangchengView> selectListView(Pagination page,@Param("ew") Wrapper<JifenshangchengEntity> wrapper);
	
	JifenshangchengView selectView(@Param("ew") Wrapper<JifenshangchengEntity> wrapper);
	

}
