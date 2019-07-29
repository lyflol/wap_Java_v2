<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
</head>
<body>
<form action="../wap_Java_v2/topay" METHOD=POST>
<!-- 支付宝测试参数： appid：147868777472129      appkey： 1FZMAlAplOTamX6OARDVV8hrswhbGEVg -->

功能码：<input type=text name="funcode" value="WP001"/><br>
应用ID-微信：<input type=text name="appId" value="153364169308830"/><br>
应用密钥：<input type=text name="appKey" value="UYko5ZEZHb9WrGL8Jws6Qr14kGkOBrxf"/><br>
版本号：<input type=text name="version" value="1.0.0"/><br>
订单名称：<input type=text name="mhtOrderName" value="测试支付"/><br>
<input type=hidden name="mhtCurrencyType" value="156"/>
订单金额：<input type=text name="mhtOrderAmt" value="1"/><br>	
订单详情：<input type=text name="mhtOrderDetail" value="mhtOrderDetail"/><br>
<input type=hidden name="mhtOrderType" value="01"/>
订单开始时间：<input type=text name="mhtOrderStartTime" value="20140829194330"/><br>
<input type=hidden name="notifyUrl" value="http://posp.ipaynow.cn:10808/cpgatetest/notify"/>
<input type=hidden name="frontNotifyUrl" value="http://posp.ipaynow.cn:10808/cpgatetest/frontnotify"/>
<input type=hidden name="mhtCharset" value="UTF-8">
输出格式0/1(微信2)：<input type=text name="outputType" value="0"/><br>
支付渠道：<br>
<input type="radio" name="payChannelType" value="12">支付宝12<br>
<input type="radio" name="payChannelType" value="13">微信13<br>
<input type="radio" name="payChannelType" value="20">银联20<br>
设备类型：<input type=text name="deviceType" value="0601"/><br>
签名方法：<input type=text name="mhtSignType" value="MD5"><br>
商户保留域：<input type=text name="mhtReserved" value="${mhtReserved}"><br>
用户支付IP：<input type=text name="consumerCreateIp" value="${consumerCreateIp}"><br>
<button type=submit>submit</button>
</form>
</body>
</html> 