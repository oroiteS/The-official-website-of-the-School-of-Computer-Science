package newsTrends;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;

/**
 * ClassName: newsCommentDeleteServlet
 * Package: newsTrends
 * CreateTime: 2024/12/4-21:30
 * Description:
 * 新闻评论删除类
 * @author SYN
 */
@WebServlet("/newsCommentDeleteServlet")
public class newsCommentDeleteServlet extends HttpServlet {
    @Override
    protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws IOException {
        String id=request.getParameter("commentId");
        int flag= Dao.newsTrends.newsCommentsDao.deleteComments(id);
        if (flag>0){
            response.getWriter().write("删除成功");
        }else {
            response.getWriter().write("删除失败");
        }
    }
}
