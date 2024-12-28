package filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * ClassName: loginFilter
 * Package: filter
 * CreateTime: 2024/11/27-21:42
 * Description:
 * 没有登录的情况下会不允许访问某些页面
 * @author SYN
 */

@WebFilter({"/newsTrends/academicNotice.jsp","/newsTrends/newsManagement.jsp",
        "/newsTrends/noticeList.jsp","/publicService/*","/newsTrends/noticeManagement.jsp"})
public class loginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        // 检查用户是否已经登录
        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("identity") != null) {
            // 用户已登录，继续处理请求
            chain.doFilter(request, response);
        } else {
            // 用户未登录，重定向到登录页面
            res.sendRedirect(req.getContextPath() + "/login.jsp");
        }
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
