package org.blueshit.csms.interceptor;

import org.blueshit.csms.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class CheckPrivilegeInterceptor implements Interceptor{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -8662125673509248409L;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		
		User user = (User)ActionContext.getContext().getSession().get("user");
		//获取命名空间
		String namespace = ai.getProxy().getNamespace();
		//获取action名
		String actionName = ai.getProxy().getActionName();
		//得到访问的URL
		if(null == namespace || "".equals(namespace)){
			namespace = "/";
		}
		if(!namespace.endsWith("/")){
			namespace+="/";
		}
		String url = namespace+actionName;
		if(user==null){
			//如果是登录页面
			if(url.startsWith("/loginout_login")){
				ai.invoke();//放行
			}else{
				return "loginUI";
			}
		}else{
			//2、已经登录，判断权限
			if(user.hasPrivilegeByUrl(url)){
				return ai.invoke();
			}else{
				return "noPrivilegeUI";
			}
		}
		return null;
	}

}
