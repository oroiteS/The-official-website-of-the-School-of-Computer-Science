package publicService;
import Dao.publicService.resourceDao;
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
 * ClassName: resourceServlet
 * Package: publicService
 * CreateTime: 2024/12/14-17:34
 * Description:
 * 资源下载管理的servlet
 * @author SYN
 */
@WebServlet("/resourceServlet")
@MultipartConfig
public class resourceServlet extends HttpServlet {
    // 资源类型对应的路径映射
    private static final Map<String, String> RESOURCE_PATHS = new HashMap<>() {{
        put("student", "F:\\大学\\JavaEE\\code\\final_experiment\\web\\static\\resource\\resource");
        put("teaching", "F:\\大学\\JavaEE\\code\\final_experiment\\web\\static\\resource\\resource1");
        put("research", "F:\\大学\\JavaEE\\code\\final_experiment\\web\\static\\resource\\resource2");
        put("basic", "F:\\大学\\JavaEE\\code\\final_experiment\\web\\static\\resource\\resource3");
    }};

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // 获取表单数据
            String title = request.getParameter("title");
            String publishTime = request.getParameter("publish-time");
            String publishKinds = request.getParameter("publish-kinds");

            // 生成资源ID
            String resourceId = hash.hash.getHash(title + publishTime + publishKinds);

            // 获取对应的存储路径
            String basePath = RESOURCE_PATHS.get(publishKinds);
            if (basePath == null) {
                throw new ServletException("Invalid resource type");
            }

            // 确保目录存在
            File directory = new File(basePath);
            if (!directory.exists()) {
                directory.mkdirs();
            }

            // 保存资源基本信息
            int flag=resourceDao.insertResource(resourceId, title, publishTime, publishKinds);
            if(flag == 0){
                throw new ServletException("保存资源基本信息失败");
            }

            // 处理所有上传的文件
            Collection<Part> fileParts = request.getParts();
            for (Part part : fileParts) {
                if ("file[]".equals(part.getName()) && part.getSize() > 0) {
                    // 获取文件名
                    String fileName = part.getSubmittedFileName();
                    if (fileName != null && !fileName.isEmpty()) {
                        // 构建完整的文件路径
                        String filePath =  resourceId+fileName;

                        // 保存文件
                        part.write(basePath + File.separator +filePath);

                        // 保存资源链接
                        flag=resourceDao.insertResourceLink(resourceId, filePath);
                        if(flag == 0){
                            throw new ServletException("保存资源链接失败");
                        }
                    }
                }
            }
            // 返回成功响应
            //response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out=response.getWriter();
            out.println("<script type='text/javascript'>");
            out.println("alert('插入成功');");
            out.println("</script>");
            //out.write("{\"success\": true, \"resourceId\": \"" + resourceId + "\"}");
            response.sendRedirect(request.getContextPath() +"/publicService/resourceManagement.jsp");
        } catch (Exception e) {
            // 错误处理
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.setCharacterEncoding("UTF-8");
            PrintWriter out=response.getWriter();
            out.println("<script type='text/javascript'>");
            out.println("alert('插入失败');");
            out.println("</script>");
            //out.write("{\"success\": false, \"error\": \"" + e.getMessage() + "\"}");
            response.sendRedirect(request.getContextPath() +"/publicService/resourceManagement.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }
}
