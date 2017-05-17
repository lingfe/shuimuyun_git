package com.zuxia.junit;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zuxia.model.Emps;
import com.zuxia.service.IEmployeeService;
import com.zuxia.service.impl.EmployeeServiceImpl;

public class TestSSH {

	//加载配置文件
	ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
	
	@Test
	public void test1(){
		
		//实例化对象
		IEmployeeService iEmployeeService = ctx.getBean(IEmployeeService.class);
		//得到数据
		Emps empsID = iEmployeeService.getEmpsID(1);
		
		System.out.println(empsID.getEmpName());
		
	}
	
	@Test
	public void test2(){
		//实例化对象
		IEmployeeService iEmployeeService = ctx.getBean(IEmployeeService.class);
		//得到数据
		List<Emps> empsList = iEmployeeService.getEmpsList();
		
		System.out.println(empsList.size());
	}
	
}
