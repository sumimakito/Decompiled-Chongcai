package com.tencent.connect.auth;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.connect.a.a;
import com.tencent.connect.common.AssistActivity;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.BaseApi.ApiTask;
import com.tencent.connect.common.BaseApi.TempRequestListener;
import com.tencent.open.a.f;
import com.tencent.open.b.d;
import com.tencent.open.utils.Global;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.ServerSetting;
import com.tencent.open.utils.SystemUtils;
import com.tencent.open.utils.ThreadManager;
import com.tencent.open.utils.Util;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.net.URLDecoder;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class AuthAgent
  extends BaseApi
{
  public static final String SECURE_LIB_FILE_NAME = "libwbsafeedit";
  public static final String SECURE_LIB_NAME = "libwbsafeedit.so";
  private IUiListener a;
  private String b;
  private Activity c;
  
  public AuthAgent(QQToken paramQQToken)
  {
    super(paramQQToken);
  }
  
  private int a(boolean paramBoolean, final IUiListener paramIUiListener)
  {
    f.c("openSDK_LOG", "OpenUi, showDialog -- start");
    CookieSyncManager.createInstance(Global.getContext());
    final Object localObject1 = composeCGIParams();
    if (paramBoolean) {
      ((Bundle)localObject1).putString("isadd", "1");
    }
    ((Bundle)localObject1).putString("scope", this.b);
    ((Bundle)localObject1).putString("client_id", this.mToken.getAppId());
    if (isOEM) {
      ((Bundle)localObject1).putString("pf", "desktop_m_qq-" + installChannel + "-" + "android" + "-" + registerChannel + "-" + businessId);
    }
    for (;;)
    {
      Object localObject2 = System.currentTimeMillis() / 1000L + "";
      ((Bundle)localObject1).putString("sign", SystemUtils.getAppSignatureMD5(Global.getContext(), (String)localObject2));
      ((Bundle)localObject1).putString("time", (String)localObject2);
      ((Bundle)localObject1).putString("display", "mobile");
      ((Bundle)localObject1).putString("response_type", "token");
      ((Bundle)localObject1).putString("redirect_uri", "auth://tauth.qq.com/");
      ((Bundle)localObject1).putString("cancel_display", "1");
      ((Bundle)localObject1).putString("switch", "1");
      ((Bundle)localObject1).putString("status_userip", Util.getUserIp());
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append(ServerSetting.getInstance().getEnvUrl(Global.getContext(), "http://openmobile.qq.com/oauth2.0/m_authorize?"));
      ((StringBuilder)localObject2).append(Util.encodeUrl((Bundle)localObject1));
      localObject1 = ((StringBuilder)localObject2).toString();
      paramIUiListener = new TokenListener(Global.getContext(), paramIUiListener, true, false);
      f.b("openSDK_LOG", "OpenUi, showDialog TDialog");
      ThreadManager.executeOnSubThread(new Runnable()
      {
        public void run()
        {
          SystemUtils.extractSecureLib("libwbsafeedit", "libwbsafeedit.so", 2);
          if (AuthAgent.e(AuthAgent.this) != null) {
            AuthAgent.e(AuthAgent.this).runOnUiThread(new Runnable()
            {
              public void run()
              {
                AuthDialog localAuthDialog = new AuthDialog(AuthAgent.e(AuthAgent.this), "action_login", AuthAgent.1.this.a, AuthAgent.1.this.b, AuthAgent.f(AuthAgent.this));
                if ((AuthAgent.e(AuthAgent.this) != null) && (!AuthAgent.e(AuthAgent.this).isFinishing())) {
                  localAuthDialog.show();
                }
              }
            });
          }
        }
      });
      f.c("openSDK_LOG", "OpenUi, showDialog -- end");
      return 2;
      ((Bundle)localObject1).putString("pf", "openmobile_android");
    }
  }
  
  private void a(String paramString)
  {
    try
    {
      Object localObject = Util.parseJson(paramString);
      paramString = ((JSONObject)localObject).getString("access_token");
      String str = ((JSONObject)localObject).getString("expires_in");
      localObject = ((JSONObject)localObject).getString("openid");
      if ((!TextUtils.isEmpty(paramString)) && (!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty((CharSequence)localObject)))
      {
        this.mToken.setAccessToken(paramString, str);
        this.mToken.setOpenId((String)localObject);
      }
      return;
    }
    catch (Exception paramString) {}
  }
  
  private boolean a(Activity paramActivity, Fragment paramFragment, boolean paramBoolean)
  {
    f.c("openSDK_LOG", "startActionActivity() -- start");
    Intent localIntent = getTargetActivityIntent("com.tencent.open.agent.AgentActivity");
    if (localIntent != null)
    {
      Bundle localBundle = composeCGIParams();
      if (paramBoolean) {
        localBundle.putString("isadd", "1");
      }
      localBundle.putString("scope", this.b);
      localBundle.putString("client_id", this.mToken.getAppId());
      if (isOEM)
      {
        localBundle.putString("pf", "desktop_m_qq-" + installChannel + "-" + "android" + "-" + registerChannel + "-" + businessId);
        localBundle.putString("need_pay", "1");
        localBundle.putString("oauth_app_name", SystemUtils.getAppName(Global.getContext()));
        localIntent.putExtra("key_action", "action_login");
        localIntent.putExtra("key_params", localBundle);
        this.mActivityIntent = localIntent;
        if (!hasActivityForIntent()) {
          break label301;
        }
        this.a = new FeedConfirmListener(this.a);
        if (paramFragment == null) {
          break label280;
        }
        f.b("AuthAgent", "startAssitActivity fragment");
        startAssitActivity(paramFragment, this.a);
      }
      for (;;)
      {
        f.c("openSDK_LOG", "startActionActivity() -- end");
        d.a().a(0, "LOGIN_CHECK_SDK", "1000", this.mToken.getAppId(), "", Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "");
        return true;
        localBundle.putString("pf", "openmobile_android");
        break;
        label280:
        f.b("AuthAgent", "startAssitActivity activity");
        startAssitActivity(paramActivity, this.a);
      }
    }
    label301:
    d.a().a(1, "LOGIN_CHECK_SDK", "1000", this.mToken.getAppId(), "", Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "startActionActivity fail");
    f.c("openSDK_LOG", "startActionActivity() -- end");
    return false;
  }
  
  protected void a(IUiListener paramIUiListener)
  {
    f.c("openSDK_LOG", "reportDAU() -- start");
    String str1 = this.mToken.getAccessToken();
    String str2 = this.mToken.getOpenId();
    String str3 = this.mToken.getAppId();
    Object localObject = "";
    paramIUiListener = (IUiListener)localObject;
    if (!TextUtils.isEmpty(str1))
    {
      paramIUiListener = (IUiListener)localObject;
      if (!TextUtils.isEmpty(str2))
      {
        paramIUiListener = (IUiListener)localObject;
        if (!TextUtils.isEmpty(str3)) {
          paramIUiListener = Util.encrypt("tencent&sdk&qazxc***14969%%" + str1 + str3 + str2 + "qzone3.4");
        }
      }
    }
    if (TextUtils.isEmpty(paramIUiListener))
    {
      f.e("openSDK_LOG", "reportDAU -- encrytoken is null");
      return;
    }
    localObject = composeCGIParams();
    ((Bundle)localObject).putString("encrytoken", paramIUiListener);
    HttpUtils.requestAsync(this.mToken, Global.getContext(), "https://openmobile.qq.com/user/user_login_statis", (Bundle)localObject, "POST", null);
    f.c("openSDK_LOG", "reportDAU() -- end");
  }
  
  protected void b(IUiListener paramIUiListener)
  {
    Bundle localBundle = composeCGIParams();
    localBundle.putString("reqType", "checkLogin");
    paramIUiListener = new BaseApi.TempRequestListener(this, new CheckLoginListener(paramIUiListener));
    HttpUtils.requestAsync(this.mToken, Global.getContext(), "https://openmobile.qq.com/v3/user/get_info", localBundle, "GET", paramIUiListener);
  }
  
  public int doLogin(Activity paramActivity, String paramString, IUiListener paramIUiListener)
  {
    return doLogin(paramActivity, paramString, paramIUiListener, false, null);
  }
  
  public int doLogin(Activity paramActivity, String paramString, IUiListener paramIUiListener, boolean paramBoolean, Fragment paramFragment)
  {
    this.b = paramString;
    this.c = paramActivity;
    this.a = paramIUiListener;
    if (a(paramActivity, paramFragment, paramBoolean))
    {
      f.c("openSDK_LOG", "OpenUi, showUi, return Constants.UI_ACTIVITY");
      d.a().a(this.mToken.getOpenId(), this.mToken.getAppId(), "2", "1", "5", "0", "0", "0");
      return 1;
    }
    d.a().a(this.mToken.getOpenId(), this.mToken.getAppId(), "2", "1", "5", "1", "0", "0");
    f.d("openSDK_LOG", "startActivity fail show dialog.");
    this.a = new FeedConfirmListener(this.a);
    return a(paramBoolean, this.a);
  }
  
  public void onActivityResult(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    ThreadManager.executeOnSubThread(new Runnable()
    {
      public void run() {}
    });
    Object localObject = this.mTaskList.iterator();
    while (((Iterator)localObject).hasNext())
    {
      BaseApi.ApiTask localApiTask = (BaseApi.ApiTask)((Iterator)localObject).next();
      if (localApiTask.mRequestCode == paramInt1)
      {
        localObject = localApiTask.mListener;
        this.mTaskList.remove(localApiTask);
      }
    }
    for (;;)
    {
      if (paramIntent == null)
      {
        if (localObject != null) {
          ((IUiListener)localObject).onCancel();
        }
        return;
      }
      a(paramIntent.getStringExtra("key_response"));
      if (localObject == null)
      {
        AssistActivity.setResultDataForLogin(paramActivity, paramIntent);
        return;
      }
      if (paramInt2 == -1) {
        handleDataToListener(paramIntent, (IUiListener)localObject);
      }
      for (;;)
      {
        releaseResource();
        f.b();
        return;
        f.b("openSDK_LOG", "OpenUi, onActivityResult, Constants.ACTIVITY_CANCEL");
        ((IUiListener)localObject).onCancel();
      }
      localObject = null;
    }
  }
  
  public void releaseResource()
  {
    this.c = null;
    this.a = null;
  }
  
  private class CheckLoginListener
    implements IUiListener
  {
    IUiListener a;
    
    public CheckLoginListener(IUiListener paramIUiListener)
    {
      this.a = paramIUiListener;
    }
    
    public void onCancel()
    {
      if (this.a != null) {
        this.a.onCancel();
      }
    }
    
    public void onComplete(Object paramObject)
    {
      if (paramObject == null)
      {
        f.e("CheckLoginListener", "response data is null");
        return;
      }
      for (paramObject = (JSONObject)paramObject;; paramObject = ((JSONObject)paramObject).getString("msg")) {
        try
        {
          int i = ((JSONObject)paramObject).getInt("ret");
          if (i == 0)
          {
            paramObject = "success";
            if (this.a == null) {
              break;
            }
            this.a.onComplete(new JSONObject().put("ret", i).put("msg", paramObject));
            return;
          }
        }
        catch (JSONException paramObject)
        {
          ((JSONException)paramObject).printStackTrace();
          f.e("CheckLoginListener", "response data format error");
          return;
        }
      }
    }
    
    public void onError(UiError paramUiError)
    {
      if (this.a != null) {
        this.a.onError(paramUiError);
      }
    }
  }
  
  private class FeedConfirmListener
    implements IUiListener
  {
    IUiListener a;
    private final String c = "sendinstall";
    private final String d = "installwording";
    private final String e = "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi";
    
    public FeedConfirmListener(IUiListener paramIUiListener)
    {
      this.a = paramIUiListener;
    }
    
    /* Error */
    private Drawable a(String paramString, Context paramContext)
    {
      // Byte code:
      //   0: aload_2
      //   1: invokevirtual 59	android/content/Context:getApplicationContext	()Landroid/content/Context;
      //   4: invokevirtual 63	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
      //   7: astore_2
      //   8: aload_2
      //   9: aload_1
      //   10: invokevirtual 69	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
      //   13: astore_2
      //   14: aload_2
      //   15: ifnonnull +5 -> 20
      //   18: aconst_null
      //   19: areturn
      //   20: aload_1
      //   21: ldc 71
      //   23: invokevirtual 77	java/lang/String:endsWith	(Ljava/lang/String;)Z
      //   26: istore_3
      //   27: iload_3
      //   28: ifeq +61 -> 89
      //   31: aload_2
      //   32: invokestatic 83	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
      //   35: astore_1
      //   36: aload_1
      //   37: ifnull +68 -> 105
      //   40: aload_1
      //   41: invokevirtual 89	android/graphics/Bitmap:getNinePatchChunk	()[B
      //   44: astore_2
      //   45: aload_2
      //   46: invokestatic 95	android/graphics/NinePatch:isNinePatchChunk	([B)Z
      //   49: pop
      //   50: new 97	android/graphics/drawable/NinePatchDrawable
      //   53: dup
      //   54: aload_1
      //   55: aload_2
      //   56: new 99	android/graphics/Rect
      //   59: dup
      //   60: invokespecial 100	android/graphics/Rect:<init>	()V
      //   63: aconst_null
      //   64: invokespecial 103	android/graphics/drawable/NinePatchDrawable:<init>	(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
      //   67: astore_1
      //   68: aload_1
      //   69: areturn
      //   70: astore_2
      //   71: aconst_null
      //   72: astore_1
      //   73: aload_2
      //   74: invokevirtual 106	java/io/IOException:printStackTrace	()V
      //   77: aload_1
      //   78: areturn
      //   79: astore_1
      //   80: aload_1
      //   81: invokevirtual 107	java/lang/OutOfMemoryError:printStackTrace	()V
      //   84: aconst_null
      //   85: astore_1
      //   86: goto -50 -> 36
      //   89: aload_2
      //   90: aload_1
      //   91: invokestatic 113	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
      //   94: astore_1
      //   95: aload_2
      //   96: invokevirtual 118	java/io/InputStream:close	()V
      //   99: aload_1
      //   100: areturn
      //   101: astore_2
      //   102: goto -29 -> 73
      //   105: aconst_null
      //   106: areturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	107	0	this	FeedConfirmListener
      //   0	107	1	paramString	String
      //   0	107	2	paramContext	Context
      //   26	2	3	bool	boolean
      // Exception table:
      //   from	to	target	type
      //   8	14	70	java/io/IOException
      //   20	27	70	java/io/IOException
      //   31	36	70	java/io/IOException
      //   40	68	70	java/io/IOException
      //   80	84	70	java/io/IOException
      //   89	95	70	java/io/IOException
      //   31	36	79	java/lang/OutOfMemoryError
      //   95	99	101	java/io/IOException
    }
    
    private View a(Context paramContext, Drawable paramDrawable, String paramString, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2)
    {
      Object localObject1 = new DisplayMetrics();
      ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics((DisplayMetrics)localObject1);
      float f = ((DisplayMetrics)localObject1).density;
      localObject1 = new RelativeLayout(paramContext);
      Object localObject2 = new ImageView(paramContext);
      ((ImageView)localObject2).setImageDrawable(paramDrawable);
      ((ImageView)localObject2).setScaleType(ImageView.ScaleType.FIT_XY);
      ((ImageView)localObject2).setId(1);
      int i = (int)(60.0F * f);
      int j = (int)(60.0F * f);
      int k = (int)(14.0F * f);
      k = (int)(18.0F * f);
      int m = (int)(6.0F * f);
      int n = (int)(18.0F * f);
      paramDrawable = new RelativeLayout.LayoutParams(i, j);
      paramDrawable.addRule(9);
      paramDrawable.setMargins(0, k, m, n);
      ((RelativeLayout)localObject1).addView((View)localObject2, paramDrawable);
      paramDrawable = new TextView(paramContext);
      paramDrawable.setText(paramString);
      paramDrawable.setTextSize(14.0F);
      paramDrawable.setGravity(3);
      paramDrawable.setIncludeFontPadding(false);
      paramDrawable.setPadding(0, 0, 0, 0);
      paramDrawable.setLines(2);
      paramDrawable.setId(5);
      paramDrawable.setMinWidth((int)(185.0F * f));
      paramString = new RelativeLayout.LayoutParams(-2, -2);
      paramString.addRule(1, 1);
      paramString.addRule(6, 1);
      i = (int)(10.0F * f);
      paramString.setMargins(0, 0, (int)(5.0F * f), 0);
      ((RelativeLayout)localObject1).addView(paramDrawable, paramString);
      paramDrawable = new View(paramContext);
      paramDrawable.setBackgroundColor(Color.rgb(214, 214, 214));
      paramDrawable.setId(3);
      paramString = new RelativeLayout.LayoutParams(-2, 2);
      paramString.addRule(3, 1);
      paramString.addRule(5, 1);
      paramString.addRule(7, 5);
      paramString.setMargins(0, 0, 0, (int)(12.0F * f));
      ((RelativeLayout)localObject1).addView(paramDrawable, paramString);
      paramDrawable = new LinearLayout(paramContext);
      paramString = new RelativeLayout.LayoutParams(-2, -2);
      paramString.addRule(5, 1);
      paramString.addRule(7, 5);
      paramString.addRule(3, 3);
      localObject2 = new Button(paramContext);
      ((Button)localObject2).setText("跳过");
      ((Button)localObject2).setBackgroundDrawable(a("buttonNegt.png", paramContext));
      ((Button)localObject2).setTextColor(Color.rgb(36, 97, 131));
      ((Button)localObject2).setTextSize(20.0F);
      ((Button)localObject2).setOnClickListener(paramOnClickListener2);
      ((Button)localObject2).setId(4);
      paramOnClickListener2 = new LinearLayout.LayoutParams(0, (int)(45.0F * f));
      paramOnClickListener2.rightMargin = ((int)(14.0F * f));
      paramOnClickListener2.leftMargin = ((int)(4.0F * f));
      paramOnClickListener2.weight = 1.0F;
      paramDrawable.addView((View)localObject2, paramOnClickListener2);
      paramOnClickListener2 = new Button(paramContext);
      paramOnClickListener2.setText("确定");
      paramOnClickListener2.setTextSize(20.0F);
      paramOnClickListener2.setTextColor(Color.rgb(255, 255, 255));
      paramOnClickListener2.setBackgroundDrawable(a("buttonPost.png", paramContext));
      paramOnClickListener2.setOnClickListener(paramOnClickListener1);
      paramContext = new LinearLayout.LayoutParams(0, (int)(45.0F * f));
      paramContext.weight = 1.0F;
      paramContext.rightMargin = ((int)(4.0F * f));
      paramDrawable.addView(paramOnClickListener2, paramContext);
      ((RelativeLayout)localObject1).addView(paramDrawable, paramString);
      paramContext = new FrameLayout.LayoutParams((int)(279.0F * f), (int)(163.0F * f));
      ((RelativeLayout)localObject1).setPadding((int)(14.0F * f), 0, (int)(12.0F * f), (int)(12.0F * f));
      ((RelativeLayout)localObject1).setLayoutParams(paramContext);
      ((RelativeLayout)localObject1).setBackgroundColor(Color.rgb(247, 251, 247));
      paramContext = new PaintDrawable(Color.rgb(247, 251, 247));
      paramContext.setCornerRadius(f * 5.0F);
      ((RelativeLayout)localObject1).setBackgroundDrawable(paramContext);
      return (View)localObject1;
    }
    
    private void a(String paramString, final IUiListener paramIUiListener, final Object paramObject)
    {
      Drawable localDrawable = null;
      Dialog localDialog = new Dialog(AuthAgent.e(AuthAgent.this));
      localDialog.requestWindowFeature(1);
      Object localObject3 = AuthAgent.e(AuthAgent.this).getPackageManager();
      try
      {
        Object localObject1 = ((PackageManager)localObject3).getPackageInfo(AuthAgent.e(AuthAgent.this).getPackageName(), 0);
        if (localObject1 != null) {
          localDrawable = ((PackageInfo)localObject1).applicationInfo.loadIcon((PackageManager)localObject3);
        }
        localObject1 = new ButtonListener(localDialog, paramIUiListener)
        {
          public void onClick(View paramAnonymousView)
          {
            AuthAgent.FeedConfirmListener.this.a();
            if ((this.d != null) && (this.d.isShowing())) {
              this.d.dismiss();
            }
            if (paramIUiListener != null) {
              paramIUiListener.onComplete(paramObject);
            }
          }
        };
        localObject3 = new ButtonListener(localDialog, paramIUiListener)
        {
          public void onClick(View paramAnonymousView)
          {
            if ((this.d != null) && (this.d.isShowing())) {
              this.d.dismiss();
            }
            if (paramIUiListener != null) {
              paramIUiListener.onComplete(paramObject);
            }
          }
        };
        ColorDrawable localColorDrawable = new ColorDrawable();
        localColorDrawable.setAlpha(0);
        localDialog.getWindow().setBackgroundDrawable(localColorDrawable);
        localDialog.setContentView(a(AuthAgent.e(AuthAgent.this), localDrawable, paramString, (View.OnClickListener)localObject1, (View.OnClickListener)localObject3));
        localDialog.setOnCancelListener(new DialogInterface.OnCancelListener()
        {
          public void onCancel(DialogInterface paramAnonymousDialogInterface)
          {
            if (paramIUiListener != null) {
              paramIUiListener.onComplete(paramObject);
            }
          }
        });
        if ((AuthAgent.e(AuthAgent.this) != null) && (!AuthAgent.e(AuthAgent.this).isFinishing())) {
          localDialog.show();
        }
        return;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          localNameNotFoundException.printStackTrace();
          Object localObject2 = null;
        }
      }
    }
    
    protected void a()
    {
      Bundle localBundle = AuthAgent.g(AuthAgent.this);
      HttpUtils.requestAsync(AuthAgent.h(AuthAgent.this), AuthAgent.e(AuthAgent.this), "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi", localBundle, "POST", null);
    }
    
    public void onCancel()
    {
      if (this.a != null) {
        this.a.onCancel();
      }
    }
    
    public void onComplete(Object paramObject)
    {
      int j = 0;
      int i = 0;
      if (paramObject != null)
      {
        localObject = (JSONObject)paramObject;
        if (localObject == null) {}
      }
      try
      {
        if (((JSONObject)localObject).getInt("sendinstall") == 1) {
          i = 1;
        }
        j = i;
        localObject = ((JSONObject)localObject).getString("installwording");
      }
      catch (JSONException localJSONException)
      {
        do
        {
          for (;;)
          {
            f.d("FeedConfirm", "There is no value for sendinstall.");
            i = j;
            String str = "";
          }
        } while (this.a == null);
        this.a.onComplete(paramObject);
      }
      Object localObject = URLDecoder.decode((String)localObject);
      f.b("TAG", " WORDING = " + (String)localObject + "xx");
      if ((i != 0) && (!TextUtils.isEmpty((CharSequence)localObject)))
      {
        a((String)localObject, this.a, paramObject);
        return;
      }
    }
    
    public void onError(UiError paramUiError)
    {
      if (this.a != null) {
        this.a.onError(paramUiError);
      }
    }
    
    private abstract class ButtonListener
      implements View.OnClickListener
    {
      Dialog d;
      
      ButtonListener(Dialog paramDialog)
      {
        this.d = paramDialog;
      }
    }
  }
  
  private class TokenListener
    implements IUiListener
  {
    private final IUiListener b;
    private final boolean c;
    private final Context d;
    
    public TokenListener(Context paramContext, IUiListener paramIUiListener, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.d = paramContext;
      this.b = paramIUiListener;
      this.c = paramBoolean1;
      f.b("openSDK_LOG", "OpenUi, TokenListener()");
    }
    
    public void onCancel()
    {
      f.b("openSDK_LOG", "OpenUi, TokenListener() onCancel");
      this.b.onCancel();
      f.b();
    }
    
    public void onComplete(Object paramObject)
    {
      f.b("openSDK_LOG", "OpenUi, TokenListener() onComplete");
      paramObject = (JSONObject)paramObject;
      for (;;)
      {
        try
        {
          str1 = ((JSONObject)paramObject).getString("access_token");
          String str2 = ((JSONObject)paramObject).getString("expires_in");
          String str3 = ((JSONObject)paramObject).getString("openid");
          if ((str1 != null) && (AuthAgent.a(AuthAgent.this) != null) && (str3 != null))
          {
            AuthAgent.b(AuthAgent.this).setAccessToken(str1, str2);
            AuthAgent.c(AuthAgent.this).setOpenId(str3);
            a.d(this.d, AuthAgent.d(AuthAgent.this));
          }
          str1 = ((JSONObject)paramObject).getString("pf");
          if (str1 == null) {}
        }
        catch (JSONException localJSONException)
        {
          String str1;
          localJSONException.printStackTrace();
          f.b("openSDK_LOG", "OpenUi, TokenListener() onComplete error", localJSONException);
          continue;
        }
        try
        {
          this.d.getSharedPreferences("pfStore", 0).edit().putString("pf", str1).commit();
          if (this.c) {
            CookieSyncManager.getInstance().sync();
          }
          this.b.onComplete(paramObject);
          AuthAgent.this.releaseResource();
          f.b();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          f.b("openSDK_LOG", "OpenUi, TokenListener() onComplete error", localException);
        }
      }
    }
    
    public void onError(UiError paramUiError)
    {
      f.b("openSDK_LOG", "OpenUi, TokenListener() onError");
      this.b.onError(paramUiError);
      f.b();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/connect/auth/AuthAgent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */