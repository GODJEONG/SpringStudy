
package kr.soft.study;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;

public class AdminConnection implements InitializingBean, DisposableBean {

	//private Environment env;
	private String adminId;
	private String adminPw;
	private String Sub_adminId;
	private String Sub_adminPw;

	@Override
	public void afterPropertiesSet() throws Exception { // refresh �Ҷ�
		System.out.println("afterPropertiesSet()");
	}

	@Override
	public void destroy() throws Exception { // close �Ҷ�
		System.out.println("destroy()");
	}

	// getter setter
	/*
	 * public Environment getEnv() { return env; }
	 * 
	 * public void setEnv(Environment env) { this.env = env; }
	 */

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPw() {
		return adminPw;
	}

	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}

	public String getSub_adminId() {
		return Sub_adminId;
	}

	public void setSub_adminId(String sub_adminId) {
		Sub_adminId = sub_adminId;
	}

	public String getSub_adminPw() {
		return Sub_adminPw;
	}

	public void setSub_adminPw(String sub_adminPw) {
		Sub_adminPw = sub_adminPw;
	}

}