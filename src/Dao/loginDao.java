package Dao;
import hash.hash;

import java.util.List;

/**
 * ClassName: Dao
 * Package: Dao
 * CreateTime: 2024/11/27-20:48
 * Description:
 * 登录的数据库操作类
 * @author SYN
 */
public class loginDao {
    // 获取身份
    public static String getIdentity(String uid){
        String sql="select uIdentity from loginTable where userId='"+uid+"'";
        //System.out.println(sql);
        List<Object[]> list=SQLHelper.executeQueryList(sql);
        String identity=list.getFirst()[0].toString();
        return identity==null?"":identity;
    }
    // 登录验证
    public static boolean query(String uid,String uPassword){
        String sql="select uPassword from loginTable where userId='"+uid+"'";
        List<Object[]> list=SQLHelper.executeQueryList(sql);
        if (list.size()!=1){
            return false;
        }
        else{
            String pass=list.getFirst()[0].toString();
            return hash.getHash(uPassword).equals(pass);
        }
    }

    public static void main(String[] args) {
        String sql="insert into loginTable values(?,?,?);";
        SQLHelper.executeUpdateByParams(sql,"12345",hash.getHash("111111"),"administrator");
        SQLHelper.executeUpdateByParams(sql,"54321",hash.getHash("111111"),"user");
    }
}
