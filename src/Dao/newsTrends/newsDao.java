package Dao.newsTrends;

import Dao.SQLHelper;

import java.util.ArrayList;

/**
 * ClassName: newsDao
 * Package: Dao.newsTrends
 * CreateTime: 2024/12/2-13:37
 * Description:
 * 新闻数据库实现类
 * @author SYN
 */
public class newsDao {
    //将新闻数据从临时表中提取到正式表中
    public static int insertNews(String hashTitle){
        //插入数据后删除
        String sql="insert into news select * from tempNews where id=?";
        int flag= SQLHelper.executeUpdateByParams(sql,hashTitle);
        if(flag==1){
            String sql2="delete from tempNews where id=?";
            return SQLHelper.executeUpdateByParams(sql2,hashTitle);
        }else{
            return flag;
        }
    }
    //获取正文内容
    public static String getTempContent(String hashTitle){
        String sql="select content from tempNews where id='"+hashTitle+"'";
        return SQLHelper.executeQueryList(sql).getFirst()[0].toString();
    }
    //删除临时新闻
    public static int deleteTempNews(String hashTitle){
        String sql="delete from tempNews where id=?";
        return SQLHelper.executeUpdateByParams(sql,hashTitle);
    }
    //获取临时新闻
    public static Object[] getTempNews(String hashTitle){
        String sql="select * from tempNews where id='"+hashTitle+"'";
        return SQLHelper.executeQueryList(sql).getFirst();
    }
    //获取新闻信息
    public static ArrayList<Object[]> getNews(){
        String sql="select title,createTime,creator from News order by createTime desc";
        return (ArrayList<Object[]>) SQLHelper.executeQueryList(sql);
    }
    //得到新闻
    public static Object[] getNews(String hashTitle){
        String sql="select * from news where id='"+hashTitle+"'";
        return SQLHelper.executeQueryList(sql).getFirst();
    }
    //删除新闻
    public static int deleteNews(String hashTitle){
        String sql="delete from news where id=?";
        return SQLHelper.executeUpdateByParams(sql,hashTitle);
    }
    //得到当前新闻的数量
    public static int getNewsNumber(){
        String sql="select count(*) as newsCount from news";
        return Integer.parseInt(SQLHelper.executeQueryList(sql).getFirst()[0].toString());
    }
    //得到指定页数的新闻的信息
    public static ArrayList<Object[]> getNewsByPage(int page){
        String sql="select id,title,createTime from news order by createTime desc offset "+(page-1)*12+
                " rows fetch next 12 rows only";
        return (ArrayList<Object[]>) SQLHelper.executeQueryList(sql);
    }
}
