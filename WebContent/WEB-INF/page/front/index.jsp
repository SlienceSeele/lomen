<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>龙门网</title>
<link rel=stylesheet type=text/css href="${contextPath}/static/lm/css/index.css">
</head>

<body id="body">
<div class="div_body">
  <div class="div_menu">
    <div class="div_wid1100">
      <div class="div_logo"><img src="${contextPath}/static/lm/images/logo.png" width="135" height="35"  alt=""/></div>
      <div class="div_ul_menu menu">
        <ul>
          <li class="current"><a href="${contextPath}/front/index" class="sy">首页</a></li>
          <li><a href="${contextPath}/front/OnlineConsultation">在线咨询</a></li>
          <li><a href="${contextPath}/front/PolicyRelated">政策相关</a></li>
          <li><a href="${contextPath}/front/LineActivity">线下活动</a></li>
          <li><a href="${contextPath}/front/PersonalEvaluation">个人评测</a></li>
          <li><a href="${contextPath}/front/NoviceGuide">新手指南</a> </li>
        </ul>
      </div>
      <div class="div_z_d"><span><img src="${contextPath}/static/lm/images/zc.png" width="23" height="24"  alt=""/></span><a href="javascript:void(0)" id="button1">注册</a><span><img src="${contextPath}/static/lm/images/dl.png" width="23" height="24"  alt=""/></span><a href="javascript:void(0)" id="button">登录</a></div>
    </div>
  </div>
  <div class="div_wid1100">
    <div class="div_dt bot_ma"><img src="${contextPath}/static/lm/images/dt.png" width="100%" height="380"  alt=""/></div>
    <div class="div_center">
      <div class="div_left_yxxx">
        <div class="div_yxxx_title"><a href="javascript:void(0)">院校信息</a></div>
        <div class="div_yxxx_ul_li">
          <ul>
            <li><span class="line_span"><b>中南大学</b>
              <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湖南大学</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>长沙理工大学</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湘潭大学</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湖南农业大学</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>南华大学</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湖南理工大学</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湖南师范大学</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湖南科技大学</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湖南工学院</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>中南林业科技大学</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湖南文理学院</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湖南城市学院</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湖南中医药大学</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>湖南涉外经济学院</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
            <li><span class="line_span"><b>长沙医学院</b>
             <p><a href="javascript:void(0)">学生介绍</a> | <a href="javascript:void(0)">招生简章</a></p>
              </span></li>
          </ul>
        </div>
      </div>
      <div class="div_right_zyzx">
        <div class="div_zyzx_title"><a href="javascript:void(0)">志愿咨询</a></div>
        <div class="div_zyzx_n">
          <ul>
            <li>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td rowspan="3" align="center" width="115"><img src="${contextPath}/static/lm/images/zyzx.png" width="85" height="61"  alt=""/></td>
                  <td height="25" valign="bottom"><b>专业定位</b></td>
                </tr>
                <tr>
                  <td height="25"><span>精准定位适合填报专业</span></td>
                </tr>
                <tr>
                  <td height="40"><a href="javascript:void(0)" class="a_djzx">点击咨询</a></td>
                </tr>
              </table>
            </li>
            <li>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td rowspan="3" align="center" width="115"><img src="${contextPath}/static/lm/images/zyzx.png" width="85" height="61"  alt=""/></td>
                  <td height="25" valign="bottom"><b>院校优选</b></td>
                </tr>
                <tr>
                  <td height="25"><span>选择最合适你的高校</span></td>
                </tr>
                <tr>
                  <td height="40"><a href="javascript:void(0)" class="a_djzx">点击咨询</a></td>
                </tr>
              </table>
            </li>
            <li>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td rowspan="3" align="center" width="115"><img src="${contextPath}/static/lm/images/zyzx.png" width="85" height="61"  alt=""/></td>
                  <td height="25" valign="bottom"><b>个人志愿定制</b></td>
                </tr>
                <tr>
                  <td height="25"><span>一对一量身定制志愿填报案</span></td>
                </tr>
                <tr>
                  <td height="40"><a href="javascript:void(0)" class="a_djzx">点击咨询</a></td>
                </tr>
              </table>
            </li>
          </ul>
        </div>
      </div>
      <div class="hei_20"></div>
      <div class="div_left_zcxg">
        <div class="div_zcxg_title"><a href="javascript:void(0)" class="a_zcxg">政策相关</a> <a href="javascript:void(0)" class="a_menu">更多>></a></div>
        <div class="div_left_n">
          <div class="div_list"> <b>高考新闻</b>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td rowspan="4" height="115" width="110" align="left" valign="middle"><img src="${contextPath}/static/lm/images/ks.png" width="100" height="100"  alt=""/></td>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
            </table>
          </div>
          <div class="div_list"> <b>高考政策</b>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td rowspan="4" height="115" width="110" align="left" valign="middle"><img src="${contextPath}/static/lm/images/ks.png" width="100" height="100"  alt=""/></td>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div class="div_right_xzhd">
        <div class="div_xzhd_title"><a href="javascript:void(0)" class="a_zcxg">线下活动</a> <a href="javascript:void(0)" class="a_menu">更多>></a></div>
        <div class="div_right_n">
          <div class="div_list"> <b>线下咨询</b>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td rowspan="4" height="115" width="110" align="left" valign="middle"><img src="${contextPath}/static/lm/images/ks.png" width="100" height="100"  alt=""/></td>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
            </table>
          </div>
          <div class="div_list"> <b>新闻报道</b>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td rowspan="4" height="115" width="110" align="left" valign="middle"><img src="${contextPath}/static/lm/images/ks.png" width="100" height="100"  alt=""/></td>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
              <tr>
                <td align="left" class="xx">长沙理工大学</td>
                <td width="120" align="center" class="xx">2015-05-01</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div class="hei_10"></div>
      <div class="div_bor_20"></div>
    </div>
  </div>
  <div class="div_ld"></div>
  <div class="div_foot">
    <p>京ICP备 14000203号-1 | Copyright © 2012-2014 爱维创思Awchance.com 版权所有</p>
    <p>
      <label>联系我们: </label>
      电话：13000000000 企业QQ：88888888 在线客服，点击咨询</p>
    <p>
      <label>合作网站:</label>
      掌职网</p>
  </div>
</div>
<div id="popupContact">
  <div class="div_hy"><img src="${contextPath}/static/lm/images/hy.png" width="400" height="62"  alt=""/></div>
  <div class="div_dl"> <span class="hydl">会员登录</span>
    <div class="div_zhm_mm">
      <p>
        <input type="text" class="zhm" placeholder="登录名">
        <input type="password" class="mm" placeholder="密&#12288码">
      </p>
      <p><a href="javascript:void(0)" class="wjmm">忘记密码？</a></p>
      <p><a href="javascript:void(0)" class="dl">登 录</a></p>
      <p class="p_hmyzh">还没有账号？<a href="javascript:void(0)" class="xzzc">现在注册</a></p>
    </div>
  </div>
</div>
<div id="backgroundPopup"></div>
<div id="popupContact1">
  <div class="div_hy"><img src="${contextPath}/static/lm/images/hy.png" width="400" height="62"  alt=""/></div>
  <div class="div_dl"> <span class="hydl">会员注册</span>
    <div class="div_zhm_mm">
      <p>
        <input type="text" class="zhm" placeholder="登录名">
        <input type="text" class="mm" placeholder="手机号">
      </p>
      <p class="mar_10px">
        <input type="password" class="zhm" placeholder="密&#12288码">
        <input type="password" class="mm" placeholder="确认密码">
      </p>
      <p><a href="javascript:void(0)" class="zc">注 册</a></p>
      <p class="p_hmyzh">已有账号，<a href="javascript:void(0)" class="xzzc">现在登录</a></p>
    </div>
  </div>
</div>
<div id="backgroundPopup1"></div>
</body>
</html>
<script type="text/javascript" src="${contextPath}/static/lm/js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="${contextPath}/static/lm/js/js.js"></script>