package dang.note.ssm.controller;



import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dang.note.ssm.service.UserService;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dang.note.ssm.pojo.User;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.View;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value = "/login", method = {RequestMethod.POST,RequestMethod.GET})
	public String login(User user, Model model, HttpSession httpSession){
		User loginUser=userService.login(user);
		if(loginUser==null||loginUser.getUsername()==""){
			model.addAttribute("info","用户名或密码错误");
			return "login";
		}else {
			httpSession.setAttribute("loginUser",loginUser);
			System.out.print("----------------------------------loginUser---------------------------------");
			return "redirect:../items/list.action";
		}
	}

	@RequestMapping("/add.action")
	public String add(User user, Model model){
		if(userService.login(user)!=null){
			model.addAttribute("info","用同名用户");
			return "add";
		}else{
			int res=userService.add(user);
			return "login";
		}
	}




//	@RequestMapping(value="/showuser.action", method = RequestMethod.POST)
//	public String toIndex(HttpServletRequest request,Model model){
//		User userLogin=new User();
//		userLogin.setUsername(request.getParameter("username"));
//		userLogin.setPassword(request.getParameter("password"));
//
//		 User user=new User();
//
//		if(this.userService.getLoginUser(userLogin)){
//          user=this.userService.getUserByusername(userLogin.getUsername());
//          System.out.println(user.toString()+"get user success");
//          model.addAttribute("user", user);
//
//		}else{
//
//			model.addAttribute("user can not in use");
//			System.out.println("can not get user");
//		}
//	      	return "indexuser";
//	}
//
//
//
//	@RequestMapping(value="/register.action",method= RequestMethod.POST)
//	public String registerIndex(HttpServletRequest request,Model model){
//
//		//ModelAndView mav=new ModelAndView();
//
//		User userRegister=new User();
//		String username2=request.getParameter("username");
//		String password2=request.getParameter("password");
//		userRegister.setUsername(username2);
//		userRegister.setPassword(password2);
//		System.out.println(username2+"密码是"+password2);
//
//		if(userRegister.getUsername()!=null){
//			if (request.getParameter("age")==null) {
//			}else{
//			}
//			System.out.println(userRegister.getUsername()+" 显示注册的名字");
//
//		}else{
//
//			User user2 = new User();
//			user2.setUsername("pm");
//			user2.setPassword("pm");
//			userRegister=user2;
//		}
//
//		int id=this.userService.inster(userRegister);
//
//        User user=this.userService.getUserById(id);
//
//        System.out.println(user.toString()+"insert user success");
//
//        model.addAttribute("user", user);
//
//	    return "indexuser";
//	}

	


	
	
}
