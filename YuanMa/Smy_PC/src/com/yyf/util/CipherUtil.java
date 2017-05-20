package com.yyf.util;

import java.io.ByteArrayOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 
  * 文件名：Encryption.java<br/>
  * 描述：加密与与解密工具方法  <br/>
  * 修改人： 钟方秀 <br/>
  * 修改时间：2016年11月22日 下午5:26:23<br/>
  * 修改内容：
 */
public class CipherUtil {
	
	/**
	 * 64  密码位加密
	 * @author 杨杰     
	 * @created 2017年5月19日 下午4:46:17  
	 * @param str 传递的参数值
	 * @return
	 */
	public static String decode(String str) {
		//将str转成byte数组
        byte[] data = str.getBytes();
        //获取data的长度
        int len = data.length;
        
        //将字节数组转化为输入流
        ByteArrayOutputStream buf = new ByteArrayOutputStream(len);
        
        int i = 0;
        int b1, b2, b3, b4;

        //解密算法
        while (i < len) {
        		
                do {
                        b1 = base64DecodeChars[data[i++]];
                        
                } while (i < len && b1 == -1);
                
                if (b1 == -1) {
                	
                        break;
                }

                do {
                        
                	b2 = base64DecodeChars[data[i++]];
                        
                } while (i < len && b2 == -1);
                
                if (b2 == -1) {
                        break;
                }
                
                buf.write((int) ((b1 << 2) | ((b2 & 0x30) >>> 4)));

                do {
                        b3 = data[i++];
                        if (b3 == 61) {
                                return new String(buf.toByteArray());
                        }
                        b3 = base64DecodeChars[b3];
                } while (i < len && b3 == -1);
                if (b3 == -1) {
                        break;
                }
                
                buf.write((int)(((b2 & 0x0f) << 4) | ((b3 & 0x3c) >>> 2)));

                do {
                        b4 = data[i++];
                        if (b4 == 61) {
                                return new String(buf.toByteArray());
                        }
                        b4 = base64DecodeChars[b4];
                } while (i < len && b4 == -1);
                if (b4 == -1) {
                        break;
                }
                buf.write((int) (((b3 & 0x03) << 6) | b4));
        }
        
        return new String(buf.toByteArray());
	}
	
	/**
	 * 解码
	 */
	private static byte[] base64DecodeChars = new byte[] { -1, -1, -1, -1, -1,
	        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
	        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
	        -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59,
	        60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
	        10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1,
	        -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37,
	        38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1,
	        -1, -1 };
	
	/**
	 * 
	 * 使用md5加密技术加密<br/>
	 * @author 杨杰    <br/>
	 * @created 2016年11月22日 下午5:36:25<br/>
	 * @param pwd 要进行加密的字符串
	 * @return
	 * @throws NoSuchAlgorithmException 
	 * 给方法加了一个static
	 */
    public static StringBuffer md5Encryption (String pwd) throws NoSuchAlgorithmException{
        char[] chars = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
		
        StringBuffer buffer = new StringBuffer();
		
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
		
        byte[] bytes = pwd.getBytes();
		
        byte[] digest = messageDigest.digest(bytes);
		
        //对MD5加密后处理的一种方式  
        for (byte b : digest) {
            buffer.append(chars[(b >> 4) & 0x0f]);
            buffer.append(chars[b & 0x0f]);
		}
        
        return buffer;
     }
	
}
