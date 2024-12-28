package login;

import Dao.loginDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * ClassName: loginServlet
 * Package: login
 * CreateTime: 2024/11/27-21:30
 * Description:
 * 登录验证类
 * @author SYN
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从Session中获取userId和userPassword
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userId") == null || session.getAttribute("userPassword") == null) {
            // Session中没有userId或userPassword，重定向到登录页面
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }

        String userId = (String) session.getAttribute("userId");
        String userPassword = (String) session.getAttribute("userPassword");

        // 调用loginDao.query方法验证账号密码
        boolean isValid = loginDao.query(userId, userPassword);

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = getPrintWriter(request, response, isValid);
        out.close();
    }

    private static PrintWriter getPrintWriter(HttpServletRequest request, HttpServletResponse response, boolean isValid) throws IOException {
        PrintWriter out = response.getWriter();
        if (isValid) {
            // 账号密码正确，允许用户访问
            // 将身份也保存到session中
            HttpSession session = request.getSession();
            session.setAttribute("identity", loginDao.getIdentity((String) session.getAttribute("userId")));
            //删除密码的存储
            session.removeAttribute("userPassword");
            out.println("<script type='text/javascript'>");
            out.println("alert('登录成功！');");
            out.println("window.location.href='" + request.getContextPath() + "/login.jsp';");
            out.println("</script>");
            response.sendRedirect(request.getContextPath() +"/homePage.jsp");
        } else {
            // 账号密码错误，回到登录界面并提示错误
            out.println("<script type='text/javascript'>");
            out.println("alert('账号或密码错误');");
            out.println("window.location.href='" + request.getContextPath() + "/login.jsp';");
            out.println("</script>");
        }
        return out;
    }
}
