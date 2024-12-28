package newsTrends;

import java.util.ArrayList;

/**
 * ClassName: news
 * Package: newsTrends
 * CreateTime: 2024/12/4-17:06
 * Description:
 * 新闻类，负责javabean
 * @author SYN
 */
public class news {
    String id,title,content,createTime,author;
    public news() {
    }
    public news(String id) {
        this.id = id;
        //获取新闻内容，生成html文件
        Object[] news =Dao.newsTrends.newsDao.getNews(id);
        this.title=news[1].toString();
        this.createTime=news[2].toString();
        this.content=news[3].toString();
        this.author=news[4].toString();
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
        //获取新闻内容，生成html文件
        Object[] news =Dao.newsTrends.newsDao.getNews(id);
        this.title=news[1].toString();
        this.createTime=news[2].toString();
        this.content=news[3].toString();
        this.author=news[4].toString();
    }
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    //获取新闻内容，生成html文件
    public String getNewsContent(String path){
        return "<section id=\"search-result\">\n" +
                "        <div class=\"container\">\n" +
                "            <div class=\"row\">\n" +
                "                <div class=\"col-12\">\n" +
                "                    <img src=\""+path+"/img/banner.jpg\" alt=\"banner\" width=\"1300\" height=\"270\">\n" +
                "                </div>\n" +
                "            </div>\n" +
                "            <br/>\n" +
                "            <div class=\"row\">\n" +
                "                <div class=\"col-lg-12\">\n"+
                "                   <div style=\"margin-top:30px\">\n"+
                "                       <h4 style=\"margin-bottom: 10px;text-align: center;font-size: 22px;font-family: '微软雅黑',serif;\">\n"+
                this.title+
                "                     \n</h4>\n"+
                "                       <h4 style=\"margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray\">\n"+
                "                           发布日期："+ this.createTime+
                "                     \n</h4>\n"+
                "                       <div id=\"newsContent\">\n"+
                "                           <div class=\"wp_articleContent\">\n"+
                newsOperation.getNewsContentToHtml(this.content,path,true)+
                "                           </div>\n"+
                "<h6 style=\"text-align:right;\">"+ this.author+"  供稿</h6>"+
                "                       </div>\n"+
                "                   </div>\n"+
                "               </div>\n"+
                "            </div>\n" +
                "        </div>\n" +
                "    </section>\n";
    }
    //获取评论，生成html文件
    public String getComments(boolean isAdmin){
        ArrayList<Object[]> commentS=Dao.newsTrends.newsCommentsDao.getComments(this.id);
        StringBuilder commentHtml= new StringBuilder("<div>");
        for (Object[] comment:commentS){
            String comment_ = comment[1].toString();
            int index=0;
            while ((index=comment_.indexOf("\\n",index))!=-1){
                comment_=comment_.replace("\\n","\n");
            }
            commentHtml.append("<div>");
            commentHtml.append("<span class=\"userId\">").append(comment[0].toString()).append("</span>");
            commentHtml.append("<span class=\"comment\">").append(comment_).append("</span>");
            commentHtml.append("<span class=\"time\">").append(comment[2].toString()).append("</span>");
            if (isAdmin) {
                commentHtml.append("<button class=\"delete-btn\" onclick='deleteComment(\"").append(comment[3].toString())
                        .append("\")'>删除</button>");
            }
            commentHtml.append("</div>");
        }
        commentHtml.append("</div>");
        return commentHtml.toString();
    }
}
