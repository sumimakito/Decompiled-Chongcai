package com.sina.weibo.sdk.register.mobile;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import com.sina.weibo.sdk.component.WeiboSdkBrowser;
import com.sina.weibo.sdk.component.view.ResizeableLayout;
import com.sina.weibo.sdk.component.view.ResizeableLayout.SizeChangeListener;
import com.sina.weibo.sdk.component.view.TitleBar;
import com.sina.weibo.sdk.component.view.TitleBar.ListenerOnTitleBtnClicked;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.NetUtils;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.NetworkHelper;
import com.sina.weibo.sdk.utils.ResourceManager;
import com.sina.weibo.sdk.utils.UIUtils;
import java.util.Locale;
import org.json.JSONObject;

public class MobileRegisterActivity
  extends Activity
  implements View.OnFocusChangeListener, View.OnClickListener, ResizeableLayout.SizeChangeListener
{
  private static final String APPKEY_NOT_SET_CN = "您的app_key没有设置";
  private static final String APPKEY_NOT_SET_EN = "your appkey not set";
  private static final String APPKEY_NOT_SET_TW = "您的app_key沒有設置";
  private static final String CANCEL_EN = "Cancel";
  private static final String CANCEL_ZH_CN = "取消";
  private static final String CANCEL_ZH_TW = "取消";
  private static final String CHINA_CN = "中国";
  private static final String CHINA_EN = "China";
  private static final String CHINA_TW = "中國";
  private static final String CODE_LENGTH_CN = "你的验证码不是6位数";
  private static final String CODE_LENGTH_EN = "Your code isn’t 6-digit long";
  private static final String CODE_LENGTH_TW = "你的驗證碼不是6位數";
  private static final int DEFAULT_BG_COLOR = -855310;
  private static final int DEFAULT_CLEAR_BTN = 22;
  private static final int DEFAULT_TEXT_PADDING = 12;
  private static final int DEFAULT_TIPS_TEXT_SIZE = 13;
  private static final int DEFAULT__RIGHT_TRIANGLE = 13;
  private static final int EMPTY_VIEW_TEXT_COLOR = -4342339;
  private static final int GET_CODE_BTN_ID = 3;
  private static final String GET_CODE_CN = "获取验证码";
  private static final String GET_CODE_EN = "Get code";
  private static final String GET_CODE_TW = "獲取驗證碼";
  private static final String HELP_INFO_CN = "请确认国家和地区并填写手机号码";
  private static final String HELP_INFO_EN = "Confirm your country/region and enter your mobile number";
  private static final String HELP_INFO_TW = "請確認國家和地區并填寫手機號";
  private static final String INPUT_AUTH_CODE_CN = "请输入验证码";
  private static final String INPUT_AUTH_CODE_EN = "Verification code";
  private static final String INPUT_AUTH_CODE_TW = "請輸入驗證碼";
  private static final String INPUT_PHONE_NUM_CN = "请输入手机号码";
  private static final String INPUT_PHONE_NUM_EN = "Your mobile number";
  private static final String INPUT_PHONE_NUM_TW = "請輸入手機號";
  private static final int LINK_TEXT_COLOR = -8224126;
  private static final int MIAN_LINK_TEXT_COLOR = -11502161;
  private static final String NETWORK_ERROR_CN = "您的网络不可用，请稍后";
  private static final String NETWORK_ERROR_EN = "your network is  disabled  try again later";
  private static final String NETWORK_ERROR_TW = "您的網絡不可用，請稍後";
  private static final String OK_EN = "OK";
  private static final String OK_ZH_CN = "确定";
  private static final String OK_ZH_TW = "確定";
  private static final String PHONE_ERROR_CN = "您的手机号不是11位数";
  private static final String PHONE_ERROR_EN = "Your phone number isn’t 11-digit long";
  private static final String PHONE_ERROR_TW = "您的手機號不是11位數";
  private static final int PHONE_NUM_CLEAR_BTN_ID = 4;
  public static final String REGISTER_TITLE = "register_title";
  private static final int RESIZEABLE_INPUTMETHODHIDE = 0;
  private static final int RESIZEABLE_INPUTMETHODSHOW = 1;
  public static final String RESPONSE_EXPIRES = "expires";
  public static final String RESPONSE_OAUTH_TOKEN = "oauth_token";
  private static final int SELECT_COUNTRY_REQUEST_CODE = 0;
  private static final String SEND_MSG = "http://api.weibo.com/oauth2/sms_authorize/send";
  private static final String SEND_SUBMIT = "http://api.weibo.com/oauth2/sms_authorize/submit";
  private static final String SERVER_ERROR_CN = "服务器忙,请稍后再试";
  private static final String SERVER_ERROR_EN = "the server is busy, please  wait";
  private static final String SERVER_ERROR_TW = "服務器忙,請稍後再試";
  private static final String SINA_NOTICE_EN = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy";
  private static final String SINA_NOTICE_ZH_CN = "点击“确定”表示你同意服务使用协议和隐私条款。";
  private static final String SINA_NOTICE_ZH_TW = "點擊“確定”標示你同意服務使用協議和隱私條款。";
  private static final String SINA_PRIVATE_URL = "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349";
  private static final String SINA_PROTOCOL_URL = "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5";
  private static final String SINA_SERVICE_EN = "Service By Sina WeiBo";
  private static final String SINA_SERVICE_ZH_CN = "此服务由微博提供";
  private static final String SINA_SERVICE_ZH_TW = "此服務由微博提供";
  private static final String TAG = MobileRegisterActivity.class.getName();
  private static final int TITLE_BAR_ID = 1;
  private static final String TITLE_CN = "验证码登录";
  private static final String TITLE_EN = "Login";
  private static final String TITLE_TW = "驗證碼登錄";
  private static final int TRIANGLE_ID = 2;
  private static final String WAIT_CN = "正在处理中.....";
  private static final String WAIT_EN = "please wait .... ";
  private static final String WAIT_TW = "正在處理中.....";
  private String cfrom;
  private String mAppkey;
  private Button mBtnRegist;
  private EditText mCheckCode;
  private CountDownTimer mCountDownTimer;
  private TextView mCountryCode;
  private String mCountryCodeStr;
  private RelativeLayout mCountryLayout;
  private TextView mCountryName;
  private String mCountryNameStr;
  private Button mGetCodeBtn;
  private TextView mInfoText;
  private InputHandler mInputHandler = new InputHandler(null);
  private String mKeyHash;
  private ProgressDialog mLoadingDlg;
  private int mMaxHeight = 0;
  private String mPackageName;
  private EditText mPhoneNum;
  private ImageView mPhoneNumClearBtn;
  private ScrollView mRegistScrollview;
  private LinearLayout mRegiter_llt;
  private String mSpecifyTitle;
  private TextView mTips;
  private TitleBar titleBar;
  
  private void disableGetCodeBtn()
  {
    this.mGetCodeBtn.setEnabled(false);
    this.mGetCodeBtn.setTextColor(-4342339);
  }
  
  private void disableRegisterBtn()
  {
    this.mBtnRegist.setTextColor(1308622847);
    this.mBtnRegist.setEnabled(false);
  }
  
  private boolean doCheckOnGetMsg(String paramString)
  {
    if (!NetworkHelper.isNetworkAvailable(this))
    {
      showNetFail();
      return false;
    }
    if (!verifyPhoneNum(paramString))
    {
      this.mTips.setVisibility(0);
      this.mTips.setText(ResourceManager.getString(getApplicationContext(), "Your phone number isn’t 11-digit long", "您的手机号不是11位数", "您的手機號不是11位數"));
      return false;
    }
    this.mTips.setVisibility(4);
    return true;
  }
  
  private boolean doCheckOnSubmit(String paramString)
  {
    if (!NetworkHelper.isNetworkAvailable(this))
    {
      showNetFail();
      return false;
    }
    if (verifyCheckCode(paramString))
    {
      this.mTips.setVisibility(4);
      return true;
    }
    this.mTips.setVisibility(0);
    this.mTips.setText(ResourceManager.getString(getApplicationContext(), "Your code isn’t 6-digit long", "你的验证码不是6位数", "你的驗證碼不是6位數"));
    UIUtils.showToast(getApplicationContext(), ResourceManager.getString(getApplicationContext(), "Your code isn’t 6-digit long", "你的验证码不是6位数", "你的驗證碼不是6位數"), 0);
    return false;
  }
  
  private void enableGetCodeBtn()
  {
    this.mGetCodeBtn.setEnabled(true);
    this.mGetCodeBtn.setTextColor(-11502161);
  }
  
  private void enableRegisterBtn()
  {
    this.mBtnRegist.setEnabled(true);
    this.mBtnRegist.setTextColor(-1);
  }
  
  private Button genOKBtn()
  {
    Button localButton = new Button(this);
    localButton.setBackgroundDrawable(ResourceManager.createStateListDrawable(this, "common_button_big_blue.9.png", "common_button_big_blue_highlighted.9.png", "common_button_big_blue_disable.9.png"));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, ResourceManager.dp2px(this, 46));
    int i = ResourceManager.dp2px(this, 12);
    localLayoutParams.rightMargin = i;
    localLayoutParams.leftMargin = i;
    localButton.setText(ResourceManager.getString(this, "OK", "确定", "確定"));
    localButton.setTextSize(17.0F);
    localButton.setLayoutParams(localLayoutParams);
    return localButton;
  }
  
  private TextView genProtocalInfoTv()
  {
    TextView localTextView = new TextView(this);
    localTextView.setTextSize(2, 13.0F);
    Object localObject1 = new LinearLayout.LayoutParams(-1, -2);
    ((LinearLayout.LayoutParams)localObject1).topMargin = ResourceManager.dp2px(this, 8);
    ((LinearLayout.LayoutParams)localObject1).leftMargin = ResourceManager.dp2px(this, 12);
    ((LinearLayout.LayoutParams)localObject1).rightMargin = ResourceManager.dp2px(this, 12);
    localTextView.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    localTextView.setTextSize(13.0F);
    localTextView.setGravity(3);
    localTextView.setTextColor(-8224126);
    Object localObject2 = ResourceManager.getLanguage();
    localObject1 = "zh_CN";
    int m;
    int k;
    int j;
    int i;
    if (Locale.SIMPLIFIED_CHINESE.equals(localObject2))
    {
      localObject2 = "点击“确定”表示你同意服务使用协议和隐私条款。";
      m = "点击“确定”表示你同意服务使用协议和隐私条款。".indexOf("服务使用协议");
      k = m + "服务使用协议".length();
      j = "点击“确定”表示你同意服务使用协议和隐私条款。".indexOf("隐私条款");
      i = j + "隐私条款".length();
    }
    for (;;)
    {
      localObject2 = new SpannableStringBuilder((CharSequence)localObject2);
      if ((m != -1) && (k != -1)) {
        ((Spannable)localObject2).setSpan(new WBSdkUrlClickSpan(this, "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5&lang=" + (String)localObject1), m, k, 33);
      }
      if ((j != -1) && (i != -1)) {
        ((Spannable)localObject2).setSpan(new WBSdkUrlClickSpan(this, "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349&lang=" + (String)localObject1), j, i, 33);
      }
      localTextView.setText((CharSequence)localObject2);
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView.setFocusable(false);
      return localTextView;
      if (Locale.TRADITIONAL_CHINESE.equals(localObject2))
      {
        localObject2 = "點擊“確定”標示你同意服務使用協議和隱私條款。";
        localObject1 = "zh_HK";
        m = "點擊“確定”標示你同意服務使用協議和隱私條款。".indexOf("服務使用協議");
        k = m + "服務使用協議".length();
        j = "點擊“確定”標示你同意服務使用協議和隱私條款。".indexOf("隱私條款");
        i = j + "隱私條款".length();
      }
      else
      {
        localObject2 = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy";
        localObject1 = "en_US";
        m = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy".indexOf("Service Agreement");
        k = m + "Service Agreement".length();
        j = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy".indexOf("Privacy Policy");
        i = j + "Privacy Policy".length();
      }
    }
  }
  
  private TextView genSinaServiceTv()
  {
    TextView localTextView = new TextView(this);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.topMargin = ResourceManager.dp2px(this, 12);
    localLayoutParams.leftMargin = ResourceManager.dp2px(this, 12);
    localTextView.setLayoutParams(localLayoutParams);
    localTextView.setTextSize(13.0F);
    localTextView.setGravity(3);
    localTextView.setTextColor(-8224126);
    localTextView.setText(ResourceManager.getString(this, "Service By Sina WeiBo", "此服务由微博提供", "此服務由微博提供"));
    return localTextView;
  }
  
  private void initLoadingDlg()
  {
    this.mLoadingDlg = new ProgressDialog(this);
    this.mLoadingDlg.setCanceledOnTouchOutside(false);
    this.mLoadingDlg.requestWindowFeature(1);
    this.mLoadingDlg.setMessage(ResourceManager.getString(this, "please wait .... ", "正在处理中.....", "正在處理中....."));
  }
  
  private void initView()
  {
    ResizeableLayout localResizeableLayout = new ResizeableLayout(this);
    localResizeableLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    localResizeableLayout.setBackgroundColor(-855310);
    this.titleBar = new TitleBar(this);
    this.titleBar.setId(1);
    this.titleBar.setLeftBtnText(ResourceManager.getString(this, "Cancel", "取消", "取消"));
    this.titleBar.setTitleBarText(this.mSpecifyTitle);
    this.titleBar.setTitleBarClickListener(new TitleBar.ListenerOnTitleBtnClicked()
    {
      public void onLeftBtnClicked()
      {
        MobileRegisterActivity.this.setResult(0);
        MobileRegisterActivity.this.finish();
      }
    });
    localResizeableLayout.addView(this.titleBar);
    Object localObject1 = new View(this);
    Object localObject2 = new RelativeLayout.LayoutParams(-1, ResourceManager.dp2px(this, 2));
    ((View)localObject1).setBackgroundDrawable(ResourceManager.getNinePatchDrawable(this, "weibosdk_common_shadow_top.9.png"));
    ((RelativeLayout.LayoutParams)localObject2).addRule(3, 1);
    ((View)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
    localResizeableLayout.addView((View)localObject1);
    this.mRegistScrollview = new ScrollView(this);
    localObject1 = new RelativeLayout.LayoutParams(-1, -1);
    ((RelativeLayout.LayoutParams)localObject1).topMargin = ResourceManager.dp2px(this, 47);
    this.mRegistScrollview.setBackgroundColor(-855310);
    this.mRegistScrollview.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    this.mRegiter_llt = new LinearLayout(this);
    localObject1 = new LinearLayout.LayoutParams(-1, -2);
    this.mRegiter_llt.setOrientation(1);
    this.mRegiter_llt.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    this.mInfoText = new TextView(this);
    this.mInfoText.setTextSize(2, 13.0F);
    this.mInfoText.setHeight(ResourceManager.dp2px(this, 44));
    this.mInfoText.setGravity(17);
    this.mInfoText.setTextColor(-8224126);
    this.mInfoText.setText(ResourceManager.getString(this, "Confirm your country/region and enter your mobile number", "请确认国家和地区并填写手机号码", "請確認國家和地區并填寫手機號"));
    this.mInfoText.setFocusable(true);
    this.mInfoText.setFocusableInTouchMode(true);
    this.mRegiter_llt.addView(this.mInfoText);
    this.mCountryLayout = new RelativeLayout(this);
    localObject1 = new RelativeLayout.LayoutParams(-1, ResourceManager.dp2px(this, 48));
    this.mCountryLayout.setBackgroundDrawable(ResourceManager.createStateListDrawable(this, "login_country_background.9.png", "login_country_background_highlighted.9.png"));
    this.mCountryLayout.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    this.mCountryCode = new TextView(this);
    this.mCountryCode.setTextSize(2, 17.0F);
    this.mCountryCode.setText("0086");
    this.mCountryCode.setTextColor(-11382190);
    this.mCountryCode.setGravity(3);
    this.mCountryCode.setGravity(16);
    localObject1 = new RelativeLayout.LayoutParams(-2, ResourceManager.dp2px(this, 48));
    ((RelativeLayout.LayoutParams)localObject1).leftMargin = ResourceManager.dp2px(this, 15);
    ((RelativeLayout.LayoutParams)localObject1).addRule(9);
    this.mCountryCode.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    localObject1 = new ImageView(this);
    ((ImageView)localObject1).setId(2);
    ((ImageView)localObject1).setImageDrawable(ResourceManager.getDrawable(this, "triangle.png"));
    localObject2 = new RelativeLayout.LayoutParams(ResourceManager.dp2px(this, 13), ResourceManager.dp2px(this, 13));
    ((RelativeLayout.LayoutParams)localObject2).rightMargin = ResourceManager.dp2px(this, 15);
    ((RelativeLayout.LayoutParams)localObject2).addRule(11);
    ((RelativeLayout.LayoutParams)localObject2).addRule(15);
    ((ImageView)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
    this.mCountryName = new TextView(this);
    this.mCountryName.setTextSize(2, 17.0F);
    this.mCountryName.setTextColor(-11382190);
    this.mCountryName.setText(this.mCountryNameStr);
    this.mCountryName.setGravity(16);
    localObject2 = new RelativeLayout.LayoutParams(-2, ResourceManager.dp2px(this, 48));
    ((RelativeLayout.LayoutParams)localObject2).rightMargin = ResourceManager.dp2px(this, 118);
    ((RelativeLayout.LayoutParams)localObject2).addRule(0, 2);
    ((RelativeLayout.LayoutParams)localObject2).addRule(15);
    this.mCountryName.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    this.mCountryLayout.addView(this.mCountryCode);
    this.mCountryLayout.addView(this.mCountryName);
    this.mCountryLayout.addView((View)localObject1);
    this.mRegiter_llt.addView(this.mCountryLayout);
    localObject1 = new LinearLayout(this);
    localObject2 = new LinearLayout.LayoutParams(-1, -2);
    ((LinearLayout.LayoutParams)localObject2).topMargin = ResourceManager.dp2px(this, 10);
    ((LinearLayout)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
    ((LinearLayout)localObject1).setOrientation(1);
    localObject2 = new RelativeLayout(this);
    Object localObject3 = new LinearLayout.LayoutParams(-1, ResourceManager.dp2px(this, 50));
    ((LinearLayout.LayoutParams)localObject3).gravity = 16;
    ((RelativeLayout)localObject2).setBackgroundDrawable(ResourceManager.getNinePatchDrawable(this, "login_top_background.9.png"));
    ((RelativeLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
    this.mPhoneNumClearBtn = new ImageView(this);
    this.mPhoneNumClearBtn.setId(4);
    this.mPhoneNumClearBtn.setImageDrawable(ResourceManager.createStateListDrawable(this, "search_clear_btn_normal.png", "search_clear_btn_down.png"));
    localObject3 = new RelativeLayout.LayoutParams(ResourceManager.dp2px(this, 22), ResourceManager.dp2px(this, 22));
    ((RelativeLayout.LayoutParams)localObject3).rightMargin = ResourceManager.dp2px(this, 15);
    ((RelativeLayout.LayoutParams)localObject3).addRule(11);
    ((RelativeLayout.LayoutParams)localObject3).addRule(15);
    this.mPhoneNumClearBtn.setVisibility(4);
    this.mPhoneNumClearBtn.setLayoutParams((ViewGroup.LayoutParams)localObject3);
    ((RelativeLayout)localObject2).addView(this.mPhoneNumClearBtn);
    this.mPhoneNum = new EditText(this);
    this.mPhoneNum.setTextSize(2, 16.0F);
    this.mPhoneNum.setTextColor(-16777216);
    this.mPhoneNum.setHint(ResourceManager.getString(this, "Your mobile number", "请输入手机号码", "請輸入手機號"));
    this.mPhoneNum.setHintTextColor(-4342339);
    this.mPhoneNum.setBackgroundDrawable(null);
    this.mPhoneNum.setSelected(false);
    localObject3 = new RelativeLayout.LayoutParams(-1, ResourceManager.dp2px(this, 50));
    ((RelativeLayout.LayoutParams)localObject3).topMargin = ResourceManager.dp2px(this, 0);
    ((RelativeLayout.LayoutParams)localObject3).bottomMargin = ResourceManager.dp2px(this, 0);
    ((RelativeLayout.LayoutParams)localObject3).leftMargin = ResourceManager.dp2px(this, 0);
    ((RelativeLayout.LayoutParams)localObject3).rightMargin = ResourceManager.dp2px(this, 0);
    ((RelativeLayout.LayoutParams)localObject3).addRule(0, 4);
    this.mPhoneNum.setLayoutParams((ViewGroup.LayoutParams)localObject3);
    ((RelativeLayout)localObject2).addView(this.mPhoneNum);
    localObject3 = new RelativeLayout(this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, ResourceManager.dp2px(this, 50));
    ((RelativeLayout)localObject3).setBackgroundDrawable(ResourceManager.getNinePatchDrawable(this, "login_bottom_background.9.png"));
    ((RelativeLayout)localObject3).setLayoutParams(localLayoutParams);
    this.mGetCodeBtn = new Button(this);
    this.mGetCodeBtn.setId(3);
    this.mGetCodeBtn.setBackgroundDrawable(ResourceManager.createStateListDrawable(this, "get_code_button.9.png", "get_code_button_highlighted.9.png"));
    localLayoutParams = new RelativeLayout.LayoutParams(-2, ResourceManager.dp2px(this, 29));
    localLayoutParams.rightMargin = ResourceManager.dp2px(this, 12);
    localLayoutParams.addRule(11);
    localLayoutParams.addRule(15);
    this.mGetCodeBtn.setPadding(18, 0, 18, 0);
    this.mGetCodeBtn.setLayoutParams(localLayoutParams);
    this.mGetCodeBtn.setText(ResourceManager.getString(this, "Get code", "获取验证码", "獲取驗證碼"));
    this.mGetCodeBtn.setTextSize(15.0F);
    enableGetCodeBtn();
    ((RelativeLayout)localObject3).addView(this.mGetCodeBtn);
    this.mCheckCode = new EditText(this);
    this.mCheckCode.setTextSize(2, 16.0F);
    this.mCheckCode.setTextColor(-16777216);
    this.mCheckCode.setHintTextColor(-4342339);
    this.mCheckCode.setHint(ResourceManager.getString(this, "Verification code", "请输入验证码", "請輸入驗證碼"));
    this.mCheckCode.setBackgroundDrawable(null);
    localLayoutParams = new RelativeLayout.LayoutParams(-1, ResourceManager.dp2px(this, 48));
    localLayoutParams.addRule(0, 3);
    this.mCheckCode.setLayoutParams(localLayoutParams);
    ((RelativeLayout)localObject3).addView(this.mCheckCode);
    ((LinearLayout)localObject1).addView((View)localObject2);
    ((LinearLayout)localObject1).addView((View)localObject3);
    this.mRegiter_llt.addView((View)localObject1);
    this.mGetCodeBtn.setOnClickListener(this);
    this.mTips = new TextView(this);
    this.mTips.setTextSize(2, 13.0F);
    this.mTips.setTextColor(-2014941);
    this.mTips.setText("");
    this.mTips.setVisibility(4);
    localObject1 = new LinearLayout.LayoutParams(-1, ResourceManager.dp2px(this, 36));
    ((LinearLayout.LayoutParams)localObject1).leftMargin = ResourceManager.dp2px(this, 12);
    this.mTips.setGravity(16);
    this.mTips.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    this.mRegiter_llt.addView(this.mTips);
    this.mBtnRegist = genOKBtn();
    disableRegisterBtn();
    this.mRegiter_llt.addView(this.mBtnRegist);
    localObject1 = genSinaServiceTv();
    localObject2 = genProtocalInfoTv();
    this.mRegiter_llt.addView((View)localObject1);
    this.mRegiter_llt.addView((View)localObject2);
    this.mRegistScrollview.addView(this.mRegiter_llt);
    localResizeableLayout.addView(this.mRegistScrollview);
    initLoadingDlg();
    this.mPhoneNum.setInputType(2);
    this.mPhoneNum.addTextChangedListener(new PhoneNumTextWatcher(null));
    this.mCheckCode.setInputType(2);
    this.mCheckCode.addTextChangedListener(new CodeTextWatcher(null));
    this.mPhoneNumClearBtn.setOnClickListener(this);
    this.mPhoneNum.setOnFocusChangeListener(this);
    this.mBtnRegist.setOnClickListener(this);
    this.mCountryLayout.setOnClickListener(this);
    localResizeableLayout.setSizeChangeListener(this);
    setContentView(localResizeableLayout);
  }
  
  private void showNetFail()
  {
    UIUtils.showToast(getApplicationContext(), ResourceManager.getString(getApplicationContext(), "your network is  disabled  try again later", "您的网络不可用，请稍后", "您的網絡不可用，請稍後"), 0);
  }
  
  private boolean verifyCheckCode(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.length() == 6);
  }
  
  private boolean verifyPhoneNum(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return false;
      if (!"0086".equals(this.mCountryCodeStr)) {
        break;
      }
    } while (paramString.trim().length() != 11);
    return true;
    return true;
  }
  
  public void dismiss()
  {
    if ((this.mLoadingDlg != null) && (this.mLoadingDlg.isShowing())) {
      this.mLoadingDlg.dismiss();
    }
  }
  
  public void getMsg(String paramString1, String paramString2)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters(this.mAppkey);
    localWeiboParameters.put("appkey", this.mAppkey);
    localWeiboParameters.put("packagename", this.mPackageName);
    localWeiboParameters.put("key_hash", this.mKeyHash);
    if ("0086".equals(paramString2)) {}
    for (;;)
    {
      localWeiboParameters.put("phone", paramString1);
      localWeiboParameters.put("version", "0031005000");
      NetUtils.internalHttpRequest(this, "http://api.weibo.com/oauth2/sms_authorize/send", localWeiboParameters, "GET", new RequestListener()
      {
        public void onComplete(String paramAnonymousString)
        {
          LogUtil.d(MobileRegisterActivity.TAG, "get onComplete : " + paramAnonymousString);
          if (paramAnonymousString != null) {}
          try
          {
            paramAnonymousString = new JSONObject(paramAnonymousString);
            MobileRegisterActivity.this.cfrom = ((String)paramAnonymousString.get("cfrom"));
            return;
          }
          catch (Exception paramAnonymousString)
          {
            paramAnonymousString.printStackTrace();
          }
        }
        
        public void onWeiboException(WeiboException paramAnonymousWeiboException)
        {
          LogUtil.d(MobileRegisterActivity.TAG, "get onWeiboException " + paramAnonymousWeiboException.getMessage());
          str = ResourceManager.getString(MobileRegisterActivity.this.getApplicationContext(), "the server is busy, please  wait", "服务器忙,请稍后再试", "服務器忙,請稍後再試");
          try
          {
            JSONObject localJSONObject = new JSONObject(paramAnonymousWeiboException.getMessage());
            paramAnonymousWeiboException = str;
            if (!TextUtils.isEmpty(localJSONObject.optString("error_description"))) {
              paramAnonymousWeiboException = localJSONObject.optString("error_description");
            }
          }
          catch (Exception paramAnonymousWeiboException)
          {
            for (;;)
            {
              paramAnonymousWeiboException.printStackTrace();
              paramAnonymousWeiboException = str;
            }
          }
          UIUtils.showToast(MobileRegisterActivity.this.getApplicationContext(), paramAnonymousWeiboException, 1);
        }
      });
      return;
      paramString1 = paramString2 + paramString1;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while (paramIntent == null);
    this.mCountryCodeStr = paramIntent.getStringExtra("code");
    this.mCountryNameStr = paramIntent.getStringExtra("name");
    this.mCountryCode.setText(this.mCountryCodeStr);
    this.mCountryName.setText(this.mCountryNameStr);
  }
  
  public void onClick(View paramView)
  {
    String str;
    if (paramView == this.mGetCodeBtn)
    {
      paramView = this.mPhoneNum.getText().toString();
      str = this.mCountryCode.getText().toString();
      if (doCheckOnGetMsg(paramView))
      {
        this.mCountDownTimer.start();
        disableGetCodeBtn();
        getMsg(paramView, str);
      }
    }
    do
    {
      do
      {
        return;
        if (paramView == this.mPhoneNumClearBtn)
        {
          this.mPhoneNum.setText("");
          return;
        }
        if (paramView != this.mBtnRegist) {
          break;
        }
        paramView = this.mPhoneNum.getText().toString();
        str = this.mCheckCode.getText().toString();
      } while (!doCheckOnSubmit(str));
      submit(paramView, str);
      return;
    } while (paramView != this.mCountryLayout);
    this.mTips.setVisibility(4);
    paramView = new Intent();
    paramView.setClass(this, SelectCountryActivity.class);
    startActivityForResult(paramView, 0);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getExtras();
    if (paramBundle == null)
    {
      UIUtils.showToast(getApplicationContext(), "Pass wrong params!!", 0);
      finish();
    }
    this.mAppkey = paramBundle.getString("appKey");
    this.mPackageName = paramBundle.getString("packagename");
    this.mKeyHash = paramBundle.getString("key_hash");
    if (TextUtils.isEmpty(this.mAppkey))
    {
      UIUtils.showToast(getApplicationContext(), ResourceManager.getString(this, "your appkey not set", "您的app_key没有设置", "您的app_key沒有設置"), 0);
      finish();
    }
    String str = paramBundle.getString("register_title");
    paramBundle = str;
    if (TextUtils.isEmpty(str)) {
      paramBundle = ResourceManager.getString(this, "Login", "验证码登录", "驗證碼登錄");
    }
    this.mSpecifyTitle = paramBundle;
    this.mCountryCodeStr = "0086";
    this.mCountryNameStr = ResourceManager.getString(this, "China", "中国", "中國");
    initView();
    this.mCountDownTimer = new CountDownTimer(60000L, 1000L)
    {
      public void onFinish()
      {
        MobileRegisterActivity.this.mGetCodeBtn.setText(ResourceManager.getString(MobileRegisterActivity.this.getApplicationContext(), "Get code", "获取验证码", "獲取驗證碼"));
        MobileRegisterActivity.this.enableGetCodeBtn();
      }
      
      public void onTick(long paramAnonymousLong)
      {
        MobileRegisterActivity.this.mGetCodeBtn.setText(ResourceManager.getString(MobileRegisterActivity.this.getApplicationContext(), "Get code", "获取验证码", "獲取驗證碼") + "(" + paramAnonymousLong / 1000L + "s)");
      }
    };
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if ((paramView == this.mPhoneNum) && (!paramBoolean))
    {
      if (verifyPhoneNum(this.mPhoneNum.getText().toString())) {
        this.mTips.setVisibility(4);
      }
    }
    else {
      return;
    }
    this.mTips.setText(ResourceManager.getString(this, "Your phone number isn’t 11-digit long", "您的手机号不是11位数", "您的手機號不是11位數"));
    this.mTips.setVisibility(0);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      setResult(0);
      finish();
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    if (localDisplayMetrics.widthPixels <= localDisplayMetrics.heightPixels)
    {
      if (this.mMaxHeight >= paramInt2) {
        break label71;
      }
      paramInt1 = paramInt2;
      this.mMaxHeight = paramInt1;
      paramInt3 = 0;
      if (paramInt2 >= paramInt4) {
        break label79;
      }
      paramInt1 = 1;
    }
    for (;;)
    {
      this.mInputHandler.sendEmptyMessage(paramInt1);
      return;
      label71:
      paramInt1 = this.mMaxHeight;
      break;
      label79:
      if ((paramInt2 > paramInt4) && (paramInt2 < this.mMaxHeight))
      {
        paramInt1 = 1;
      }
      else
      {
        paramInt1 = paramInt3;
        if (paramInt2 == paramInt4)
        {
          paramInt1 = paramInt3;
          if (paramInt2 != this.mMaxHeight) {
            paramInt1 = 1;
          }
        }
      }
    }
  }
  
  public void submit(final String paramString1, String paramString2)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters(this.mAppkey);
    localWeiboParameters.put("appkey", this.mAppkey);
    localWeiboParameters.put("packagename", this.mPackageName);
    localWeiboParameters.put("key_hash", this.mKeyHash);
    localWeiboParameters.put("phone", paramString1);
    localWeiboParameters.put("version", "0031005000");
    localWeiboParameters.put("code", paramString2);
    localWeiboParameters.put("cfrom", this.cfrom);
    this.mLoadingDlg.show();
    NetUtils.internalHttpRequest(this, "http://api.weibo.com/oauth2/sms_authorize/submit", localWeiboParameters, "GET", new RequestListener()
    {
      public void onComplete(String paramAnonymousString)
      {
        MobileRegisterActivity.this.dismiss();
        LogUtil.d(MobileRegisterActivity.TAG, "get onComplete : " + paramAnonymousString);
        if (paramAnonymousString != null) {}
        try
        {
          paramAnonymousString = new JSONObject(paramAnonymousString);
          Intent localIntent = new Intent();
          Bundle localBundle = new Bundle();
          localBundle.putString("uid", paramAnonymousString.optString("uid"));
          localBundle.putString("phone_num", paramString1);
          localBundle.putString("access_token", paramAnonymousString.optString("oauth_token"));
          localBundle.putString("expires_in", paramAnonymousString.optString("expires"));
          localIntent.putExtras(localBundle);
          MobileRegisterActivity.this.setResult(-1, localIntent);
          MobileRegisterActivity.this.finish();
          return;
        }
        catch (Exception paramAnonymousString)
        {
          paramAnonymousString.printStackTrace();
        }
      }
      
      public void onWeiboException(WeiboException paramAnonymousWeiboException)
      {
        LogUtil.d(MobileRegisterActivity.TAG, "get onWeiboException " + paramAnonymousWeiboException.getMessage());
        str = ResourceManager.getString(MobileRegisterActivity.this.getApplicationContext(), "the server is busy, please  wait", "服务器忙,请稍后再试", "服務器忙,請稍後再試");
        try
        {
          JSONObject localJSONObject = new JSONObject(paramAnonymousWeiboException.getMessage());
          paramAnonymousWeiboException = str;
          if (!TextUtils.isEmpty(localJSONObject.optString("error_description"))) {
            paramAnonymousWeiboException = localJSONObject.optString("error_description");
          }
        }
        catch (Exception paramAnonymousWeiboException)
        {
          for (;;)
          {
            paramAnonymousWeiboException.printStackTrace();
            paramAnonymousWeiboException = str;
          }
        }
        MobileRegisterActivity.this.mTips.setVisibility(0);
        MobileRegisterActivity.this.mTips.setText(paramAnonymousWeiboException);
        MobileRegisterActivity.this.dismiss();
      }
    });
  }
  
  private class CodeTextWatcher
    implements TextWatcher
  {
    private CodeTextWatcher() {}
    
    public void afterTextChanged(Editable paramEditable)
    {
      if ((TextUtils.isEmpty(MobileRegisterActivity.this.mPhoneNum.getText().toString())) || (TextUtils.isEmpty(MobileRegisterActivity.this.mCheckCode.getText().toString())))
      {
        MobileRegisterActivity.this.disableRegisterBtn();
        return;
      }
      MobileRegisterActivity.this.enableRegisterBtn();
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
  
  private class InputHandler
    extends Handler
  {
    private InputHandler() {}
    
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default: 
        return;
      case 0: 
        MobileRegisterActivity.this.mInfoText.setVisibility(0);
        MobileRegisterActivity.this.mCountryLayout.setVisibility(0);
        return;
      }
      MobileRegisterActivity.this.mInfoText.setVisibility(8);
      MobileRegisterActivity.this.mCountryLayout.setVisibility(8);
    }
  }
  
  private class PhoneNumTextWatcher
    implements TextWatcher
  {
    private PhoneNumTextWatcher() {}
    
    public void afterTextChanged(Editable paramEditable)
    {
      if ((TextUtils.isEmpty(MobileRegisterActivity.this.mPhoneNum.getText().toString())) || (TextUtils.isEmpty(MobileRegisterActivity.this.mCheckCode.getText().toString())))
      {
        MobileRegisterActivity.this.disableRegisterBtn();
        return;
      }
      MobileRegisterActivity.this.enableRegisterBtn();
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      if (TextUtils.isEmpty(MobileRegisterActivity.this.mPhoneNum.getText().toString()))
      {
        MobileRegisterActivity.this.mPhoneNumClearBtn.setVisibility(4);
        return;
      }
      MobileRegisterActivity.this.mPhoneNumClearBtn.setVisibility(0);
    }
  }
  
  private class WBSdkUrlClickSpan
    extends ClickableSpan
  {
    private Context context;
    private String url;
    
    public WBSdkUrlClickSpan(Context paramContext, String paramString)
    {
      this.context = paramContext;
      this.url = paramString;
    }
    
    public void onClick(View paramView)
    {
      paramView = new Intent(this.context, WeiboSdkBrowser.class);
      Bundle localBundle = new Bundle();
      localBundle.putString("key_url", this.url);
      paramView.putExtras(localBundle);
      MobileRegisterActivity.this.startActivity(paramView);
    }
    
    public void updateDrawState(TextPaint paramTextPaint)
    {
      paramTextPaint.setColor(-11502161);
      paramTextPaint.setUnderlineText(false);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/register/mobile/MobileRegisterActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */