<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="BootStrap/bootstrap-3/bootstrap-3.3.7/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="BootStrap/bootstrap-3/bootstrap-3.3.7/dist/css/bootstrap-table.min.css">
    <script src="BootStrap/bootstrap-3/bootstrap-3.3.7/dist/js/jquery.min.js"></script>
    <script src="BootStrap/bootstrap-3/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="BootStrap/bootstrap-3/bootstrap-3.3.7/dist/js/bootstrap-table.min.js"></script>
    <script src="BootStrap/bootstrap-3/bootstrap-3.3.7/dist/js/bootstrap-table-zh-CN.js"></script>
</head>
<body>
<form action="../wap_Java_v2/topay" class="form-horizontal" role="form" METHOD=POST>
<!-- 支付宝测试参数： appid：147868777472129      appkey： 1FZMAlAplOTamX6OARDVV8hrswhbGEVg -->
    <div class="form-group">
        <label  class="col-sm-2 control-label">功能码：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="funcode" value="WP001"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">应用ID-微信：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="appId" value="153364169308830"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">应用密钥：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="appKey" value="UYko5ZEZHb9WrGL8Jws6Qr14kGkOBrxf"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">版本号：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="version" value="1.0.0"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">订单名称：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="mhtOrderName" value="测试支付"/>
            <input type=hidden name="mhtCurrencyType" value="156"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">订单金额：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="mhtOrderAmt" value="1"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">订单详情：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="mhtOrderDetail" value="mhtOrderDetail"/>
            <input type=hidden name="mhtOrderType" value="01"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">订单开始时间：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="mhtOrderStartTime" value="20140829194330"/>
            <input type=hidden name="notifyUrl" value="http://posp.ipaynow.cn:10808/cpgatetest/notify"/>
            <input type=hidden name="frontNotifyUrl" value="http://posp.ipaynow.cn:10808/cpgatetest/frontnotify"/>
            <input type=hidden name="mhtCharset" value="UTF-8">
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">输出格式0/1(微信2)：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="outputType" value="0"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">支付渠道：</label>
        <div>
        <input type="radio" class="control-label"  value="12" name="payChannelType"/>支付宝12
        <input type="radio" class="control-label"  value="13" name="payChannelType" />微信13
        <input type="radio" class="control-label"  value="20" name="payChannelType" />银联20
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">设备类型：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="deviceType" value="0601"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">签名方法：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="mhtSignType" value="MD5"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">签名方法：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="mhtSignType" value="MD5"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">商户保留域：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="mhtReserved" value="${mhtReserved}"/>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">用户支付IP：</label>
        <div  class="col-lg-3">
            <input type="text" class="form-control" name="consumerCreateIp" value="${consumerCreateIp}"/>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label"></label>
        <div class="col-lg-5">
        <button type=submit  class="btn btn-primary">submit</button>
        </div>
    </div>
</form>
</body>
</html> 