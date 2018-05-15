package servletConfig.dao;

import servletConfig.model.UserInfo;

public class LoginDAO {
		public boolean loginChk(UserInfo userInfo) {
			
			if("test".equals(userInfo.getId())) {
					userInfo.setName("김정범");
					return true;
			}
			
			else {
					return false;
			}
		}
}
