package login2.dao;

import login2.model.UserInfo;

public class LoginDAO {
		public boolean loginChk(UserInfo userInfo) {
			
			if("JB92".equals(userInfo.getId())) {
				userInfo.setName("김정범");
				return true;
			}
			else {
					return false;
			}
		}
}
