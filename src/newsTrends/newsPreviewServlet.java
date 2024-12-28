package newsTrends;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * ClassName: newsPreviewServlet
 * Package: newsTrends
 * CreateTime: 2024/12/4-13:46
 * Description:
 * 处理新闻预览的servlet
 * @author SYN
 */
@WebServlet("/newsPreviewServlet")
public class newsPreviewServlet extends HttpServlet {
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

        //response.getWriter().write("title:"+title+"date:"+date+"hashTitle:"+hashTitle);

        //获取新闻内容，生成html文件
        Object[] news =Dao.newsTrends.newsDao.getNews(hashTitle);
        PrintWriter out=response.getWriter();
        String path=request.getContextPath();
        out.write(newsOperation.getNewsToHtml(news,path,true));
        out.close();
    }
}
