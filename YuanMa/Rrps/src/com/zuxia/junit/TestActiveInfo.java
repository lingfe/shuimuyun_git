package com.zuxia.junit;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssh.model.Activeinfo;
import com.ssh.service.IActiveInfoService;
import com.ssh.util.PageModel;

public class TestActiveInfo {

	ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext(
			"applicationContext.xml");

	/**
	 * 查询所有
	 */
	@Test
	public void test01() {

		IActiveInfoService iActiveInfoService = ctx
				.getBean(IActiveInfoService.class);

		ArrayList<Activeinfo> selActiveAll = iActiveInfoService
				.queryActiveinfoList();

		for (Activeinfo activeinfo : selActiveAll) {
			System.out.println(activeinfo);
		}

	}

	/**
	 * 添加礼品
	 */
	@Test
	public void test02() {

		IActiveInfoService iActiveInfoService = ctx
				.getBean(IActiveInfoService.class);

		Activeinfo activeinfo = new Activeinfo();

		activeinfo.setAiName("nimeide");
		activeinfo.setAiStatus(1);
		activeinfo.setAiScore(20);

		iActiveInfoService.saveActiveinfo(activeinfo);
	}

	/**
	 * 修改礼品信息
	 */
	@Test
	public void test03() {

		IActiveInfoService iActiveInfoService = ctx
				.getBean(IActiveInfoService.class);

		Activeinfo activeinfo = new Activeinfo();

		activeinfo.setAiBeginTime(new Date());
		activeinfo.setAiEndTime(new Date());
		activeinfo.setAiContent("这个礼品  6666 ");
		activeinfo.setAiCount(100);
		activeinfo.setAiGiftName("保温杯");
		activeinfo.setAiPhoto("1.jpg");
		activeinfo.setAiId(10);

		int updateActiveinfo = iActiveInfoService.updateActiveinfo(activeinfo);

		System.out.println(updateActiveinfo);

	}

	/**
	 * 
	 * 分页查询
	 */
	@Test
	public void test04() {

		IActiveInfoService iActiveInfoService = ctx
				.getBean(IActiveInfoService.class);

		PageModel<Activeinfo> model = iActiveInfoService
				.queryPageActiveInfoList(5);

		List<Activeinfo> list = model.getList();

		for (Activeinfo activeinfo : list) {
			System.out.println(activeinfo);
		}

		System.out.println("当前页：" + model.getPageIndex());
		System.out.println("当前页显示的条数：" + model.getPageNum());
		System.out.println("总条数：" + model.getNumCount());

	}



}
