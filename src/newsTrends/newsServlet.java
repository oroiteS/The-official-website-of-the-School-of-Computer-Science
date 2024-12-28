package newsTrends;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * ClassName: newsServlet
 * Package: newsTrends
 * CreateTime: 2024/12/4-13:40
 * Description:
 * 动态生成新闻管理数据的servlet
 * @author SYN
 */
@WebServlet("/newsServlet")
public class newsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 设置请求的编码格式
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        // 获取新闻数据
        ArrayList<Object[]> newsList = Dao.newsTrends.newsDao.getNews();

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
