package cn.apppark.mcd.weibo;

import android.app.Activity;
import android.content.Context;
import android.widget.Toast;
import com.sina.weibo.sdk.api.TextObject;
import com.sina.weibo.sdk.api.WeiboMessage;
import com.sina.weibo.sdk.api.share.IWeiboShareAPI;
import com.sina.weibo.sdk.api.share.SendMessageToWeiboRequest;
import com.sina.weibo.sdk.api.share.WeiboShareSDK;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.sso.SsoHandler;
import r;

public class SinaShareUtil
{
  private String APP_KEY = "1160938630";
  private String REDIRECT_URL = "http://www.apppark.cn";
  private String SCOPE = "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write";
  private Activity act;
  private Context context;
  private Oauth2AccessToken mAccessToken;
  private AuthInfo mAuthInfo;
  private SsoHandler mSsoHandler;
  private IWeiboShareAPI mWeiboShareAPI = null;
  
  public SinaShareUtil(Activity paramActivity, String paramString)
  {
    this.act = paramActivity;
    this.context = paramActivity.getApplicationContext();
    this.APP_KEY = paramString;
    this.mWeiboShareAPI = WeiboShareSDK.createWeiboAPI(this.context, paramString);
    if (this.mWeiboShareAPI != null)
    {
      if (!this.mWeiboShareAPI.isWeiboAppInstalled()) {
        Toast.makeText(this.context, 2131230792, 0).show();
      }
    }
    else {
      return;
    }
    this.mWeiboShareAPI.registerApp();
  }
  
  private TextObject getTextObj(String paramString)
  {
    TextObject localTextObject = new TextObject();
    localTextObject.text = paramString;
    return localTextObject;
  }
  
  private void sendSingleMessage(String paramString)
  {
    WeiboMessage localWeiboMessage = new WeiboMessage();
    localWeiboMessage.mediaObject = getTextObj(paramString);
    paramString = new SendMessageToWeiboRequest();
    paramString.transaction = String.valueOf(System.currentTimeMillis());
    paramString.message = localWeiboMessage;
    this.mWeiboShareAPI.sendRequest(this.act, paramString);
  }
  
  public SsoHandler getmSsoHandler()
  {
    return this.mSsoHandler;
  }
  
  public IWeiboShareAPI getmWeiboShareAPI()
  {
    return this.mWeiboShareAPI;
  }
  
  public void release4Sina(String paramString1, String paramString2)
  {
    this.mAccessToken = AccessTokenKeeper.readAccessToken(this.context);
    if (this.mAccessToken.isSessionValid())
    {
      sendSingleMessage(paramString1);
      return;
    }
    this.mAuthInfo = new AuthInfo(this.context, this.APP_KEY, this.REDIRECT_URL, this.SCOPE);
    this.mSsoHandler = new SsoHandler(this.act, this.mAuthInfo);
    this.mSsoHandler.authorizeClientSso(new r(this));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/weibo/SinaShareUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */