package publicService;

import Dao.publicService.resourceDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * ClassName: resource
 * Package: publicService
 * CreateTime: 2024/12/15-1:58
 * Description:
 * 资源类
 * @author SYN
 */
public class resource {
    private String id,title,publishTime;
    private List<Object[]> links;
    private static final Map<String, String> RESOURCE_PATHS = new HashMap<>() {{
        put("student", "/static/resource/resource");
        put("teaching", "/static/resource/resource1");
        put("research", "/static/resource/resource2");
        put("basic", "/static/resource/resource3");
    }};
    public resource() {
    }
    public resource(String id) {
        this.id = id;
        //获取资源信息
        List<Object[]> resources = resourceDao.getResourcesById(id);
        if (!resources.isEmpty()) {
            Object[] resource = resources.getFirst();
            this.title = resource[0].toString();
            this.publishTime = resource[1].toString();
        }
        //获取资源链接
        this.links = resourceDao.getResourcesLink(id);
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
        //获取资源信息
        List<Object[]> resources = resourceDao.getResourcesById(id);
        if (!resources.isEmpty()) {
            Object[] resource = resources.getFirst();
            this.title = resource[0].toString();
            this.publishTime = resource[1].toString();
        }
        //获取资源链接
        this.links = resourceDao.getResourcesLink(id);
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

    public List<Object[]> getLinks() {
        return links;
    }

    public void setLinks(List<Object[]> links) {
        this.links = links;
    }

    public String getResourcePath(String type, String contextPath) {
        return contextPath + RESOURCE_PATHS.get(type);
    }
}
