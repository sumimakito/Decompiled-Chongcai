package cn.apppark.vertify.activity.share;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.weibo.AccessTokenKeeper;
import com.sina.weibo.sdk.api.TextObject;
import com.sina.weibo.sdk.api.WeiboMessage;
import com.sina.weibo.sdk.api.share.IWeiboShareAPI;
import com.sina.weibo.sdk.api.share.SendMessageToWeiboRequest;
import com.sina.weibo.sdk.api.share.WeiboShareSDK;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.sso.SsoHandler;
import java.io.File;
import px;
import py;
import pz;

public class SinaShareAct
  extends Activity
{
  public static final String APP_KEY = "1160938630";
  public static final String REDIRECT_URL = "http://www.apppark.cn";
  public static final String SCOPE = "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write";
  private static final int SINA_MSG_UPDATE_FAIL = -1;
  private static final int SINA_MSG_UPDATE_OK = 1;
  private static final int SINA_MSG_UPDATE_REPEAT = 2;
  private Button btn_return;
  private Button btn_share;
  private String content = "";
  private Context context = this;
  private EditText et_content;
  private pz handler;
  private ImageView img;
  private String imgpath = "";
  private Oauth2AccessToken mAccessToken;
  private AuthInfo mAuthInfo;
  private SsoHandler mSsoHandler;
  private IWeiboShareAPI mWeiboShareAPI = null;
  private ProgressBar progress;
  private TextView tv_keystate;
  private TextView tv_wordnum;
  
  private TextObject getTextObj()
  {
    TextObject localTextObject = new TextObject();
    localTextObject.text = this.content;
    return localTextObject;
  }
  
  private void initWidget()
  {
    Object localObject = (RelativeLayout)findViewById(2131362752);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)localObject);
    this.handler = new pz(this, null);
    this.btn_share = ((Button)findViewById(2131362762));
    this.btn_return = ((Button)findViewById(2131362761));
    this.et_content = ((EditText)findViewById(2131362763));
    this.tv_keystate = ((TextView)findViewById(2131362765));
    this.tv_wordnum = ((TextView)findViewById(2131362766));
    this.img = ((ImageView)findViewById(2131362767));
    this.progress = ((ProgressBar)findViewById(2131362764));
    this.progress.setVisibility(8);
    this.btn_return.setOnClickListener(new SinaShareAct.MyBtnClickListener(this, null));
    this.btn_share.setOnClickListener(new SinaShareAct.MyBtnClickListener(this, null));
    ButtonColorFilter.setButtonFocusChanged(this.btn_return);
    ButtonColorFilter.setButtonFocusChanged(this.btn_share);
    localObject = new px(this);
    this.et_content.addTextChangedListener((TextWatcher)localObject);
    this.et_content.setText(this.content);
    this.tv_wordnum.setText("还可输入" + (140 - this.et_content.getText().toString().trim().length()) + "字");
    if ((this.imgpath != null) && (!"".equals(this.imgpath)))
    {
      localObject = new File(this.imgpath);
      this.img.setImageURI(Uri.fromFile((File)localObject));
    }
  }
  
  private void release4Sina()
  {
    this.mAccessToken = AccessTokenKeeper.readAccessToken(this);
    if (this.mAccessToken.isSessionValid())
    {
      sendSingleMessage();
      return;
    }
    this.mAuthInfo = new AuthInfo(this, "1160938630", "http://www.apppark.cn", "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write");
    this.mSsoHandler = new SsoHandler(this, this.mAuthInfo);
    this.mSsoHandler.authorizeClientSso(new py(this));
  }
  
  private void sendSingleMessage()
  {
    WeiboMessage localWeiboMessage = new WeiboMessage();
    localWeiboMessage.mediaObject = getTextObj();
    SendMessageToWeiboRequest localSendMessageToWeiboRequest = new SendMessageToWeiboRequest();
    localSendMessageToWeiboRequest.transaction = String.valueOf(System.currentTimeMillis());
    localSendMessageToWeiboRequest.message = localWeiboMessage;
    this.mWeiboShareAPI.sendRequest(this, localSendMessageToWeiboRequest);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (this.mSsoHandler != null) {
      this.mSsoHandler.authorizeCallBack(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903196);
    try
    {
      Intent localIntent = getIntent();
      paramBundle = null;
      if (localIntent != null) {
        paramBundle = localIntent.getExtras();
      }
      if (paramBundle != null)
      {
        this.content = paramBundle.getString("content").replace("@###", "@应用公园");
        this.imgpath = paramBundle.getString("imgpath");
      }
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
    initWidget();
    this.mWeiboShareAPI = WeiboShareSDK.createWeiboAPI(this, "1160938630");
    this.mWeiboShareAPI.registerApp();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/share/SinaShareAct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */