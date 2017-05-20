package com.ssh.ui;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ssh.model.Activeinfo;
import com.ssh.service.IActiveInfoService;
import com.ssh.util.PageModel;

/**
 * 
 * 礼品操作 表示层，控制层
 * 
 * @author 吴金科 时间：2016年11月18日10:41:47
 * 
 */
@Controller
public class ActiveInfoUI {

	@Autowired
	private IActiveInfoService iActiveInfoService;



	/**
	 * 处理时间格式
	 * 
	 * @param binder
	 */
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd"), true));
	}

	/**
	 * 查询所有的数据
	 * 
	 * @param map
	 * @return 返回到 指定的页面
	 */
	@RequestMapping(value = "selActiveInfo", method = RequestMethod.GET)
	public String selActiveInfoAll(Map<String, Object> map) {
		ArrayList<Activeinfo> selActiveAll = iActiveInfoService
				.queryActiveinfoList();
		map.put("actives", selActiveAll);

		return "Exchange";
	}

	/**
	 * 查询所有的数据 前台 页面显示
	 * 
	 * @param map
	 * @return 返回到 指定的页面
	 */
	@RequestMapping(value = "queryPageActive")
	public String selPageActive(@RequestParam("pageNo") Integer pageNo,
			Map<String, Object> map) {
		PageModel<Activeinfo> model = iActiveInfoService
				.queryActiveInfoListPage(pageNo);
		map.put("model", model);
		return "ExchangeActiveInfo";
	}

	/**
	 * 瀑布流 加载数据
	 * 
	 * @param pageNo
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "queryPageActiveTwo", method = RequestMethod.POST)
	public List<Activeinfo> selPageActiveTwo(
			@RequestParam("pageNo") Integer pageNo) {
		if (pageNo == null) {
			pageNo = 1;
		}
		PageModel<Activeinfo> model = iActiveInfoService
				.queryActiveInfoListPage(pageNo);
		List<Activeinfo> list = model.getList();
		return list;
	}

	/**
	 * 后台分页查询
	 * 
	 * @param pageNo
	 *            当前页面
	 * @param map
	 *            返回的数据集
	 * @return 返回到指定的页面
	 */
	@RequestMapping(value = "selActiveInfoPage/{pageNo}", method = RequestMethod.GET)
	public String selPageActiveInfo(@PathVariable("pageNo") Integer pageNo,
			Map<String, Object> map) {
		if (pageNo == null) {
			pageNo = 1;
		}
		PageModel<Activeinfo> model = iActiveInfoService
				.queryPageActiveInfoList(pageNo);
		if (model != null) {
			map.put("model", model);
		}
		return "admin/ActiveinfoList";
	}



	/**
	 * 后台根据id查询出详情
	 * 
	 * @param aiId
	 *            礼品id
	 * @param map
	 *            将查询的数据 带到页面
	 * @return 返回到指定的页面
	 */
	@RequestMapping(value = "selActiveInfoPage", method = RequestMethod.GET)
	public String selByAiIdActive(@RequestParam("aiId") Integer aiId,
			Map<String, Object> map) {
		Activeinfo activeInfo = iActiveInfoService.queryByAiIdActiveInfo(aiId);

		if (activeInfo != null) {
			map.put("activeInfo", activeInfo);
		}
		return "admin/updateActiveInfo";
	}

	/**
	 * 
	 * 修文文件的信息
	 * 
	 * 上传文件
	 * 
	 * @param request
	 * @param file
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "upLoadImage", method = RequestMethod.POST)
	public String upLoadImg(HttpServletRequest request,
			@RequestParam("file") MultipartFile file, Activeinfo activeinfo)
			throws Exception {

		// 在获取服务器上的 shopInfoImage 路劲
		String realPath = request.getSession().getServletContext().getRealPath(
				"/activeInfoImages");

		// 创建 一个文件路劲
		File fileLocation = new File(realPath);

		// 判断文件是否存在
		if (!fileLocation.exists()) {

			// 如果不存在则 创建文件
			fileLocation.mkdirs();
		}
		// 判断 request 是否有文件上传
		if (!file.isEmpty()) {

			// 上传后记录的文件 文件名称/图片名称
			File imageFile = new File(realPath + "/"
					+ file.getOriginalFilename());

			// 获取图片名称
			String filename = file.getOriginalFilename();

			activeinfo.setAiPhoto(filename);

			// 上传到服务器文件中
			file.transferTo(imageFile);
		}
		iActiveInfoService.updateActiveinfo(activeinfo);

		return "redirect:selActiveInfoPage/1";
	}

	/**
	 * 添加兑换礼品
	 * 
	 * @param activeinfo
	 *            获取参数值
	 * @return 返回到查询页面
	 * @throws Exception
	 *             抛出文件上传异常
	 */
	@RequestMapping(value = "savaActiveInfo", method = RequestMethod.POST)
	public String addActiveInfo(HttpServletRequest request,
			@RequestParam("file") MultipartFile file, Activeinfo activeinfo)
			throws Exception {

		// 获取服务器的上的 图片文件夹
		String realPath = request.getSession().getServletContext().getRealPath(
				"/activeInfoImages");

		// 创建 一个文件路劲
		File imageFiles = new File(realPath);

		// 判断文件是否存在
		if (!imageFiles.exists()) {
			// 如果不存在则 创建文件
			imageFiles.mkdirs();
		}

		// 判断 request 是否有文件上传
		if (!file.isEmpty()) {

			// 上传后记录的文件 文件名称/图片名称
			File imageFile = new File(realPath + "/"
					+ file.getOriginalFilename());

			// 获取图片名称
			String filename = file.getOriginalFilename();

			activeinfo.setAiPhoto(filename);

			// 上传到服务器文件中
			file.transferTo(imageFile);
		}
		activeinfo.setAiStatus(1);
		// 添加礼品兑换
		iActiveInfoService.saveActiveinfo(activeinfo);

		// 返回到查询页面
		return "redirect:selActiveInfoPage/1";
	}
}
