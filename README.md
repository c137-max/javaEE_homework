#### 简介
这个项目存在的意义仅是为了学习git,以及记录学习javaEE

#### 运行环境
+ jdk 14.0.2
+ tomcat 7.0
+ mssql-server（还没用到）

#### tomcat7的配置
自行搜索

#### 实验一：
+ 要求：  
设计一个可动态显示问候语及当前时间的JSP页面Hello.jsp。要求：时间在6点以前显示“早上好！”，在6点至12点之间显示“上午好！”，在12点至14点之间显示“中午好！”，在14点至18点之间显示“下午好！”，在18点之后显示“晚上好！”。
+ 难点：  
时间的比较，java 没有现成比较时间的方法
+ 分析：  
将时间转成秒数再比较即可，详见 [java 直接比较时间](https://www.cnblogs.com/huangyuechujiu/p/13680750.html)
+ 部分源码：
```jsp
<%!
    String morning;
    String noon;
    String afternoon;
    String night;
    String text;
    private static int Time2Int(String ftDate) {
        String[] splitTime = ftDate.split(":");
        int h = Integer.parseInt(splitTime[0]);
        int m = Integer.parseInt(splitTime[1]);
        int s = Integer.parseInt(splitTime[2]);
        return h * 3600 + m * 60 + s;
    }

    private boolean CompareNowTime(String cTime) {
        Date date = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("HH:mm:ss");
        return Time2Int(cTime) <= Time2Int(ft.format(date));
    }
%>
<%
    SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");
    morning = "06:00:00";
    noon = "12:00:00";
    afternoon = "14:00:00";
    night = "18:00:00";
    if (CompareNowTime(night)) {
        text = "晚上好";
    } else if (CompareNowTime(afternoon)){
        text = "下午好";
    } else if (CompareNowTime(noon)){
        text = "中午好";
    } else if (CompareNowTime(morning)){
        text = "早上好";
    } else {
        text = "晚上好啊";
    }

%>
<p><%= text%>！现在的时间是 <%= new Date()%></p>

```

#### 实验二：

未有

