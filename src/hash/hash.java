package hash;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * ClassName: hash
 * Package: hash
 * CreateTime: 2024/11/27-21:02
 * Description:
 * MD5加密
 * @author SYN
 */
public class hash {
    public static String getHash(String str){
        MessageDigest hash = null;
        try{
            hash = MessageDigest.getInstance("MD5");
            byte[] bytes = hash.digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder result = new StringBuilder();
            for (byte b : bytes) {
                String temp = Integer.toHexString(b & 0xff);
                if (temp.length() == 1) {
                    result.append("0").append(temp);
                } else {
                    result.append(temp);
                }
                //result.append(temp);
            }
            return result.toString();
        } catch (NoSuchAlgorithmException e) {
            System.out.println(e.getMessage());
        }
        return "";
    }
}
