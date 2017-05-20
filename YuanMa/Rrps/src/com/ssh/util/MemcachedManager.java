package com.ssh.util;
import java.util.Date;

import com.danga.MemCached.MemCachedClient;
import com.danga.MemCached.SockIOPool;
public class MemcachedManager {
 
   // 创建MemCachedClient全局对象
    private static MemCachedClient mcc = new MemCachedClient();
    
    static {
       // 创建服务器列表及其权重
       String[] servers = {"127.0.0.1:11211"};
       Integer[] weights = {3};            
       
       // 创建Socket连接池对象
       SockIOPool pool = SockIOPool.getInstance();
       
       // 设置服务器信息
       pool.setServers(servers);
       pool.setWeights(weights);
       pool.setFailover(true);
       
       // 设置初始连接数、最小和最大连接数以及最大处理时间
       pool.setInitConn(5);
       pool.setMinConn(5);
       pool.setMaxConn(250);
       pool.setMaxIdle(10000);
       
       // 设置主线程睡眠时间
       pool.setMaintSleep(300);
       
       // 设置TCP参数、连接超时等
       pool.setNagle(false);
       pool.setSocketTO(3000);
       pool.setSocketConnectTO(0);
       pool.setAliveCheck(true);
       
       // 初始化连接池
       pool.initialize();
       
       // 压缩设置，超过指定大小（单位为K）的数据都会被压缩
       mcc.setCompressEnable(true);
       mcc.setCompressThreshold(64 * 1024);
    }
    
   
    protected MemcachedManager (){
       
    }
    
    // 受保护的对象
    protected static MemcachedManager instance = new MemcachedManager();
    
   
    public static MemcachedManager getInstance () {
       return instance;
    }
    
   
    public boolean add(String key,Object value) {
       return mcc.add(key, value);
    }
    public boolean add (String key,Object value,Date expiry) {
       return mcc.add(key, value,expiry);
    }
    
    public boolean replace (String key,Object value) {
       return mcc.replace(key, value);
    }
    
    public boolean replace (String key,Object value,Date expiry)
    {
       return mcc.replace(key, value, expiry);
    }
    
   
    public Object get(String key) {
       return mcc.get(key);
    }
}
