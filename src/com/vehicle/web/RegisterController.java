
package com.vehicle.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vehicle.domain.User;
import com.vehicle.exception.UserExistException;
import com.vehicle.service.UserService;

/**
 * 
 * <br>
 * <b>类描述:</b>
 * 
 * <pre>
 * 用户注册的Action
 * </pre>
 * 
 * @see
 * @since
 */

/**
 * @author louxuezheng
 */
@Controller                   
public class RegisterController extends BaseController {
	/**
	 * 自动注入
	 */
	@Autowired
	private UserService userService;


	
	/**
	 * 用户登录
	 * @param request
	 * @param response
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(HttpServletRequest request,User user){
		ModelAndView view = new ModelAndView();
		view.setViewName("/success");
		try {
			userService.register(user);
		} catch (UserExistException e) {
			view.addObject("errorMsg", "用户名已经存在，请选择其它的名字。");
			view.setViewName("forward:/register.jsp");
		}
		setSessionUser(request, user);// 注册成功后将user存入session
		return view;
	}
	
}
