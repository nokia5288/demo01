package com.util;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.alibaba.fastjson.JSONObject;


import java.util.*;

public class AlUtil {

    //发送短信
    private static final String domain = "dysmsapi.aliyuncs.com";
    private static final String accessKeyId = "LTAI4GCtgGVi9gSW75h6m4yA";
    private static final String accessKeySecret = "2Cq1Kl9TKzMFjS5PTFUx0QFtKcGtjx";
    private static final String RegionId="cn-hangzhou";
    private static final String SignName="自测答题系统";
    private static final String TemplateCode="SMS_195874061";

    //短信验证码
    public static final String sendSms(String tel){
        DefaultProfile profile = DefaultProfile.getProfile(RegionId, accessKeyId, accessKeySecret);
        IAcsClient client = new DefaultAcsClient(profile);
        CommonRequest request = new CommonRequest();
        request.setMethod(MethodType.POST);
        request.setSysDomain(domain);
        request.setSysVersion("2017-05-25");
        request.setAction("SendSms");
        request.putQueryParameter("RegionId", "RegionId");
        request.putQueryParameter("PhoneNumbers", tel);
        request.putQueryParameter("SignName", SignName);
        request.putQueryParameter("TemplateCode", TemplateCode);
        String code = String.valueOf(new Random().nextInt(899999) + 100000);//生成短信验证码
        request.putQueryParameter("TemplateParam", "{\"code\":"+code+"}");
        String msg="";
        try {
            CommonResponse response = client.getCommonResponse(request);
            JSONObject jsonObject = JSONObject.parseObject(response.getData());
            if(jsonObject.get("Code").equals("OK")){
                msg=code;
            }
        } catch (ClientException e) {
            e.printStackTrace();
        }

        return msg;
    }

    public static void main(String[] args) {
        System.out.println(AlUtil.sendSms("13196319767"));
    }
}
