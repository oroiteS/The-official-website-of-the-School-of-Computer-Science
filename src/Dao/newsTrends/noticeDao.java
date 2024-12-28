package Dao.newsTrends;

import Dao.SQLHelper;

import java.util.List;

/**
 * ClassName: noticeDao
 * Package: Dao.newsTrends
 * CreateTime: 2024/12/18-1:51
 * Description:
 * 通知管理的Dao类
 * @author SYN
 */
public class noticeDao {
    public static int insertNotice(String noticeId, String title, String publishTime, String publishKinds, String content){
        String sql = "insert into noticeTable VALUES (?, ?, ?, ?, ?)";
        return SQLHelper.executeUpdateByParams(sql, noticeId, title, publishTime, publishKinds, content);
    }

    public static int insertNoticeLink(String noticeId, String filePath){
        String sql = "insert into noticeLink VALUES (?, ?)";
        return SQLHelper.executeUpdateByParams(sql, noticeId, filePath);
    }

    public static List<Object[]> getNoticesByType(String publishKinds) {
        String sql = "SELECT title, publishTime, content FROM noticeTable WHERE publishKinds = '" + publishKinds + "' ORDER BY publishTime DESC";
        return SQLHelper.executeQueryList(sql);
    }

    public static int deleteNotice(String noticeId){
        String sql = "delete from noticeTable where noticeId=?";
        return SQLHelper.executeUpdateByParams(sql, noticeId);
    }

    public static List<Object[]> getNoticesById(String id) {
        String sql = "SELECT title, publishTime, content FROM noticeTable WHERE noticeId='" + id + "'";
        return SQLHelper.executeQueryList(sql);
    }

    public static List<Object[]> getNoticeLink(String id) {
        String sql = "select filePath from noticeLink where noticeId='" + id + "'";
        return SQLHelper.executeQueryList(sql);
    }

    public static List<Object[]> getNoticeLinkById(String id) {
        String sql = "select filePath from noticeLink where noticeId='" + id + "'";
        List<Object[]> notices = SQLHelper.executeQueryList(sql);
        sql = "delete from noticeLink where noticeId=?";
        SQLHelper.executeUpdateByParams(sql, id);
        return notices;
    }

    public static void main(String[] args) {
        String type="academic";
        List<Object[]> notices = getNoticesByType(type);
        for (Object[] notice : notices) {
            System.out.println(notice[0] + " " + notice[1] + " " + notice[2]);
        }
    }
}
