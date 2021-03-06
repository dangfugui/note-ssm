package dang.note.ssm.interceptor;

import dang.note.ssm.pojo.User;
import dang.note.ssm.tool.MySessionKey;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by dangqihe on 2016/10/9.
 */
public class LoginInterceptor implements HandlerInterceptor {
    //进入 Handler方法之前执行
    //用于身份认证、身份授权
    //比如身份认证，如果认证通过表示当前用户没有登陆，需要此方法拦截不再向下执行
    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        String servletPath=request.getServletPath();
        String requestURI=request.getRequestURI();
        User loginUser= (User) request.getSession().getAttribute(MySessionKey.LOGIN_USER);
        if(servletPath.contains("login")){
            return true;
        }
        if(null==loginUser){
//            User user=new User();
//            user.setId(1);
//            user.setUsername("handle_add");
//            user.setPassword("11");
//            request.getSession().setAttribute(MySessionKey.LOGIN_USER,user);
            response.sendRedirect("/user/login.jsp");
            return false;/////////////////////
        }

        return true;        //return true表示放行
    }

    //进入Handler方法之后，返回modelAndView之前执行
    //应用场景从modelAndView出发：将公用的模型数据(比如菜单导航)在这里传到视图，也可以在这里统一指定视图
    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {

    }

    //执行Handler完成执行此方法
    //应用场景：统一异常处理，统一日志处理
    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {

    }
}