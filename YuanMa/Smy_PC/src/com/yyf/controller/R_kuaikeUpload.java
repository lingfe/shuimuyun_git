package com.yyf.controller;

import java.io.File;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

/**
  * 文件名：TestUpload.java
  * 描述：[图片] 文件的上传
  * 修改人： 杨杰
  * 修改时间：2017年5月17日 下午4:49:02
  * 修改内容：
 */
@Controller
public class R_kuaikeUpload {
	
	
		/**
		 * // 文件上传
		 * 一句话 方法的功能描述
		 * @author 杨杰     
		 * @created 2017年5月17日 下午4:49:37  
		 * @param request 资源请求
		 * @param model 集合
		 * @return 返回结果[页面]
		 */
		@RequestMapping(value = "/UploadAction")
		public String testFileUpload(HttpServletRequest request,ModelMap model) {
			CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
					request.getSession().getServletContext());

			// 创建一个本地服务器文件夹
			String realPath = request.getSession().getServletContext().getRealPath("/upload");
			
			//测试 是否获取到文件路径
			System.out.println(realPath+"                   11111111111111111111111111111111111111111111");
			
			//保存文件上传路径
			File fileLocation = new File(realPath);
			//判断文件是否存在
			if (!fileLocation.exists()) {
				boolean mkdir = fileLocation.mkdir();
				if (!mkdir) {
					System.out.println("上传失败！");
				}
			}

			// 判断 request 是否有文件上传,即多部分请求
			if (multipartResolver.isMultipart(request)) {
				System.out.println("有文件上传");
				// 转换成多部分request
				MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
				// 取得request中的所有文件名
				Iterator<String> iter = multiRequest.getFileNames();
				while (iter.hasNext()) {
					// 取得上传文件
					MultipartFile file = multiRequest.getFile(iter.next());
					// 数据封装操作 MultipartFile reqeust
					
					// 取得当前上传文件的文件名称
					String myFileName = file.getOriginalFilename(); // 这里需要你对文件的处理哦
					System.out.println(myFileName);
					try {
						file.transferTo(new File(realPath + "/"
								+ file.getOriginalFilename()));
						
						//把图片添加到集合集合对象中
						model.addAttribute("fileUrl", request.getContextPath()+"/upload/"+myFileName);
						
						/*定义路径变量*/
						String real=request.getContextPath()+"/upload/"+myFileName; 
					
						//测试是否得到
						System.out.println(real+"\tddddddddddddddddddddddddddddddddddddd");
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
			//返回成功页面
			return "result";
		}
}
