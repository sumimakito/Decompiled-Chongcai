package cn.apppark.vertify.network;

import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.file.PrivateFileReadSave;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.HttpPostRequestPool;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import wk;

public class PublicRequest
{
  private final int APPSTATE_WHAT = 3;
  private final int LOCATION_WHAT = 4;
  private final int SAVE_USELOG = 2;
  private final int SUB_LOCATION_WHAT = 1;
  private wk myHand = new wk(this, null);
  
  public static void delLogFile()
  {
    PrivateFileReadSave.save(YYGYContants.USETIME_FILE_NAME, "", HQCHApplication.mainActivity);
  }
  
  public static String getLogFile()
  {
    String str = PrivateFileReadSave.read(YYGYContants.USETIME_FILE_NAME, HQCHApplication.mainActivity);
    if (str == null) {
      return "[]";
    }
    return "[" + str + "]";
  }
  
  public static String timeFomat(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat();
    localSimpleDateFormat.applyPattern(paramString);
    return localSimpleDateFormat.format(new Date());
  }
  
  public static void updateLogFile()
  {
    String str = PrivateFileReadSave.read(YYGYContants.USETIME_FILE_NAME, HQCHApplication.mainActivity);
    if ((str != null) && (!"".equals(str)) && (!"null".equals(str))) {}
    for (str = str + ", {\"startTime\":\"" + YYGYContants.START_TIME + "\",\"endTime\":\"" + timeFomat("yyyy-MM-dd HH:mm:ss") + "\" }";; str = "{\"startTime\":\"" + YYGYContants.START_TIME + "\",\"endTime\":\"" + timeFomat("yyyy-MM-dd HH:mm:ss") + "\" }")
    {
      PrivateFileReadSave.save(YYGYContants.USETIME_FILE_NAME, str, HQCHApplication.mainActivity);
      return;
    }
  }
  
  public void checkAppState()
  {
    Object localObject = new ClientPersionInfo(HQCHApplication.mainActivity);
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("id", ((ClientPersionInfo)localObject).getUserId());
    localObject = new WebServicePool(3, new wk(this, null), "json", PublicUtil.map2Json(localHashMap), "http://ws.cms.hqch.com", "http://www.apppark.cn/sms.ws", "checkAppState");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  public void getLocation()
  {
    HttpPostRequestPool localHttpPostRequestPool = new HttpPostRequestPool(4, "http://api.map.baidu.com/location/ip?ak=6WjTvcq9PhZ0wPFiM5xZEyqy&coor=bd09ll", new wk(this, null), null);
    localHttpPostRequestPool.doRequest(localHttpPostRequestPool);
  }
  
  public void saveUseLog(String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("{ \"updateTime\":\"" + YYGYContants.mHelper.getRecentTimeStamp() + "\",");
    localStringBuffer.append(" \"osname\":\"1\",");
    localStringBuffer.append(" \"osversion\":\"" + YYGYContants.VERSION_CODE + "\",");
    localStringBuffer.append(" \"number\":\" " + YYGYContants.PHONE_NUMBER + " \",");
    localStringBuffer.append(" \"isReg\":\"" + YYGYContants.mHelper.getLogFlag() + "\",");
    localStringBuffer.append(" \"useTime\":" + paramString2 + ",");
    localStringBuffer.append(" \"type\":\"" + paramString1 + "\"}");
    paramString1 = new WebServicePool(2, this.myHand, "json", localStringBuffer.toString(), "http://ws.cms.hqch.com", "http://www.apppark.cn/software.ws", "check");
    paramString1.doRequest(paramString1);
  }
  
  public void subLocation(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("location", paramString);
    paramString = new WebServicePool(1, new wk(this, null), "json", PublicUtil.map2Json(localHashMap), "http://ws.cms.hqch.com", "http://www.apppark.cn/software.ws", "location");
    paramString.doRequest(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/PublicRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */