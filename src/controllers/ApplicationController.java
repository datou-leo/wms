package controllers;

import rbac.RbacService;
import rbac.impl.DefaultRbacService;

import com.et.mvc.Controller;
import com.et.mvc.binding.DataBinders;
import com.et.mvc.filter.BeforeFilter;

@BeforeFilter(execute="auth")
public class ApplicationController extends Controller{
	static{
		DataBinders.setAllowEmpty(true);
	}
	
	protected RbacService rbac;
	
	protected boolean auth() throws Exception {
		rbac = new DefaultRbacService(request);
		//判断用户是否登陆
		if (rbac.getCurrentUser() == null){
			redirect("/home/login");
			return false;
		}
		request.setAttribute("rbac", rbac);	
		
		String actionUrl = request.getServletPath();		
		//判断用户是否有权限访问
		if(!rbac.isAllowed(actionUrl)){
			return false;
		}
		
		return true;
	}
}
