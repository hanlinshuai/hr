package com.wuhan.util;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

/**
 * @author hl.yuan
 * @date 2020/1/31
 */
public class MD5Utils {
	/**加盐*/
	private static final String SALT = "test";
	/**加密方式*/
	private static final String ALGORITH_NAME = "md5";
    /**加密次数*/
	private static final int HASH_ITERATIONS = 1;


	/**
	 * 加密
	 * @param pswd 密码
	 * @return
	 */
	public static String encrypt(String pswd) {
		String newPassword = new SimpleHash(ALGORITH_NAME, pswd, ByteSource.Util.bytes(SALT), HASH_ITERATIONS).toHex();
		return newPassword;
	}


	public static void main(String[] args) {
		System.out.println(MD5Utils.encrypt("123456"));
		System.out.println(MD5Utils.encrypt("47ec2dd791e31e2ef2076caf64ed9b3d"));
	}

}
