<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>新手指南</title>
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
            <li><a href="${contextPath}/front/PersonalEvaluation">个人评测</a></li>
            <li class="current"><a href="${contextPath}/front/NoviceGuide">新手指南</a> </li>
        </ul>
      </div>
      <div class="div_z_d"><span><img src="${contextPath}/static/lm/images/zc.png" width="23" height="24"  alt=""/></span><a href="javascript:void(0)" id="button1">注册</a><span><img src="${contextPath}/static/lm/images/dl.png" width="23" height="24"  alt=""/></span><a href="javascript:void(0)" id="button">登录</a></div>
    </div>
  </div>
  <div class="div_back_yun">
    <div class="div_zcxg_dz">新手指南 <img src="${contextPath}/static/lm/images/xszntp.png" width="90" height="90"  alt=""/></div>
    <div class="div_xxk">
      <p>可以选择哪些大学？大学的哪些专业好？我性格内向/外向，适合什么专业？</p>
      <p>这些专业前景怎样？每年几百万大学生就业难,大多因为选错适合自己天赋兴趣的专业,我该如何选择？</p>
      <p>我性格内向/外向，以后适合什么工作？哪些职业正好匹配我的性格？</p>
      <p>以我的个性从事什么行业好？我性格中的优势和劣势是什么？</p>
    </div>
  </div>
  <div class="div_wid1100 position">
    <div class="div_dx">
      <div class="div_left_xw"><a href="javascript:void(0)" class="xz">在线咨询说明</a></div>
      <div class="div_right_zc"><a href="javascript:void(0)">个人测评说明</a></div>
    </div>
    <div class="div_pre">
      <pre>
一、在线咨询受理范围

      1. 对本校有关发展的意见和建议；
      2. 对学校教学、行政工作有疑问。


二、对咨询的要求

      1. 为方便处理，一条咨询只能讯问一个问题；
      2. 咨询的问题必须属实、语言文明，不得损害其他公民、法人和组织的合法权益，否则后果自负。
      3. 招考期间咨询相关事宜，请直接联系我校学籍室，招生热线：08517986823；或者访问我校网站的“招生招聘”专栏；
      4.为便于核实情况和反馈处理意见，咨询务必填入真实的个人信息。咨询人的个人信息我们将严格保密匿名咨询有可能不予答复。


三、咨询处理流程

      1.提出咨询申请
         咨询人在本网站“在线咨询”中填写信息表。后面带“*”为必填项目。为提高处理效率，咨询人对所需信息的描述应尽量详细。
      2. 咨询处理
        （1）本校校办公室根据收到信件申请的先后顺序处理咨询；
        （2）每天将当天咨询根据内容分类并发到相关处室；
        （3）由处室相关人员对咨询内容作相应回复；  
        （4）在处理时限内完成对咨询的回复处理；
        （5）鉴于针对不同请求的答复可能不同，为提高处理效率，建议申请人就不同请求分别申请。


四、处理时限

       本校校办公室在受理申请之后，将在第一时间向咨询人提供申请公开的资料。如不能当面提供的，将告     
       知咨询人在一定期限内来获取申请公开的资料，但最迟不超过15 个工作日。
       								
                                    
                                    
                                    
                                   									 欢迎致信在线咨询！
        </pre>
    </div>
    <hr />
    <div class="div_cjwt"><b>常见问题</b></div>
    <div id="container" class="w990 mlrauto clearfix">
      <div id="questions">
        <ul id="questionList" class="foldList clearfix">
          <li class="clearfix">
            <h5> <b class="UI-ask"></b> 什么是享赢棋牌联盟？ </h5>
            <div class="foldContent">
              <p> 享赢棋牌联盟是杭州畅唐科技有限公司旗下品牌，以棋牌为核心，为站长提供新型的流量变现产品和服务。 </p>
            </div>
          </li>
          <li class="clearfix">
            <h5> <b class="UI-ask"></b> 如何通过享赢棋牌进行流量变现？ </h5>
            <div class="foldContent">
              <p> 您可以在享赢棋牌联盟自助定制您自己的棋牌游戏平台，然后在您自己的网站进行推广，将网站用户转化为您的棋牌玩家。您的玩家游戏和充值都会给您产生盈利。 </p>
            </div>
          </li>
          <li class="clearfix">
            <h5> <b class="UI-ask"></b> 享赢棋牌联盟提供哪些服务？ </h5>
            <div class="foldContent">
              <p> 享赢免费给客户提供整套的价值100万的棋牌游戏平台；免费提供公共客服系统、运维系统、充值系统等支持；免费提供游戏升级、游戏比赛活动等。 </p>
            </div>
          </li>
          <li class="clearfix">
            <h5> <b class="UI-ask"></b> 合作享赢棋牌联盟需要交钱么？ </h5>
            <div class="foldContent">
              <p> 合作享赢棋牌不需要任何费用，享赢提供的棋牌游戏产品和服务都是免费的。 </p>
            </div>
          </li>
          <li class="clearfix">
            <h5> <b class="UI-ask"></b> 在享赢定制的棋牌游戏平台包括哪些？ </h5>
            <div class="foldContent">
              <p> 在享赢定制的棋牌游戏平台包括一个棋牌游戏网站和一个棋牌游戏大厅。 </p>
            </div>
          </li>
        </ul>
      </div>
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