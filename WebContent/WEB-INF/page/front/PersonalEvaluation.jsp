<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>个人测评</title>
<link rel=stylesheet type=text/css href="${contextPath}/static/lm/css/index.css">
</head>

<body id="body">
<div class="div_body">
  <div class="div_menu">
    <div class="div_wid1100">
      <div class="div_logo"><img src="${contextPath}/static/lm/images/logo.png" width="135" height="35"  alt=""/></div>
      <div class="div_ul_menu menu">
        <ul>
          <li><a href="${contextPath}/front/index" class="sy">首页</a></li>
          <li><a href="${contextPath}/front/OnlineConsultation">在线咨询</a></li>
          <li><a href="${contextPath}/front/PolicyRelated">政策相关</a></li>
          <li><a href="${contextPath}/front/LineActivity">线下活动</a></li>
          <li class="current"><a href="${contextPath}/front/PersonalEvaluation">个人评测</a></li>
          <li><a href="${contextPath}/front/NoviceGuide">新手指南</a> </li>
        </ul>
      </div>
      <div class="div_z_d"><span><img src="${contextPath}/static/lm/images/zc.png" width="23" height="24"  alt=""/></span><a href="javascript:void(0)" id="button1">注册</a><span><img src="${contextPath}/static/lm/images/dl.png" width="23" height="24"  alt=""/></span><a href="javascript:void(0)" id="button">登录</a></div>
    </div>
  </div>
  <div class="div_back_yun">
    <div class="div_zcxg_dz">个人评测 <img src="${contextPath}/static/lm/images/grpctp.png" width="90" height="90"  alt=""/></div>
    <div class="div_xxk">
      <p>可以选择哪些大学？大学的哪些专业好？我性格内向/外向，适合什么专业？</p>
      <p>这些专业前景怎样？每年几百万大学生就业难,大多因为选错适合自己天赋兴趣的专业,我该如何选择？</p>
      <p>我性格内向/外向，以后适合什么工作？哪些职业正好匹配我的性格？</p>
      <p>以我的个性从事什么行业好？我性格中的优势和劣势是什么？</p>
    </div>
  </div>
  <div class="div_wid1100 position">
    <div class="div_pre">
      <p> 超过60%的高考考生在填报自愿时都面临选择的迷茫陷入无所适从的困境。大多数考生家长由于缺乏参考数据、经验和相关专业知识导致在志愿填报时无从下手，最终往往是草率填报，等招生结束后才暗自后悔。正确的高考志愿填报是需要结合考生自己的性格、天赋、潜能和庞大的高考数据来共同完成。系统根据测试者提交的答案分析并提供可靠、科学和严谨的方案，使考生对填报志愿有理有据不再迷茫。</p>
      <p>对于面对即将择校的学生们，在某种程度上，对职业生涯的发展会产生重大的影响，所以必须慎之又慎。进行一下测评，对你有帮助哦！ </p>
    </div>
    <hr />
    <div class="div_djpc">
      <ul>
        <li><span class="span_nrds"><b>专业定位</b>
          <p>推荐适合您的专业</p>
          <p>银行会员可进行测评</p>
          </span> <span class="sp_djcp"><a href="javascript:void(0)">点击测评</a></span> </li>
        <li class="mar_lr_35"><span class="span_nrds"><b>院校优选</b>
          <p>推荐适合您的院校</p>
          <p>金卡会员可进行测评</p>
          </span> <span class="sp_djcp"><a href="javascript:void(0)">点击测评</a></span></li>
        <li><span class="span_nrds"><b>个人志愿填报方案</b>
          <p>量身定制志愿填报方案</p>
          <p>铂金卡会员可进行测评</p>
          </span> <span class="sp_djcp"><a href="javascript:void(0)">点击测评</a></span> </li>
      </ul>
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
<script type="text/javascript" src="${contextPath}/static/lm/js/index.js"></script>