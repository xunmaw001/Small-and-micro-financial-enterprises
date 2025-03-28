package com.entity.view;

import com.entity.JifenshangchengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 积分商城
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-02-28 16:44:52
 */
@TableName("jifenshangcheng")
public class JifenshangchengView  extends JifenshangchengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JifenshangchengView(){
	}
 
 	public JifenshangchengView(JifenshangchengEntity jifenshangchengEntity){
 	try {
			BeanUtils.copyProperties(this, jifenshangchengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
