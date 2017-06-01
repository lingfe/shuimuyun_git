package com.yyf.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.yyf.model.City;
import com.yyf.model.Commenttab;
import com.yyf.model.R_kuaiketab;
import com.yyf.model.R_xiaordertab;
import com.yyf.service.CityService;
import com.yyf.service.R_qiangordertabService;
import com.yyf.service.R_xiaordertabService;
import com.yyf.util.R_xiaordertabEnum;

/**
 * 
 * 文件名： R_xiaordertabController.java 描述： 下单，表现层 修改人： lijie 修改时间： 2017年5月16日
 * 下午4:49:39 修改内容：
 */
@Controller
@RequestMapping("/xiaordertab")
public class R_xiaordertabController {

	// 自动装配	下单
	@Autowired
	private R_xiaordertabService r_xiaordertabService;
	// 自动装配	抢单
	@Autowired
	private R_qiangordertabService r_qiangordertabService;
	// 自动装配	地址
	@Autowired
	private CityService cityService;
	
	
	/**
	 * 
	 * 通过ajax请求，根据状态返回集合
	 * @author lijie     
	 * @created 2017年5月28日 上午9:05:17  
	 * @param status
	 * @return
	 */
	@RequestMapping(value="/xiadanAjax/{status}",method=RequestMethod.GET)
	public @ResponseBody List<R_xiaordertab> ajxaJson(@PathVariable("status")int status){
		List<R_xiaordertab> statusQuery = r_xiaordertabService.statusQuery(status);
		return statusQuery;
	}
	
	/**
	 * 
	 * 添加下单评论记录
	 * 
	 * @author lijie
	 * @created 2017年5月23日 下午2:40:36
	 * @param tab
	 * @return URL
	 */
	@RequestMapping(value = "/insertCommentInfo", method = RequestMethod.POST)
	public String insertCommentInfo(Commenttab tab) {
		// 评论id
		tab.setCommentId(UUID.randomUUID().toString());
		// 评论时间
		tab.setCommentDate(new Date());

		r_xiaordertabService.insertCommentInfo(tab);
		return "PC/index";
	}

	/**
	 * 
	 * 根据下单id删除
	 * 
	 * @author lijie
	 * @created 2017年5月19日 下午5:09:23
	 * @param xiaId下单id
	 * @return
	 */
	@RequestMapping(value = "/delete/{xiaId}", method = RequestMethod.GET)
	public String delete(@PathVariable("xiaId") String xiaId) {
		R_xiaordertab xiaorderInfo = r_xiaordertabService.xiaorderInfo(xiaId);
		// 判断状态是否为0，否则不能删除
		if (xiaorderInfo != null && xiaorderInfo.getStatus() == R_xiaordertabEnum.WJD.ordinal()) {
			// 删除
			r_xiaordertabService.delete(xiaId);
			return "index";
		}

		return "PC/index";
	}

	/**
	 * 
	 * 下单的详细信息
	 * 
	 * @author lijie
	 * @created 2017年5月19日 下午3:05:32
	 * @param xiaId
	 *            下单id
	 * @return URL
	 */
	@RequestMapping(value = "/xiaorderInfo/{xiaId}", method = RequestMethod.GET)
	public String xiaorderInfo(@PathVariable("xiaId") String xiaId, ModelMap map) {
		// 得到数据
		R_xiaordertab xiaorderInfo = r_xiaordertabService.xiaorderInfo(xiaId);
		map.addAttribute("info", xiaorderInfo);
		
		R_kuaiketab querytKuaike = r_qiangordertabService.querytKuaike(xiaId);
		map.addAttribute("kuaike", querytKuaike);
		
		//获取省
		List<City> province = cityService.getProvince();
		map.addAttribute("province", province);
		
		//获取市
		List<City> city = cityService.getCity();
		map.addAttribute("city", city);
		
		//获取区
		List<City> area = cityService.getArea();
		map.addAttribute("area",area);
		
		
		return "PC/placeAnOrderInfo";
	
		
	}

	/**
	 * 
	 * 修改下单状态(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）)
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午11:47:32
	 * @return URL
	 */
	@RequestMapping(value = "/updateStatus/{xiaId}/{status}", method = RequestMethod.GET)
	public String updateStatus(@PathVariable("xiaId") String xiaId, @PathVariable("status") int status) {
		// 调用方法
		r_xiaordertabService.updateStatus(status, xiaId);

		return "PC/index";
	}

	/**
	 * 
	 * 获取下单数据集合
	 * 
	 * @author lijie
	 * @created 2017年5月18日 下午3:13:16
	 * @return list
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String xiaorderList(Map<String, Object> map) {
		List<R_xiaordertab> query = r_xiaordertabService.query();
		map.put("query", query);

		return "PC/index";
	}

	/**
	 * 
	 * 添加下单纪录
	 * 
	 * @author lijie
	 * @created 2017年5月16日 下午5:12:24
	 * @param 实体数据
	 * @return URL
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@RequestParam(value = "fileImages", required = false) MultipartFile fileImages,
			HttpServletRequest request, R_xiaordertab tab) {

		// 获取到当前服务器项目的跟路径
		String path = request.getSession().getServletContext().getRealPath("upload");
		// 文件1
		String fileName1 = fileImages.getOriginalFilename();
		File targetFile1 = new File(path, fileName1);
		if (!targetFile1.exists()) {
			targetFile1.mkdirs();
		}

		// 保存
		try {
			fileImages.transferTo(targetFile1);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 下单id
		tab.setXiaId(UUID.randomUUID().toString());
		// 下单状态,默认
		tab.setStatus(R_xiaordertabEnum.WJD.ordinal());
		// 商品图片
		tab.setShopImages(request.getContextPath() + "/upload/" + fileName1);

		r_xiaordertabService.add(tab);
		return "PC/index";
	}

}
