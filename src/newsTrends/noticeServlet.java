package newsTrends;

import Dao.newsTrends.noticeDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * ClassName: noticeServlet
 * Package: newsTrends
 * CreateTime: 2024/12/18-1:49
 * Description:
 * 通知管理的servlet
 * @author SYN
 */
@WebServlet("/noticeServlet")
@MultipartConfig
public class noticeServlet  extends HttpServlet {
    // 通知类型对应的路径映射
    private static final Map<String, String> NOTICE_PATHS = new HashMap<>() {{
        put("academic", "F:\\大学\\JavaEE\\code\\final_experiment\\web\\static\\notice\\academicNotice");
        put("notice", "F:\\大学\\JavaEE\\code\\final_experiment\\web\\static\\notice\\noticeList");
    }};
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // 获取表单数据
            String title = request.getParameter("title");
            String publishTime = request.getParameter("publish-time");
            String publishKinds = request.getParameter("publish-kinds");
            String content = request.getParameter("content");

            // 生成通知ID
            String noticeId = hash.hash.getHash(title + publishTime + publishKinds);

            // 获取对应的存储路径
            String basePath = NOTICE_PATHS.get(publishKinds);
            if (basePath == null) {
                throw new ServletException("Invalid notice type");
            }

            // 确保目录存在
            File directory = new File(basePath);
            if (!directory.exists()) {
                directory.mkdirs();
            }

            // 保存通知基本信息
            int flag = noticeDao.insertNotice(noticeId, title, publishTime, publishKinds, content);
            if(flag == 0){
                throw new ServletException("保存通知基本信息失败");
            }

            // 处理所有上传的文件
            Collection<Part> fileParts = request.getParts();
            for (Part part : fileParts) {
                if ("file[]".equals(part.getName()) && part.getSize() > 0) {
                    // 获取文件名
                    String fileName = part.getSubmittedFileName();
                    if (fileName != null && !fileName.isEmpty()) {
                        // 构建完整的文件路径
                        String filePath = noticeId + fileName;

                        // 保存文件
                        part.write(basePath + File.separator + filePath);

                        // 保存通知链接
                        flag = noticeDao.insertNoticeLink(noticeId, filePath);
                        if(flag == 0){
                            throw new ServletException("保存通知链接失败");
                        }
                    }
                }
            }

            // 返回成功响应
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script type='text/javascript'>");
            out.println("alert('插入成功');");
            out.println("</script>");
            response.sendRedirect(request.getContextPath() + "/newsTrends/noticeManagement.jsp");
        } catch (Exception e) {
            // 错误处理
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script type='text/javascript'>");
            out.println("alert('插入失败');");
            out.println("</script>");
            response.sendRedirect(request.getContextPath() + "/newsTrends/noticeManagement.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }
}
