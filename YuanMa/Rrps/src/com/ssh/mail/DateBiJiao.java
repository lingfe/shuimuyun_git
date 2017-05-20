package com.ssh.mail;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateBiJiao {
	/**
	 * 
	 * 传入时间和当前时间的比较当前时间大返回1，传入时间大返回-1，默认返回0
	 * @param sqldate:传入时间
	 * @return 1:当前时间大,-1:传入时间大,0:默认返回
	 */
	public int getTime(Date sqldate){
		Date dt=new Date();//如果不需要格式,可直接用dt,dt就是当前系统时间
	    DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//设置显示格式
	    String nowTime= df.format(dt);
	    String time=df.format(sqldate);
	    Date now;
	    Date sqltime;
	    Date reuslt;
	    try {
			now = df.parse(nowTime);
			sqltime=df.parse(time);
			
			if(now.getTime()>sqltime.getTime()){
				
				System.out.println("现在时间大于传入的时间NOW");
				
				return 1;
			}else if(now.getTime()<sqltime.getTime()){
				
				System.out.println("传入时间大于现在时间SQL");
				
				return -1;
			}else{
				
				return 0;
			}
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}
}
