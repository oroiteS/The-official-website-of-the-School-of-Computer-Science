package verificationCode;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

/**
 * ClassName: verificationCode.verificationCode
 * Package: verificationCode
 * CreateTime: 2024/11/27-17:22
 * Description:
 * 验证码生成类
 * @author SYN
 */
@WebServlet("/verificationCode")
public class verificationCode extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置页面不缓存
        response.setHeader("Pragma","No-cache");
        response.setHeader("Cache-Control","no-cache");
        response.setDateHeader("Expires",0);
        //在内存当中创建图像
        int width=60,height=40;
        BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
        //获取图形上下文
        Graphics g=image.getGraphics();
        Random random=new Random();
        //设定背景色
        g.setColor(new Color(237, 236, 233));
        g.fillRect(0,0,width,height);
        g.setFont(new Font("Times New Roman",Font.PLAIN,18));
        //随机产生干扰线
        for(int i=0;i<200;++i){
            int x=random.nextInt(width);
            int y=random.nextInt(height);
            int x1=random.nextInt(12);
            int y1=random.nextInt(12);
            g.drawLine(x,y,x1,y1);
        }
        //获取随机产生的验证码（4位数字）
        StringBuilder sRand= new StringBuilder();
        for(int i=0;i<4;i++){
            String rand=String.valueOf(random.nextInt(10));
            sRand.append(rand);
            g.setColor(new Color(30+random.nextInt(160),40+random.nextInt(170),40+random.nextInt(180)));
            g.drawString(rand,13*i+6,16);
        }
        request.getSession().setAttribute("verificationCode",sRand.toString());
        g.dispose();
        ImageIO.write(image,"JPEG",response.getOutputStream());
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doGet(request,response);
    }
}
