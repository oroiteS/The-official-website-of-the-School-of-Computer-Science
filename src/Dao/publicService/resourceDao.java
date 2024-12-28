package Dao.publicService;

import Dao.SQLHelper;

import java.util.Arrays;
import java.util.List;

/**
 * ClassName: resourceDao
 * Package: Dao.publicService
 * CreateTime: 2024/12/14-17:21
 * Description:
 * 资源下载的Dao类
 * @author SYN
 */
public class resourceDao {
    public static int insertResource(String resourceId, String title, String publishTime, String publishKinds){
        String sql = "insert into resourceTable VALUES (?, ?, ?, ?)";
        return SQLHelper.executeUpdateByParams(sql,resourceId,title, publishTime, publishKinds);
    }
    public static int insertResourceLink(String resourceId, String filePath){
        String sql = "insert into resourceLink VALUES (?, ?)";
        return SQLHelper.executeUpdateByParams(sql,resourceId,filePath);
    }
    public static List<Object[]> getResourcesByType(String publishKinds) {
        String sql = "SELECT title, publishTime FROM resourceTable WHERE publishKinds = '" +publishKinds+ "' ORDER BY publishTime DESC";
        return SQLHelper.executeQueryList(sql);
    }

    public static int deleteResource(String resourceId){
        String sql = "delete from resourceTable where resourceId=?";
        return SQLHelper.executeUpdateByParams(sql,resourceId);
    }

    public static List<Object[]> getResourcesById(String id) {
        String sql = "SELECT title, publishTime FROM resourceTable WHERE resourceId='"+id+"'";
        return SQLHelper.executeQueryList(sql);
    }

    public static List<Object[]> getResourcesLink(String id) {
        String sql="select filePath from resourceLink where resourceId='"+id+"'";
        return SQLHelper.executeQueryList(sql);
    }
    public static List<Object[]> getResourcesLinkById(String id) {
        String sql="select filePath from resourceLink where resourceId='"+id+"'";
        List<Object[]> resources = SQLHelper.executeQueryList(sql);
        sql="delete from resourceLink where resourceId=?";
        SQLHelper.executeUpdateByParams(sql,id);
        return resources;
    }

    public static void main(String[] args) {
        String id="aae1e0ae3897587e58fd1556c7c6d383";
        /*System.out.println(Arrays.toString(getResourcesById(id).getFirst()));
        System.out.println(Arrays.toString(getResourcesLink("aae1e0ae3897587e58fd1556c7c6d383").getFirst()));*/
        System.out.println("SELECT title, publishTime FROM resourceTable WHERE resourceId='"+id+"'");
    }
}
