package newsTrends;

/**
 * ClassName: newsOperation
 * Package: newsTrends
 * CreateTime: 2024/12/4-16:41
 * Description:
 *
 * @author SYN
 */
public class newsOperation {
    //将新闻内容转化为html格式文件
    public static String getNewsToHtml(Object[] newS,String path,boolean flag){
        //获取新闻内容，生成html文件
        String[] news=new String[newS.length];
        for(int i=0;i<newS.length;i++){
            news[i]=newS[i].toString();
        }
        return "<!DOCTYPE html>\n" +
                "<html lang=\"zh\">\n" +
                "<head>\n" +
                "<title>"+news[1]+"</title>\n" +
                "    <link type=\"text/css\" href=\""+path+"/css/bootstrap.css\" rel=\"stylesheet\">\n" +
                "    <link type=\"text/css\" href=\""+path+"/css/header.css\" rel=\"stylesheet\">\n" +
                "    <link type=\"text/css\" href=\""+path+"/css/footer.css\" rel=\"stylesheet\">\n" +
                "    <link type=\"text/css\" href=\""+path+"/css/list.css\" rel=\"stylesheet\">"+
                "</head>\n" +
                "<body>\n" +
                "<header id=\"header\"\n" +
                "        style=\"position:fixed;top:0;left:0;width:100%;z-index:97;background:linear-gradient(to left, rgb(21, 153, 87), rgb(21, 87, 153));height:100px\">\n" +
                "    <div class=\"header-container\">\n" +
                "        <a href=\"#\" class=\"logo d-flex align-items-center\">\n" +
                "            <img src=\""+path+"/img/logoNew_1.png\" alt=\"logo\">\n" +
                "            <img src=\""+path+"/img/logoNew_2.png\" alt=\"logo\">\n" +
                "        </a>\n" +
                "        <nav id=\"navbar\" class=\"navbar\">\n" +
                "            <ul>\n" +
                "                <li class=\"dropdown\">\n" +
                "                    <a href=\"#\" >\n" +
                "                        <span style=\"color:white;font-size:18px;font-weight:bolder\">首页</span>\n" +
                "                    </a>\n" +
                "                </li>\n" +
                "                <li class=\"dropdown\">\n" +
                "                    <a href=\"#\" >\n" +
                "                        <span style=\"color:white;font-size:18px;font-weight:bolder\">学院概况</span>\n" +
                "                    </a>\n" +
                "                    <ul>\n" +
                "                        <li><a href=\"#\" \n" +
                "                               target=\"_self\">学院简介</a></li>\n" +
                "                        <li><a href=\"#\" \n" +
                "                               target=\"_self\">学院领导</a></li>\n" +
                "                        <li><a href=\"#\" \n" +
                "                               target=\"_self\">组织机构</a></li>\n" +
                "                    </ul>\n" +
                "                </li>\n" +
                "                <li class=\"dropdown\">\n" +
                "                    <a href=\"javascript:void(0)\">\n" +
                "                        <span style=\"color:white;font-size:18px;font-weight:bolder\">新闻动态</span>\n" +
                "                    </a>\n" +
                "                    <ul>\n" +
                "                        <li><a href=\"#\" \n" +
                "                               target=\"_self\">新闻动态</a></li>\n" +
                "                        <li> <a href=\"#\" target=\"_self\">教务通知</a></li>\n" +
                "                        <li><a href=\"#\" \n" +
                "                               target=\"_self\">通知公告</a></li>\n" +
                "                    </ul>\n" +
                "                </li>\n" +
                "                <li class=\"dropdown\">\n" +
                "                    <a href=\"javascript:void(0)\">\n" +
                "                        <span style=\"color:white;font-size:18px;font-weight:bolder\">学科建设</span>\n" +
                "                    </a>\n" +
                "                    <ul>\n" +
                "                        <li><a href=\"#\" \n" +
                "                               target=\"_self\">师资概况</a></li>\n" +
                "                        <li><a href=\"#\" \n" +
                "                               target=\"_self\">教师名录</a></li>\n" +
                "                        <li>\n" +
                "                            <a href=\"#\" \n" +
                "                               target=\"_self\">科研成果</a></li>\n" +
                "                    </ul>\n" +
                "                </li>\n" +
                "                <li class=\"dropdown\">\n" +
                "                    <a href=\"javascript:void(0)\">\n" +
                "                        <span style=\"color:white;font-size:18px;font-weight:bolder\">本科教学</span>\n" +
                "                    </a>\n" +
                "                    <ul>\n" +
                "                        <li>\n" +
                "                            <a href=\"#\" \n" +
                "                               target=\"_self\">专业介绍</a></li>\n" +
                "                        <li>\n" +
                "                            <a href=\"#\" \n" +
                "                               target=\"_self\">教学成果</a></li>\n" +
                "                    </ul>\n" +
                "                </li>\n" +
                "                <li class=\"dropdown\">\n" +
                "                    <a href=\"javascript:void(0)\">\n" +
                "                        <span style=\"color:white;font-size:18px;font-weight:bolder\">研究生</span>\n" +
                "                    </a>\n" +
                "                    <ul>\n" +
                "                        <li><a href=\"#\" \n" +
                "                               target=\"_self\">研究生招生</a></li>\n" +
                "                        <li>\n" +
                "                            <a href=\"#\" \n" +
                "                               target=\"_self\">专业介绍</a></li>\n" +
                "                        <li><a href=\"#\" target=\"_self\">规章制度</a>\n" +
                "                        </li>\n" +
                "                        <li><a href=\"#\" \n" +
                "                               target=\"_self\">导师名录</a></li>\n" +
                "                    </ul>\n" +
                "                </li>\n" +
                "                <li class=\"dropdown\">\n" +
                "                    <a href=\"javascript:void(0)\">\n" +
                "                        <span style=\"color:white;font-size:18px;font-weight:bolder\">公共服务</span>\n" +
                "                    </a>\n" +
                "                    <ul>\n" +
                "                        <li><a href=\"#\" target=\"_self\">一卡通服务</a>\n" +
                "                        </li>\n" +
                "                        <li><a href=\"#\" target=\"_self\">图书借阅</a>\n" +
                "                        </li>\n" +
                "                        <li><a href=\"#\" target=\"_self\">校车时刻表</a>\n" +
                "                        </li>\n" +
                "                        <li><a href=\"#\"\n" +
                "                               target=\"_self\">校园地图</a></li>\n" +
                "                        <li><a href=\"#\"\n" +
                "                               target=\"_self\">资源下载</a></li>\n" +
                "                        <li><a href=\"#\"\n" +
                "                               target=\"_self\">就业指导</a></li>\n" +
                "                        <li><a href=\"#\" target=\"_self\">在线咨询</a>\n" +
                "                        </li>\n" +
                "                    </ul>\n" +
                "                </li>\n" +
                "            </ul>\n" +
                "        </nav>\n" +
                "    </div>\n" +
                "</header>"+
                "<main>\n" +
                "    <section id=\"search-result\">\n" +
                "        <div class=\"container\">\n" +
                "            <div class=\"row\">\n" +
                "                <div class=\"col-12\">\n" +
                "                    <img src=\""+path+"/img/banner.jpg\" alt=\"banner\" width=\"1300\" height=\"270\">\n" +
                "                </div>\n" +
                "            </div>\n" +
                "            <br/>\n" +
                "            <div class=\"row\">\n" +
                "                <div class=\"col-lg-12\">\n"+
                "                   <div style=\"margin-top:30px\">\n"+
                "                       <h4 style=\"margin-bottom: 10px;text-align: center;font-size: 22px;font-family: '微软雅黑',serif;\">\n"+
                news[1]+
                "                     \n</h4>\n"+
                "                       <h4 style=\"margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray\">\n"+
                "                           发布日期："+news[2]+
                "                     \n</h4>\n"+
                "                       <div id=\"newsContent\">\n"+
                "                           <div class=\"wp_articleContent\">\n"+
                getNewsContentToHtml(news[3],path,flag)+
                "                           </div>\n"+
                "<h6>"+news[4]+"  供稿</h6>"+
                "                       </div>\n"+
                "                   </div>\n"+
                "               </div>\n"+
                "            </div>\n" +
                "        </div>\n" +
                "    </section>\n" +
                "</main>\n" +
                "</body>\n" +
                "</html>";
    }
    //将正文内容转化为html格式文件
    public static String getNewsContentToHtml(String content,String path,boolean flag){
        int index = 0;
        while((index=content.indexOf("\\n",index))!=-1){
            content=content.substring(0,index)+"</span></p>" +
                    "<p style=\"background:white;color:#222222;line-height:26px;text-indent:28px;font-family:arial, 宋体, helvetica, sans-serif;font-size:18px;\">"+
                    "<span style=\"color:black;line-height:24px;font-family:宋体,serif;font-size:16px;\"></span>\n"+
                    "                                   <span style=\"font-family:宋体, simsun,serif;\">&nbsp;</span>\n"+
                    "                                   <span style=\"font-family:宋体, simsun,serif;\">\n"+
                    content.substring(index+2);
        }
        StringBuilder result = new StringBuilder("<p style=\"background:white;color:#222222;line-height:26px;text-indent:28px;font-family:arial, 宋体, helvetica, sans-serif;font-size:18px;\">"+
                "<span style=\"color:black;line-height:24px;font-family:宋体,serif;font-size:16px;\"></span>\n"+
                "                                   <span style=\"font-family:宋体, simsun,serif;\">&nbsp;</span>\n"+
                "                                   <span style=\"font-family:宋体, simsun,serif;\">\n"+content+"</span></p>");
        index = 0;
        while ((index = result.indexOf("<img alt=\"\" src=\"", index))!= -1) {
            int endIndex = result.indexOf("\">", index);
            if (endIndex!= -1) {
                String imgPath = result.substring(index+17, endIndex);
                String imgTag = getString(path, flag, imgPath);
                result= new StringBuilder(result.substring(0, index) + imgTag + result.substring(endIndex + 1));
            } else {
                break;
            }
        }
        return result.toString();
    }

    private static String getString(String path, boolean flag, String imgPath) {
        String imgTag;
        if(flag){
            imgTag = "<div style=\"display:flex;justify-content: center;align-items: center;flex-direction: " +
                    "column;\"><img width=\"648\" height=\"430\" src=\""+ path +"/newsImg/" + imgPath + "\" " +
                    "alt=\""+ imgPath +"\"></div";
        }else{
            imgTag = "<div style=\"display:flex;justify-content: center;align-items: center;flex-direction: " +
                    "column;\"><img width=\"648\" height=\"430\" src=\""+ path +"/temp/img/" + imgPath + "\" " +
                    "alt=\""+ imgPath +"\"></div";
        }
        return imgTag;
    }
}
