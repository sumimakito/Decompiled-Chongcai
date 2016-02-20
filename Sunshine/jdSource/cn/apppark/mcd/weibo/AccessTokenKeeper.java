package cn.apppark.mcd.weibo;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;

public class AccessTokenKeeper
{
  private static final String KEY_ACCESS_TOKEN = "access_token";
  private static final String KEY_EXPIRES_IN = "expires_in";
  private static final String KEY_REFRESH_TOKEN = "refresh_token";
  private static final String KEY_UID = "uid";
  private static final String PREFERENCES_NAME = "com_weibo_sdk_android";
  
  public static void clear(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    paramContext = paramContext.getSharedPreferences("com_weibo_sdk_android", 32768).edit();
    paramContext.clear();
    paramContext.commit();
  }
  
  public static Oauth2AccessToken readAccessToken(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    Oauth2AccessToken localOauth2AccessToken = new Oauth2AccessToken();
    paramContext = paramContext.getSharedPreferences("com_weibo_sdk_android", 32768);
    localOauth2AccessToken.setUid(paramContext.getString("uid", ""));
    localOauth2AccessToken.setToken(paramContext.getString("access_token", ""));
    localOauth2AccessToken.setRefreshToken(paramContext.getString("refresh_token", ""));
    localOauth2AccessToken.setExpiresTime(paramContext.getLong("expires_in", 0L));
    return localOauth2AccessToken;
  }
  
  public static void writeAccessToken(Context paramContext, Oauth2AccessToken paramOauth2AccessToken)
  {
    if ((paramContext == null) || (paramOauth2AccessToken == null)) {
      return;
    }
    paramContext = paramContext.getSharedPreferences("com_weibo_sdk_android", 32768).edit();
    paramContext.putString("uid", paramOauth2AccessToken.getUid());
    paramContext.putString("access_token", paramOauth2AccessToken.getToken());
    paramContext.putString("refresh_token", paramOauth2AccessToken.getRefreshToken());
    paramContext.putLong("expires_in", paramOauth2AccessToken.getExpiresTime());
    paramContext.commit();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/weibo/AccessTokenKeeper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */