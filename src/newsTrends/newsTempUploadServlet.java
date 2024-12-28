package newsTrends;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * ClassName: newsTempUploadServlet
 * Package: newsTrends
 * CreateTime: 2024/11/29-16:05
 * Description:
 * 将新闻存入临时的数据库和从数据库当中取出数据
 * @author SYN
 */
@WebServlet("/newsTempUploadServlet")
public class newsTempUploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 设置请求的编码格式
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        // 获取表单参数
        String title = request.getParameter("title");
        String date=request.getParameter("publishTime");
        String author=request.getParameter("author");
        String content=request.getParameter("content");
        String hashTitle=hash.hash.getHash(title+date);
        //调用dao将数据存入temp数据库
        boolean flag=Dao.newsTrends.newsTempUploadDao.insertTempNews(title,date,author,content,hashTitle);
        if(flag){
            response.getWriter().print("{\"success\": true}");
        }else{
            response.getWriter().print("{\"success\": false}");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 设置请求的编码格式
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        // 获取新闻数据
        ArrayList<Object[]> newsList = Dao.newsTrends.newsTempUploadDao.getNews();

        // 将 Object[] 转换为 String[]
        ArrayList<String[]> stringNewsList = new ArrayList<>();
        for (Object[] objArray : newsList) {
            String[] stringArray = new String[objArray.length];
            for (int i = 0; i < objArray.length; i++) {
                stringArray[i] = objArray[i]!= null? objArray[i].toString() : "";
            }
            stringNewsList.add(stringArray);
        }

        // 手动构建 JSON 格式的字符串
        StringBuilder jsonBuilder = new StringBuilder("[");
        for (String[] news : stringNewsList) {
            jsonBuilder.append("{\"title\":\"").append(news[0]).append("\",");
            jsonBuilder.append("\"createTime\":\"").append(news[1]).append("\",");
            jsonBuilder.append("\"creator\":\"").append(news[2]).append("\"},");
        }
        if (jsonBuilder.length() > 1) {
            jsonBuilder.setLength(jsonBuilder.length() - 1);
        }
        jsonBuilder.append("]");

        // 将 JSON 数据写入响应
        PrintWriter out = response.getWriter();
        out.print(jsonBuilder);
    }
}
