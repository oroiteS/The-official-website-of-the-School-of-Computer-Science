package publicService;

import Dao.publicService.resourceDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * ClassName: resourceGetServlet
 * Package: publicService
 * CreateTime: 2024/12/14-22:45
 * Description:
 * 获取资源信息列表
 * @author SYN
 */
@WebServlet("/resourceGetServlet")
public class resourceGetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // 设置请求的编码格式
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        try {
            // 获取资源类型参数
            String type = request.getParameter("type");

            // 获取资源列表
            List<Object[]> resources = resourceDao.getResourcesByType(type);
            // 手动构建JSON数组
            StringBuilder jsonBuilder = new StringBuilder();
            jsonBuilder.append("[");

            for (int i = 0; i < resources.size(); i++) {
                Object[] resource = resources.get(i);
                if (i > 0) {
                    jsonBuilder.append(",");
                }
                jsonBuilder.append("{")
                        .append("\"title\":\"").append(resource[0].toString()).append("\",")
                        .append("\"publishTime\":\"").append(resource[1].toString()).append("\"")
                        .append("}");
            }
            jsonBuilder.append("]");


            // 发送响应
            out.write(String.valueOf(jsonBuilder));
            out.flush();

        } catch (Exception e) {
            // 错误响应
            String errorJson = "{\"error\":\"" + e.getMessage() + "\"}";
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            out.print(errorJson);
            out.flush();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        String title=request.getParameter("title");
        String publishTime=request.getParameter("publishTime");
        String type=request.getParameter("type");
        // 生成资源ID
        String resourceId = hash.hash.getHash(title + publishTime + type);

        //获取文件路径
        List<Object[]> resourceLink=resourceDao.getResourcesLinkById(resourceId);
        for(Object[] resource:resourceLink){
            String filePath=resource[0].toString();
            File file=new File(filePath);
            file.delete();
        }

        int flag=Dao.publicService.resourceDao.deleteResource(resourceId);
        PrintWriter writer = response.getWriter();
        if (flag==0){
            writer.write("{\"success\":false}");
        }else{
            writer.write("{\"success\":true}");
        }
    }
}
