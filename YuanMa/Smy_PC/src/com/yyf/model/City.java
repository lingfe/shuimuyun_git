package com.yyf.model;

/**
 * 
  * 文件名：City.java
  * 描述： 	地址表，省市区 各级的名称
  * 修改人：	lijie
  * 修改时间：2017年5月28日 上午10:04:39
  * 修改内容：
 */
public class City {

	private int id;//	  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT comment '标识id',
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	private String code;//	  `code` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '行政代码',
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
	private String name;//	  `name` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '名称',
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	private int parent_id;//	  `parent_id` INT(11) NOT NULL COMMENT '父id',
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	
	private String first_letter;//	  `first_letter` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '首字母',
	public String getFirst_letter() {
		return first_letter;
	}
	public void setFirst_letter(String first_letter) {
		this.first_letter = first_letter;
	}
	
	private int level;//	  `level` INT(11) NOT NULL COMMENT '城市等级',
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
}
