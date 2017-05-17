package com.zuxia.ssm.handler;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zuxia.ssm.model.Depts;
import com.zuxia.ssm.model.Emps;
import com.zuxia.ssm.model.PageModel;
import com.zuxia.ssm.services.DataServices;



@Controller
public class ShuJuHandler {

	@Autowired
	private DataServices dataServices;
	
	@RequestMapping(value="/empsAll",method=RequestMethod.GET)
	public String getAll(Map<String, Object> map){
		
		List<Emps> all = dataServices.getAll();
		map.put("list", all);
		
		return "EmpsManger";
	}
	
	//分页查询pageAll
	@RequestMapping(value="/empsAll/{indexNum}/{pageNum}",method=RequestMethod.GET)
	public String pageAll(@PathVariable(value="indexNum")Integer index,@PathVariable(value="pageNum")Integer pageNum,Map<String,Object> map){
		
		System.out.println(index+"//"+pageNum);
		PageModel<Emps> page=new PageModel<Emps>();
		
		//设置分页数值
		page.setPageIndex(index);
		page.setPageNum(pageNum);
		page.setNumCount(dataServices.getNum());
		
		//设置当前页与页容量
		map.put("indexNum",((index-1)*pageNum));
		map.put("pageNum", pageNum);
		
		
		//调用方法的到数据
		page.setList(dataServices.pageAll(map));
		
		map.put("page", page);
		
		System.out.println("getNum="+dataServices.getNum());
		System.out.println("page.index="+page.getPageIndex());
		System.out.println("page.pageNum="+page.getPageNum());
		System.out.println("page.CountNum="+page.getPageCount());
		
		//重定向
		return "pageEmpsManger";
	}
	
	
	//添加之前调用的方法
	@RequestMapping("/updateEmps")
	public String insertEmps(Map<String, Object> map){
		List<Depts> deptsAll = dataServices.getDeptsAll();
		map.put("deptsAll", deptsAll);
		map.put("employee", new Emps());
		System.out.println(deptsAll);
		return "UpdateInset";
		
	}
	
	/*//数据之间的转化,方式一
	@InitBinder
	public void init(ServletRequestDataBinder binder){
		//格式化日期格式
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor dateEditor = new CustomDateEditor(format, true);
		//转换成Date格式
		binder.registerCustomEditor(Date.class, dateEditor);
		
		//binder.setDisallowedFields("birthday");
	}
	
	//添加
	@RequestMapping(value="/employee",method=RequestMethod.POST)
	public String insertEmpsInfo(Emps emps){
		
		employeeService.saveEmployee(emps);
		//redirect:/showAllEmployee
		return "redirect:/showAllEmployee";
	}*/
	
	
	//数据之间的转化,方式二
	@InitBinder
	public void init(WebDataBinder binder){
		////格式化日期格式
		binder.setDisallowedFields("birthday");
	}
	
	//submit添加
	@RequestMapping(value="/updateEmps",method=RequestMethod.POST)
	public String insertEmpsInfo(@RequestParam("birthday")String birthday,Emps emps) throws ParseException{
		System.out.println(birthday);
		//实例化格式化对象
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		Date date = format.parse(birthday);
		System.out.println(date);
		emps.setBirthday(date);
		
		dataServices.insertEmpInfo(emps);
		//重定向
		return "redirect:/empsAll";
		
	}
	
	
	//修改之前调用的方法
	@RequestMapping(value="/updateEmps/{id}")
	public String updateEmps(@PathVariable("id")Integer id,Map<String, Object> map){
		List<Depts> deptsAll = dataServices.getDeptsAll();
		
		//得到部门信息
		map.put("deptsAll", deptsAll);
		System.out.println(id);
		//得到要修改的数据
		Emps empsId = dataServices.getEmpsId(id);
		map.put("employee", empsId);
		System.out.println("修改之前");
		
		return "UpdateInset";
	}	
	//修改之前保留生日
	@ModelAttribute
	public void saveBirthday(@RequestParam(value="empId",required=false)Integer empid,Map<String, Object> map){
		if(empid!=null){
			System.out.println("修改之前保留生日");
			Emps empsId = dataServices.getEmpsId(empid);
			map.put("empId", empsId);
			System.out.println("保留生日成功");
			
		}
		
	}
	//submit提交修改
	@RequestMapping(value="/updateEmps",method=RequestMethod.PUT)
	public String updateEmps(@ModelAttribute("empId")Emps emps){
		System.out.println(emps.getBirthday());
		dataServices.updateEmps(emps);
		System.out.println(emps.getBirthday());
		
		//重定向
		return "redirect:/empsAll";
	}
	
	
	
	
	//删除
	@RequestMapping(value="/deleteEmps/{id}")
	public String deleteEmps(@PathVariable("id")Integer id,Map<String, Object> map){
		dataServices.deleteEmps(id);
		map.put("list", dataServices.getAll());
		return "EmpsManger";
	}
	
	
}
