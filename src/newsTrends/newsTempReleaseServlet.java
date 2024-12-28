package newsTrends;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

/**
 * ClassName: newsTempReleaseServlet
 * Package: newsTrends
 * CreateTime: 2024/12/2-12:27
 * Description:
 * 处理将临时新闻发布的servlet
 * @author SYN
 */
@WebServlet("/newsTempReleaseServlet")
public class newsTempReleaseServlet extends HttpServlet {
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
        //获取正文内容，复制图片
        String content=Dao.newsTrends.newsDao.getTempContent(hashTitle);
        int index=-1;
        while((index=content.indexOf("<img alt=\"\" src=\"",index+1))!=-1){
            int endIndex=content.indexOf("\">",index+17);
            String src=content.substring(index+17,endIndex);
            //将temp/img/src复制到newsImg/
            File srcFile=new File("F:\\大学\\JavaEE\\code\\final_experiment\\web\\temp/img/"+src);
            Files.copy(srcFile.toPath(),
                    new File("F:\\大学\\JavaEE\\code\\final_experiment\\web\\newsImg/"+src).toPath());
            srcFile.delete();
        }
        //调用dao将数据存入正式数据库
        int flag=Dao.newsTrends.newsDao.insertNews(hashTitle);
        if(flag==1){
            response.getWriter().print("{\"success\": true}");
        }else{
            response.getWriter().print("{\"success\": false}");
        }
    }
}
