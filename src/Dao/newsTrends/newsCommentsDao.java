package Dao.newsTrends;

import Dao.SQLHelper;

import java.util.ArrayList;

/**
 * ClassName: newsCommentsDao
 * Package: Dao.newsTrends
 * CreateTime: 2024/12/4-16:54
 * Description:
 * 新闻评论数据库实现类
 * @author SYN
 */
public class newsCommentsDao {
    //插入评论
    public static int insertComments(String id,String newsId,String userId,String comment,String createTime){
        String sql="insert into newsComments values(?,?,?,?,?)";
        return SQLHelper.executeUpdateByParams(sql,id,newsId,userId,comment,createTime);
    }
    //获取评论
    public static ArrayList<Object[]> getComments(String hashTitle){
        String sql="select userid,comment,createTime,id from newsComments where newsId='"+hashTitle+"'";
        return (ArrayList<Object[]>) SQLHelper.executeQueryList(sql);
    }
    //删除评论
    public static int deleteComments(String id){
        String sql="delete from newsComments where id='"+id+"'";
        return SQLHelper.executeUpdateByParams(sql);
    }
}
