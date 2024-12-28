package Dao.newsTrends;
import Dao.SQLHelper;

import java.util.ArrayList;

/**
 * ClassName: newsTempUploadDao
 * Package: Dao.newsTrends
 * CreateTime: 2024/11/29-16:19
 * Description:
 * 处理新闻临时预览的数据库操作类
 * @author SYN
 */
public class newsTempUploadDao {
    // 插入新闻
    public static boolean insertTempNews(String title,String date,String author,String content,String hashTitle){
        String sql="insert into tempNews values('"+hashTitle+"','"+title+"','"+date+"','"+content+"','"+author+"')";
        return SQLHelper.executeUpdate(sql) == 1;
    }
    //获取新闻
    public static ArrayList<Object[]> getNews(){
        String sql="select title,createTime,creator from tempNews order by createTime desc";
        return (ArrayList<Object[]>) SQLHelper.executeQueryList(sql);
    }
}
