package com.ipaynow.pay;

import com.ipaynow.utils.MD5Facade;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 支付表单数据准备
 * @author christ
 *
 */
public class ToPayServlet extends HttpServlet{
	
	private static final long serialVersionUID = -3240794927782965682L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Random rand = new Random();
		//商户自己的订单数据
		String funcode = req.getParameter("funcode");
		String deviceType = req.getParameter("deviceType");
		String appId = req.getParameter("appId");
		String mhtOrderNo = "H5_"+System.currentTimeMillis()+""+rand.nextInt(100000);
		String version = req.getParameter("version");
		String mhtOrderName = req.getParameter("mhtOrderName");
		String mhtCurrencyType = req.getParameter("mhtCurrencyType");
		String mhtOrderAmt = req.getParameter("mhtOrderAmt");
		String mhtOrderDetail = req.getParameter("mhtOrderDetail");
		String mhtOrderType = req.getParameter("mhtOrderType");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		String mhtOrderStartTime = dateFormat.format(new Date());
		String notifyUrl = req.getParameter("notifyUrl");
		String frontNotifyUrl = req.getParameter("frontNotifyUrl");
		String mhtCharset = req.getParameter("mhtCharset");
		String payChannelType = req.getParameter("payChannelType");
		String outputType = req.getParameter("outputType");
		String appKey = req.getParameter("appKey");
		String mhtReserved = req.getParameter("mhtReserved");
		String mhtSignType = req.getParameter("mhtSignType");
		String consumerCreateIp = req.getParameter("consumerCreateIp");
		
		
		
		//做MD5签名
		Map<String, String> dataMap = new HashMap<String, String>();
		dataMap.put("appId", appId);
		dataMap.put("deviceType", deviceType);
		dataMap.put("funcode",funcode);
		dataMap.put("mhtOrderNo", mhtOrderNo);
		dataMap.put("mhtOrderName", mhtOrderName);
		dataMap.put("version", version);
		dataMap.put("mhtCurrencyType", mhtCurrencyType);
		dataMap.put("mhtOrderAmt", mhtOrderAmt);
		dataMap.put("mhtOrderDetail", mhtOrderDetail);
		dataMap.put("mhtOrderType", mhtOrderType);
		dataMap.put("mhtOrderStartTime", mhtOrderStartTime);
		dataMap.put("notifyUrl", notifyUrl);
		dataMap.put("frontNotifyUrl", frontNotifyUrl);
		dataMap.put("mhtCharset", mhtCharset);
		dataMap.put("outputType", outputType);
		dataMap.put("payChannelType", payChannelType);
		dataMap.put("mhtSignType", mhtSignType);
		
	 //只有当payChennalType的值为13且outputType的值为0时，consumerCreateIp需要传（IP需真实有效）
	//	dataMap.put("consumerCreateIp", consumerCreateIp);
		
		dataMap.put("mhtReserved", mhtReserved);//商户保留域字段不必填，如果商户有需要对每笔交易记录一些自己的东西，可以放在这个里面
		String mhtSignature = MD5Facade.getFormDataParamMD5(dataMap, appKey, "UTF-8");
		
		
		req.setAttribute("appId", appId);
		req.setAttribute("mhtOrderNo", mhtOrderNo);
		req.setAttribute("mhtOrderName", mhtOrderName);
		req.setAttribute("mhtCurrencyType", mhtCurrencyType);
		req.setAttribute("version", version);
		req.setAttribute("mhtOrderAmt", mhtOrderAmt);
		req.setAttribute("mhtOrderDetail", mhtOrderDetail);
		req.setAttribute("mhtOrderType", mhtOrderType);
		req.setAttribute("mhtOrderStartTime", mhtOrderStartTime);
		req.setAttribute("notifyUrl", notifyUrl);
		req.setAttribute("frontNotifyUrl", frontNotifyUrl);
		req.setAttribute("mhtCharset", mhtCharset);
		req.setAttribute("mhtSignType", mhtSignType);
		req.setAttribute("mhtSignature", mhtSignature);
		req.setAttribute("funcode", funcode);
		req.setAttribute("deviceType", deviceType);
		req.setAttribute("outputType", outputType);
		req.setAttribute("payChannelType", payChannelType);
		req.setAttribute("mhtReserved", mhtReserved);
		req.setAttribute("consumerCreateIp", consumerCreateIp);
		
		req.getRequestDispatcher("topay.jsp").forward(req, resp);
		//遍历map（key，value）
		Set<String> keyset=dataMap.keySet();
		int i=0;
		for(String s:keyset){
			if(i!=keyset.size()-1) {
				System.out.print(s + ":" + dataMap.get(s) + ",");
				i+=1;
			}else{
				System.out.print(s + ":" + dataMap.get(s));
			}
		}
		System.out.println();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

}
