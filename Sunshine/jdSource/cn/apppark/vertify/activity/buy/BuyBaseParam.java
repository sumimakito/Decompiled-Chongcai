package cn.apppark.vertify.activity.buy;

public class BuyBaseParam
{
  public static final String BUY_DEL_ORDER = "http://www.apppark.cn/apliay_deleteOrder.action";
  public static final String BUY_DOMAIN = "http://ws.ckj.hqch.com";
  public static final String BUY_GET_SERVER_ORDERSTATE = "http://www.apppark.cn/apliay_order.action";
  public static final String BUY_GET_SIGN = "http://www.apppark.cn/apliay_sign.action";
  public static final String BUY_IP = "http://www.apppark.cn";
  public static final String BUY_SUBURL_BUSINESS = "http://www.apppark.cn/business.ws";
  public static final String BUY_SUBURL_MEMBER = "http://www.apppark.cn/member.ws";
  public static final String BUY_SUBURL_PRODUCT = "http://www.apppark.cn/cms.ws";
  public static final String BUY_SUBURL_SMS = "http://www.apppark.cn/sms.ws";
  public static final int COMMENT_BAD = 3;
  public static final int COMMENT_CENTER = 2;
  public static final int COMMENT_GOOD = 1;
  public static final String HISTORY_FILE_NAME = "history";
  public static final int LOGIN_OFF = -1;
  public static final int MAX_RECORD_NUM = 10;
  public static final int OPERATE_ADDRESS_TYPE_GET = 1;
  public static int OPERATE_GET_REASON = 0;
  public static int OPERATE_GET_REMARK = 0;
  public static int OPERATE_SEL_PAYTYPE = 0;
  public static int PAYTYPE_OFFLINE = 0;
  public static int PAYTYPE_ONLINE = 0;
  public static int REQUEST_CODE_GET_ADDRESS = 1;
  public static int REQUEST_CODE_GET_PAYTYPE = 0;
  public static int REQUEST_CODE_GET_REMARK = 2;
  public static final int UPDATE_EMAIL = 3;
  public static final int UPDATE_NIKENAME = 1;
  public static final int UPDATE_PASSWORD = 2;
  public static final int UPDATE_SEX = 4;
  public static final int UPDATE_SIGN = 5;
  public static final int ZFB_SDK_EXISTS = 8;
  public static final int ZFB_SDK_RETURN_WHAT = 7;
  public static final int ZFB_SERVICESTATE_WHAT = 6;
  public static final int ZFB_SIGN_WHAT = 5;
  
  static
  {
    REQUEST_CODE_GET_PAYTYPE = 3;
    OPERATE_GET_REMARK = 1;
    OPERATE_SEL_PAYTYPE = 2;
    OPERATE_GET_REASON = 3;
    PAYTYPE_ONLINE = 1;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyBaseParam.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */