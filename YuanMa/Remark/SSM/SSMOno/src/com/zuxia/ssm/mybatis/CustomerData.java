package com.zuxia.ssm.mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.zuxia.ssm.model.Depts;
import com.zuxia.ssm.model.Emps;



public interface CustomerData {
	
	@Select("select e.empId,e.empName,e.salary,e.birthday,e.telephone,e.dept_id_fk,d.deptId as \"depts.deptId\",d.deptName as \"depts.deptName\"" +
			"from emps e " +
			"left outer join depts d " +
			"on e.dept_id_fk = d.deptId")
	public  List<Emps> getAll();
	
	//得到数据行
	@Select("SELECT COUNT(*) num FROM emps")
	public Integer getNum();
	
	//分页查询pageAll
	@Select("SELECT e.empid,e.empName,e.salary,e.birthday,e.dept_id_fk,e.telephone, d.deptId AS 'depts.deptId',deptName AS 'depts.deptName' " +
			" FROM emps e " +
			"LEFT OUTER JOIN depts d ON " +
			" e.dept_id_fk=d.deptId " +
			" LIMIT #{indexNum},#{pageNum}")
	public List<Emps> pageAll(Map<String, Object> map);
	
	
	//根据id查询数据
	@Select("SELECT e.empid,e.empName,e.salary,e.telephone,e.birthday,e.dept_id_fk, d.deptId AS 'depts.deptId',deptName AS 'depts.deptId' " +
			"FROM emps e LEFT OUTER JOIN depts d ON  " +
			" e.dept_id_fk=d.deptId WHERE e.empid=#{id}")
	public Emps getEmpsId(@Param("id")Integer id);
	
	//修改之前的方法,部门信息
	@Select("select deptId,deptName from depts")
	public List<Depts> getDepts();
	
	//submit修改
	@Update("UPDATE emps SET empname=#{empName},telephone=#{telephone},salary=#{salary},birthday=#{birthday},dept_id_fk=#{depts.deptId} WHERE empid=#{empId} ")
	public void updateEmps(Emps emps);
	
	//submit添加
	@Insert("INSERT INTO emps(empname,salary,birthday,telephone,dept_id_fk) VALUES(#{empName},#{salary},#{birthday},#{telephone},#{depts.deptId});")
	public void insertEmpInfo(Emps emps);
	
	
	//删除
	@Delete("delete from emps where empid=#{id}")
	public void deleteEmps(@Param("id")Integer id);
	
}
