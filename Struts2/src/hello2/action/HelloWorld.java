package hello2.action;

import com.opensymphony.xwork2.Action;

public class HelloWorld implements Action {
	
	private String name;
	private String msg;
	private String retMsg;
	
	public String getMsg() {
		return msg;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getRetMsg() {
		return retMsg;
	}
	
	public String execute()throws Exception{
		
		if(name == null || "".equals(name)) {
				retMsg = "shut up! Enter Your Name!!";
				return INPUT;
		}
		
		msg = "Hello," + name;
		return SUCCESS;
	}
}
