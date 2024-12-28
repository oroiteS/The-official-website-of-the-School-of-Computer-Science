package Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * ClassName: Dao
 * Package: Dao
 * CreateTime: 2024/11/27-20:48
 * Description:
 * 连接数据库的底层类
 * @author SYN
 */
public class SQLHelper {
    private static final String DRIVER_NAME ="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private final static String URL ="jdbc:sqlserver://localhost:1433;databaseName=javaEEFinal;trustServerCertificate=true";
    private static final String USER = "sa";
    private static final String PWD = "yyk200412=";
    private static Connection conn=null;
    static {
        try {
            Class.forName(DRIVER_NAME);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    public static List<Object[]> executeQueryList(String sql){
        List<Object[]> list= new ArrayList<>();
        ResultSet rs=null;
        try {
            conn = DriverManager.getConnection(URL, USER, PWD);
            Statement cmd = conn.createStatement();
            rs=cmd.executeQuery(sql);
            //元数据
            ResultSetMetaData metaRs= rs.getMetaData();
            int colsNum=metaRs.getColumnCount();
            while(rs.next()){
                Object[] arr=new Object[colsNum];
                for(int i=0;i<arr.length;i++) {
                    arr[i]=rs.getObject(i+1);
                }
                list.add(arr);
            }
            conn.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return list;
    }
    public static ResultSet executeQuery(String sql){
        ResultSet rs=null;
        try {
            conn = DriverManager.getConnection(URL, USER, PWD);
            Statement cmd = conn.createStatement();
            rs=cmd.executeQuery(sql);
            conn.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return rs;
    }
    public static int executeUpdateByParams(String sql,Object... params){//可变参数
        int r=0;
        try {
            Connection conn = DriverManager.getConnection(URL, USER, PWD);
            PreparedStatement cmd=conn.prepareStatement(sql);
            for(int i=0;i<params.length;i++){
                switch (params[i]) {
                    case String s -> cmd.setString(i + 1, s);
                    case Integer integer -> cmd.setInt(i + 1, integer);
                    case Double v -> cmd.setDouble(i + 1, v);
                    case null, default -> cmd.setObject(i + 1, params[i]);
                }
            }
            r=cmd.executeUpdate();
            conn.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return r;
    }
    public static int executeUpdate(String sql){
        int r=0;
        try {
            Connection conn = DriverManager.getConnection(URL, USER, PWD);
            Statement cmd = conn.createStatement();
            r=cmd.executeUpdate(sql);
            conn.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return r;
    }
}