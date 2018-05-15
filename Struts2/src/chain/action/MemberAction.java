package chain.action;

import chain.dao.MemberDAO;
import chain.model.UserInfo;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;


public class MemberAction implements Action, Preparable, ModelDriven {
	
	UserInfo userInfo;
	
	public String execute()throws Exception{
			MemberDAO dao = new MemberDAO();
			
			if(dao.save(userInfo)) {
					return SUCCESS;
			}
			
			else {
					return LOGIN;
			}
	}
	
	public void prepare() throws Exception{
			userInfo = new UserInfo();
	}
	
	public Object getModel() {
			return userInfo;
	}
}
