package core.web;

import com.jeefw.core.Constant;
import com.jeefw.model.sys.SysUser;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter implements Filter {

    @Override
    public void destroy() {
        // TODO Auto-generated method stub

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String contextPath = request.getContextPath();
        String url = request.getRequestURI();
        url = url.replace(contextPath, "");
        if (url.startsWith("/sys") && !url.contains("/sys/sysuser/login") && !url.contains("/sys/sysuser/register") && !url.contains("/sys/sysuser/retrievePassword")) {
            SysUser sysUser = (SysUser) request.getSession().getAttribute(Constant.SESSION_SYS_USER);
            if (null == sysUser) {
                response.sendRedirect(contextPath + "/login.jsp");
                return;
            }
            // SessionThreadLocal.setThreadSysUser(sysUser);
        }
        if (request.getMethod().equalsIgnoreCase("get")) {
            request = new GetHttpServletRequestWrapper(request, "UTF-8");
        }
        filterChain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub

    }

}
