package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yyf.mapper.IR_xiaordertabMapper;
import com.yyf.mapper.R_qiangordertabMapper;
import com.yyf.mapper.R_zhinotifyMapper;
import com.yyf.mapper.R_zhiorderquertMapper;
import com.yyf.mapper.R_zhiordertabMapper;
import com.yyf.model.Commenttab;
import com.yyf.model.R_xiaordertab;
import com.yyf.model.R_zhiordertab;
import com.yyf.service.R_xiaordertabService;
import com.yyf.service.R_zhinotifyService;
import com.yyf.service.R_zhiorderqueryService;
import com.yyf.service.R_zhiordertabService;
import com.yyf.util.R_qiangordertabEnum;
import com.yyf.util.R_xiaordertabEnum;

/**
 * 
 * 文件名： R_zhiordertabServiceImpl.java 描述： 下单交互实现类 修改人： tianhao 修改时间： 2017年6月17日
 *  修改内容：
 */
@Service
public class R_zhiorderquertServiceImpl implements R_zhiorderqueryService {

	// 自动装配，
	@Autowired
	private R_zhiorderquertMapper zhiorderquertyMapper;



	@Override
	public R_zhiordertab selectMessage(String xiaid) {
		R_zhiordertab zhi = zhiorderquertyMapper.SelectOrder(xiaid);
		return zhi;
	}
}
