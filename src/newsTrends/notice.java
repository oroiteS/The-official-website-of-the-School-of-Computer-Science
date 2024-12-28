package newsTrends;

import Dao.newsTrends.noticeDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * ClassName: notice
 * Package: newsTrends
 * CreateTime: 2024/12/18-2:27
 * Description:
 * 通知类
 * @author SYN
 */
public class notice {
    private String id,title,publishTime,content;
    private List<Object[]> links;
    private static final Map<String, String> NOTICE_PATHS = new HashMap<>() {{
        put("academic", "/static/notice/academicNotice");
        put("notice", "/static/notice/noticeList");
    }};
    public notice() {
    }
    public notice(String id) {
        this.id = id;
        //获取通知信息
        List<Object[]> notices = noticeDao.getNoticesById(id);
        if (!notices.isEmpty()) {
            Object[] notice = notices.getFirst();
            this.title = notice[0].toString();
            this.publishTime = notice[1].toString();
            this.content = notice[2].toString();
        }
        //获取通知附件链接
        this.links = noticeDao.getNoticeLink(id);
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
        //获取通知信息
        List<Object[]> notices = noticeDao.getNoticesById(id);
        if (!notices.isEmpty()) {
            Object[] notice = notices.getFirst();
            this.title = notice[0].toString();
            this.publishTime = notice[1].toString();
            this.content = notice[2].toString();
        }
        //获取通知附件链接
        this.links = noticeDao.getNoticeLink(id);
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(String publishTime) {
        this.publishTime = publishTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<Object[]> getLinks() {
        return links;
    }

    public void setLinks(List<Object[]> links) {
        this.links = links;
    }

    public String getNoticePath(String type, String contextPath) {
        return contextPath + NOTICE_PATHS.get(type);
    }
    public String getHtmlContent() {
        if (this.content == null || this.content.isEmpty()) {
            return "";
        }

        // 处理换行符，可能遇到 \r\n 或 \n
        String formattedContent = this.content.replaceAll("\r\n|\n", "</p><p>");

        // 添加开头和结尾的标签
        return "<p>" + formattedContent + "</p>";
    }
}
