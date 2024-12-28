package verificationCode;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * ClassName: vCodeValidate
 * Package: verificationCode
 * CreateTime: 2024/11/27-21:24
 * Description:
 * 验证码验证servlet
 * @author SYN
 */
@WebServlet("/vCodeValidateServlet")
public class vCodeValidateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 获取表单数据
        String userId = request.getParameter("userId");
        String userPassword = request.getParameter("password");
        String verificationCode = request.getParameter("verificationCode");

        //从Session中获取验证码进行比较
        HttpSession session = request.getSession();
        String sessionCode = (session != null) ? (String) session.getAttribute("verificationCode") : null;
        System.out.println(sessionCode);

        //验证验证码
        if (sessionCode != null && sessionCode.equals(verificationCode)) {
            //验证码正确，将userId和userPassword存入Session
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("userId", userId);
            httpSession.setAttribute("userPassword", userPassword);

            //向Servlet2发送请求以验证账号密码
            String servlet2Url = request.getContextPath() + "/loginServlet";
            //重定向到Servlet2
            response.sendRedirect(servlet2Url);
        } else {
            //验证码错误，回到登录界面并提示错误
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script type='text/javascript'>");
            out.println("alert('验证码错误');");
            out.println("window.history.back();");
            out.println("</script>");
            out.close();
        }
    }
}
