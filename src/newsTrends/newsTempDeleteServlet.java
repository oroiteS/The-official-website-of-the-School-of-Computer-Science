package newsTrends;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;

/**
 * ClassName: newsTempDeleteServlet
 * Package: newsTrends
 * CreateTime: 2024/12/2-12:28
 * Description:
 * 处理将临时新闻删除的servlet
 * @author SYN
 */
@WebServlet("/newsTempDeleteServlet")
public class newsTempDeleteServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 设置请求的编码格式
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        // 获取表单参数
        String title = request.getParameter("title");
        String date=request.getParameter("date");
        String hashTitle=hash.hash.getHash(title+date);
//        response.getWriter().print("title"+title+"date"+date+"hashT"+hashTitle);
        //调用dao将数据删除
        int flag=Dao.newsTrends.newsDao.deleteTempNews(hashTitle);
        if(flag==1){
            response.getWriter().print("{\"success\": true}");
        }else{
            response.getWriter().print("{\"success\": false}");
        }
        //将文件夹下的图片全部删除
        //获取文件夹
        String directoryPath="F:\\大学\\JavaEE\\code\\final_experiment\\web\\temp/img";
        File directory = new File(directoryPath);
        // 遍历目录中的文件
        File[] files = directory.listFiles();
        if (files!= null) {
            for (File file : files) {
                // 检查文件是否为图片文件（你可以根据需要添加更多的图片文件扩展名）
                if (file.getName().startsWith(hashTitle)) {
                    // 删除文件
                    file.delete();
                }
            }
        }
    }
}
