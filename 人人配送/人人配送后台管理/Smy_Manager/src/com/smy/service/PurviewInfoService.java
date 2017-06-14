package com.smy.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smy.mapper.PurviewInfoMapper;
import com.smy.model.Purview_Info;

@Service
public class PurviewInfoService {
 
	@Autowired 
	private PurviewInfoMapper purview_InfoMapper;
	
	@Transactional
	public List<Purview_Info> queryAll(){
		
		List<Purview_Info> purList = purview_InfoMapper.queryAll();
		
		return purList;
	}
	
	
}
