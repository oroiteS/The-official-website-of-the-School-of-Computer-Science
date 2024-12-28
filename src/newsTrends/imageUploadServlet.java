package newsTrends;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * ClassName: imageUploadServlet
 * Package: newsTrends
 * CreateTime: 2024/11/28-21:38
 * Description:
 * 处理新闻图片上传的servlet
 * @author SYN
 */
@WebServlet("/imageUploadServlet")
@MultipartConfig
public class imageUploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part part = request.getPart("image");
        //获取文件名
        String photo = part.getSubmittedFileName();
        //获取标题和日期
        String title = request.getParameter("title");
        String date = request.getParameter("date");
        if(!(photo.endsWith("jpg")||photo.endsWith("png")||photo.endsWith("jpeg"))){
            request.setAttribute("type","err");
            try {
                //如果格式不对，跳转
                response.sendRedirect(request.getContextPath() + "/newsTrends/newsManagement.jsp");
            } catch (IOException e) {
                System.out.println(e.getMessage());
            }
            photo="";
        }
        photo=hash.hash.getHash(title+date)+photo;
        //本地目录
        String path="F:\\大学\\JavaEE\\code\\final_experiment\\web\\temp\\img";
        File file = new File(path);
        if(!file.exists()){
            //如果目录不存在就新建一个
            file.mkdirs();
        }
        try {
            //本地名字+文件名字  将文件的名字写入本地
            part.write(path+"/"+photo);
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
        if(photo.isEmpty()){
            return;
        }
        PrintWriter out = response.getWriter();
        String jsonBuilder = "{" +
                "\"success\": true," +
                "\"fileName\": \"" + photo + "\"" +
                "}";
        out.print(jsonBuilder);
        out.flush();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}