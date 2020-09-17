<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: yijia
  Date: 2020/9/15
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实验一</title>
</head>
<body>
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
    night = "21:00:00";
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
<p><%= text%>！现在的时间是 <%= new Date()%>
</p>
</body>
</html>
