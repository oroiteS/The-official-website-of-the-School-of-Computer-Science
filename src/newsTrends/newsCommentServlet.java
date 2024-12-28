package newsTrends;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

/**
 * ClassName: newsCommentServlet
 * Package: newsTrends
 * CreateTime: 2024/12/4-20:40
 * Description:
 * 新闻评论servlet
 * @author SYN
 */
@WebServlet("/newsCommentServlet")
public class newsCommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 设置请求的编码格式
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        String userid=request.getParameter("userId");
        String newsId=request.getParameter("newsId");
        String comment=request.getParameter("commentContent");
        String createTime= LocalDate.now().toString();
        int flag=Dao.newsTrends.newsCommentsDao.insertComments(hash.hash.getHash(userid+newsId+createTime+comment),newsId,userid,comment,createTime);
        PrintWriter out = response.getWriter();
        if(flag==1){
            out.println("<script type='text/javascript'>");
            out.println("alert('评论成功');");
            out.println("window.location.href='" + request.getContextPath() + "/newsTrends/news.jsp?id="+newsId+"';");
            out.println("</script>");
        }else{
            out.println("<script type='text/javascript'>");
            out.println("alert('评论失败');");
            out.println("window.location.href='" + request.getContextPath() + "/newsTrends/news.jsp?id="+newsId+"';");
            out.println("</script>");
        }
        out.close();
    }
}
