package cn.apppark.ckj10185912;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Build.VERSION;
import android.view.LayoutInflater;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Toast;
import cn.apppark.mcd.util.imge.BitmapCache;
import cn.apppark.mcd.util.imge.DrawableCache;
import cn.apppark.vertify.activity.persion.Login;
import cn.apppark.vertify.activity.persion.RegNew;
import cn.apppark.vertify.activity.persion.SmsLogin;
import cn.apppark.vertify.activity.persion.SmsRegNew;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.base.YygyResourceDirGenerator;
import cn.apppark.vertify.network.request.WebServiceRequest;
import com.google.gson.Gson;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class YYGYContants
{
  public static final String ABOUT_YYGY = "http://www.apppark.cn/about.html";
  public static final String DOMAIN = "http://ws.cms.hqch.com";
  public static final String DYN_SUBURL = "http://www.apppark.cn/info.ws";
  public static final String DYN_SUBURL_CLICKGOOD = "http://www.apppark.cn/praise.ws";
  public static final String DYN_SUBURL_MEMBER = "http://www.apppark.cn/member.ws";
  public static final String DYN_SUBURL_PRODUCT = "http://www.apppark.cn/cms.ws";
  public static String IMAGE_CACHE_PATH;
  public static String IMAGE_CACHE_UPLOAD;
  public static String IMEI;
  public static String LOCATION;
  public static String MODEL;
  public static int MainContentHeight = 0;
  public static String PERSIONCENTER_DEFAULT_COLOR;
  public static String PERSIONCENTER_TOP_COLOR;
  public static String PHONE_NUMBER;
  public static String POSITION_TOP;
  public static int PRODUCT_INFO_BASEHEIGHT = 0;
  public static int PRODUCT_INFO_HEIGHT = 0;
  public static final String PUSH_IP_USE = "http://www.apppark.cn/";
  public static final int PUSH_TIME = 1200000;
  public static String RELEASE;
  public static final String ROOT_DIR = "yygy";
  public static int SDK = 0;
  public static String SHARE_ACTION_MSG;
  public static int SMS_COUTTIME = 0;
  public static long SMS_LAST_SENDTIME = 0L;
  public static final String SOFT_SUBURL = "http://www.apppark.cn/ad.ws";
  public static String START_TIME;
  public static String SYSTEM;
  public static final String UPDATA_BUSINESS = "http://www.apppark.cn/business.ws";
  public static final String UPDATA_DOMAIN = "http://ws.ckj.hqch.com";
  public static final String UPDATA_SUBURL = "http://www.apppark.cn/software.ws";
  public static String USETIME_FILE_NAME;
  public static String VERSION_CODE;
  public static String VIP_0;
  public static String VIP_1;
  public static String VIP_2;
  public static String VIP_3;
  public static String baseCachePath;
  public static String baseImgCachePath;
  public static int dpi = 0;
  public static float dpiScaleUnite = 0.0F;
  public static boolean isActive = false;
  public static YygyResourceDirGenerator mDirGenerator;
  public static float[] mFloatSel = { 1.0F, 0.0F, 0.0F, 0.0F, 50.0F, 0.0F, 1.0F, 0.0F, 0.0F, 50.0F, 0.0F, 0.0F, 1.0F, 0.0F, 50.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F };
  public static ClientInitInfoHelpler mHelper;
  public static DrawableCache mLocalDrawableCaches;
  public static BitmapCache mNetworktImageCache;
  public static String mainPageId;
  public static final String msgMethodName = "updateMsgStatus";
  public static final String msgSubUrl = "http://www.apppark.cn//push.ws";
  public static final String nameSpace = "http://ws.ckj.hqch.com/";
  public static final String pushMethodName = "getPushMsg";
  public static final String pushSubUrl_USE = "http://www.apppark.cn//push.ws";
  public static float scaleUnite = 0.0F;
  public static int screenHeight = 0;
  public static int screenWidth = 0;
  public static final String subMsgUrl = "http://www.apppark.cn/form.ws";
  
  static
  {
    LOCATION = "";
    POSITION_TOP = "1";
    PRODUCT_INFO_BASEHEIGHT = 210;
    SMS_COUTTIME = 30;
    SHARE_ACTION_MSG = "share_action_msg";
    VIP_0 = "0";
    VIP_1 = "1";
    VIP_2 = "2";
    VIP_3 = "3";
    SDK = Integer.valueOf(Build.VERSION.SDK).intValue();
    MODEL = Build.MODEL;
    RELEASE = Build.VERSION.RELEASE;
    SYSTEM = "android";
    scaleUnite = 1.0F;
    MainContentHeight = 0;
    PERSIONCENTER_DEFAULT_COLOR = "3fc2f9";
    IMAGE_CACHE_PATH = "imgcache";
    IMAGE_CACHE_UPLOAD = "upload";
    USETIME_FILE_NAME = "usetime.json";
    mainPageId = "";
  }
  
  public static boolean checkResult(String paramString)
  {
    try
    {
      boolean bool = "1".equals(new JSONObject(paramString).getString("retFlag"));
      if (bool) {
        return true;
      }
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
    return false;
  }
  
  public static boolean checkResult(String paramString, int paramInt1, int paramInt2)
  {
    if (WebServiceRequest.WEB_ERROR.equals(paramString)) {
      Toast.makeText(HQCHApplication.mainActivity, paramInt1, 0).show();
    }
    for (;;)
    {
      return false;
      Object localObject;
      try
      {
        localObject = new JSONObject(paramString);
        paramString = ((JSONObject)localObject).getString("retFlag");
        localObject = ((JSONObject)localObject).getString("retMsg");
        if (!"1".equals(paramString)) {
          break label75;
        }
        initToast(paramInt2, 0);
        return true;
      }
      catch (JSONException paramString)
      {
        initToast(paramInt1, 0);
        paramString.printStackTrace();
      }
      continue;
      label75:
      initToast((String)localObject, 1);
    }
  }
  
  public static boolean checkResult(String paramString1, String paramString2, String paramString3)
  {
    if (WebServiceRequest.WEB_ERROR.equals(paramString1)) {
      if (paramString2 != null) {
        Toast.makeText(HQCHApplication.mainActivity, paramString2, 0).show();
      }
    }
    for (;;)
    {
      return false;
      try
      {
        paramString1 = new JSONObject(paramString1);
        if (!"1".equals(paramString1.getString("retFlag"))) {
          break label86;
        }
        if (paramString3 != null) {
          break label79;
        }
        initToast(paramString1.getString("retMsg"), 0);
        return true;
      }
      catch (Exception paramString1)
      {
        initToast(paramString2, 0);
        paramString1.printStackTrace();
      }
      continue;
      label79:
      initToast(paramString3, 0);
      return true;
      label86:
      initToast(paramString1.getString("retMsg"), 1);
    }
  }
  
  public static Dialog createPasswordDialog(Context paramContext, String paramString)
  {
    paramString = LayoutInflater.from(paramContext).inflate(2130903147, null);
    paramContext = new Dialog(paramContext, 2131099665);
    paramContext.setContentView(paramString, new RelativeLayout.LayoutParams(screenWidth, screenHeight));
    return paramContext;
  }
  
  public static int getKey(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      int i = paramContext.getPackageInfo(paramString, 64).signatures[0].hashCode();
      return i;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  public static Class<? extends Activity> getLoginClass()
  {
    if (mHelper.getNeedSMS()) {
      return SmsLogin.class;
    }
    return Login.class;
  }
  
  public static Class<? extends Activity> getRegClass()
  {
    if (mHelper.getNeedSMS()) {
      return SmsRegNew.class;
    }
    return RegNew.class;
  }
  
  public static String getSuperPass()
  {
    String str = "10185912".substring(6, 8);
    return "*" + str + "#";
  }
  
  protected static void initToast(int paramInt1, int paramInt2)
  {
    Toast.makeText(HQCHApplication.mainActivity, paramInt1, paramInt2).show();
  }
  
  protected static void initToast(String paramString, int paramInt)
  {
    if (paramString != null) {
      Toast.makeText(HQCHApplication.mainActivity, paramString, paramInt).show();
    }
  }
  
  public static String map2Json(Map<String, Object> paramMap)
  {
    return new Gson().toJson(paramMap);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/ckj10185912/YYGYContants.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */