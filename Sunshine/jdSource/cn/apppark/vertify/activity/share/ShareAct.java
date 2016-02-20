package cn.apppark.vertify.activity.share;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import cn.apppark.mcd.weibo.QzoneShareUtil;
import cn.apppark.mcd.weibo.SinaShareUtil;
import cn.apppark.mcd.weibo.WeiXinShareUtil;
import cn.apppark.vertify.activity.BaseAct;
import com.sina.weibo.sdk.api.share.BaseResponse;
import com.sina.weibo.sdk.api.share.IWeiboHandler.Response;
import com.sina.weibo.sdk.api.share.IWeiboShareAPI;
import com.sina.weibo.sdk.auth.sso.SsoHandler;
import java.io.PrintStream;
import pw;

public class ShareAct
  extends BaseAct
  implements IWeiboHandler.Response
{
  private Button btn_copy;
  private Button btn_qzone;
  private Button btn_sina;
  private Button btn_sms;
  private Button btn_weixincircle;
  private Button btn_weixinfriend;
  private LinearLayout ll_copy;
  private LinearLayout ll_qzone;
  private LinearLayout ll_root;
  private LinearLayout ll_sina;
  private LinearLayout ll_sms;
  private LinearLayout ll_title;
  private LinearLayout ll_weixincircle;
  private LinearLayout ll_weixinfriend;
  private Bundle mBoundle;
  private String mContent;
  private String mContentEnd;
  private String mContentNoUrl;
  private Context mContext = this;
  private String mImgPath;
  private QzoneShareUtil mQzoneUtil;
  private SinaShareUtil mSinaUtil;
  private String mTargetUrl;
  private TextView tv_cancel;
  
  private void closeAnima()
  {
    getAnimaOut(this.ll_weixinfriend, 0);
    getAnimaOut(this.ll_weixincircle, 50);
    getAnimaOut(this.ll_sina, 100);
    getAnimaOut(this.ll_qzone, 0);
    getAnimaOut(this.ll_sms, 50);
    getAnimaOut(this.ll_copy, 100);
    getAnimaOut(this.tv_cancel, 0);
    getAnimaOut(this.ll_title, 0);
  }
  
  private void getAnimaIn(View paramView, int paramInt)
  {
    Animation localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968576);
    localAnimation.setStartOffset(paramInt);
    paramView.setAnimation(localAnimation);
    localAnimation.start();
  }
  
  private void getAnimaInRotate(View paramView, int paramInt)
  {
    Animation localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968577);
    localAnimation.setStartOffset(paramInt);
    paramView.setAnimation(localAnimation);
    localAnimation.start();
  }
  
  private void getAnimaOut(View paramView, int paramInt)
  {
    Animation localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968578);
    localAnimation.setStartOffset(paramInt);
    localAnimation.setAnimationListener(new pw(this));
    paramView.setAnimation(localAnimation);
    localAnimation.start();
  }
  
  private boolean initShareContent()
  {
    this.mContent = this.mBoundle.getString("content").replace("@###", "@apppark");
    System.out.println("mContent:" + this.mContent);
    if (StringUtil.isNotNull(this.mContent))
    {
      this.mTargetUrl = this.mContent.substring(this.mContent.indexOf("http://"), this.mContent.length());
      this.mContentNoUrl = this.mContent.replace(this.mTargetUrl, "");
      this.mImgPath = this.mBoundle.getString("imgpath");
      this.mContentEnd = ("--来自<<" + getString(2131230721) + ">>");
      return true;
    }
    initToast(2131230793, 0);
    return false;
  }
  
  private void initWidget()
  {
    this.btn_sina = ((Button)findViewById(2131362784));
    this.btn_copy = ((Button)findViewById(2131362793));
    this.btn_qzone = ((Button)findViewById(2131362787));
    this.btn_weixincircle = ((Button)findViewById(2131362781));
    this.btn_weixinfriend = ((Button)findViewById(2131362778));
    this.btn_sms = ((Button)findViewById(2131362790));
    this.tv_cancel = ((TextView)findViewById(2131362795));
    this.ll_sina = ((LinearLayout)findViewById(2131362783));
    this.ll_copy = ((LinearLayout)findViewById(2131362792));
    this.ll_qzone = ((LinearLayout)findViewById(2131362786));
    this.ll_weixinfriend = ((LinearLayout)findViewById(2131362777));
    this.ll_sms = ((LinearLayout)findViewById(2131362789));
    this.ll_weixincircle = ((LinearLayout)findViewById(2131362780));
    this.ll_title = ((LinearLayout)findViewById(2131362776));
    this.ll_root = ((LinearLayout)findViewById(2131362434));
    ButtonColorFilter.setButtonFocusChanged(this.btn_sina);
    ButtonColorFilter.setButtonFocusChanged(this.btn_copy);
    ButtonColorFilter.setButtonFocusChanged(this.btn_qzone);
    ButtonColorFilter.setButtonFocusChanged(this.btn_weixincircle);
    ButtonColorFilter.setButtonFocusChanged(this.btn_weixinfriend);
    ButtonColorFilter.setButtonFocusChanged(this.btn_sms);
    ButtonColorFilter.setButtonFocusChanged(this.tv_cancel);
    this.btn_copy.setOnClickListener(new ShareAct.MyBtnClickListener(this, null));
    this.tv_cancel.setOnClickListener(new ShareAct.MyBtnClickListener(this, null));
    this.ll_root.setOnClickListener(new ShareAct.MyBtnClickListener(this, null));
    setViewState();
  }
  
  private void setViewState()
  {
    if (StringUtil.isNotNull(HQCHApplication.mainActivity.clientBaseVo.getQzoneAppID()))
    {
      this.btn_qzone.setBackgroundResource(2130837806);
      this.btn_qzone.setOnClickListener(new ShareAct.MyBtnClickListener(this, null));
      if (!StringUtil.isNotNull(HQCHApplication.mainActivity.clientBaseVo.getSinaAppKey())) {
        break label193;
      }
      this.btn_sina.setBackgroundResource(2130837809);
      this.btn_sina.setOnClickListener(new ShareAct.MyBtnClickListener(this, null));
      label82:
      if (!StringUtil.isNotNull(HQCHApplication.mainActivity.clientBaseVo.getWeixinAppID())) {
        break label206;
      }
      this.btn_weixincircle.setBackgroundResource(2130837811);
      this.btn_weixinfriend.setBackgroundResource(2130837813);
      this.btn_weixincircle.setOnClickListener(new ShareAct.MyBtnClickListener(this, null));
      this.btn_weixinfriend.setOnClickListener(new ShareAct.MyBtnClickListener(this, null));
    }
    for (;;)
    {
      this.btn_sms.setBackgroundResource(2130837804);
      this.btn_sms.setOnClickListener(new ShareAct.MyBtnClickListener(this, null));
      showAnima();
      return;
      this.btn_qzone.setBackgroundResource(2130837807);
      break;
      label193:
      this.btn_sina.setBackgroundResource(2130837810);
      break label82;
      label206:
      this.btn_weixincircle.setBackgroundResource(2130837812);
      this.btn_weixinfriend.setBackgroundResource(2130837814);
    }
  }
  
  private void showAnima()
  {
    Object localObject = this.ll_weixinfriend;
    Animation localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968576);
    localAnimation.setStartOffset(0L);
    ((View)localObject).setAnimation(localAnimation);
    localAnimation.start();
    localObject = this.ll_weixincircle;
    localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968576);
    localAnimation.setStartOffset(50L);
    ((View)localObject).setAnimation(localAnimation);
    localAnimation.start();
    localObject = this.ll_sina;
    localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968576);
    localAnimation.setStartOffset(100L);
    ((View)localObject).setAnimation(localAnimation);
    localAnimation.start();
    localObject = this.ll_qzone;
    localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968576);
    localAnimation.setStartOffset(0L);
    ((View)localObject).setAnimation(localAnimation);
    localAnimation.start();
    localObject = this.ll_sms;
    localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968576);
    localAnimation.setStartOffset(50L);
    ((View)localObject).setAnimation(localAnimation);
    localAnimation.start();
    localObject = this.ll_copy;
    localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968576);
    localAnimation.setStartOffset(100L);
    ((View)localObject).setAnimation(localAnimation);
    localAnimation.start();
    localObject = this.ll_title;
    localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968576);
    localAnimation.setStartOffset(0L);
    ((View)localObject).setAnimation(localAnimation);
    localAnimation.start();
    localObject = this.tv_cancel;
    localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968577);
    localAnimation.setStartOffset(0L);
    ((View)localObject).setAnimation(localAnimation);
    localAnimation.start();
  }
  
  private void weiXinShare(boolean paramBoolean)
  {
    new WeiXinShareUtil(this, HQCHApplication.mainActivity.clientBaseVo.getWeixinAppID()).sendWeiXinImgText(this.mContentNoUrl, this.mContentEnd, "", this.mTargetUrl, paramBoolean);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (this.mSinaUtil != null)
    {
      SsoHandler localSsoHandler = this.mSinaUtil.getmSsoHandler();
      if (localSsoHandler != null) {
        localSsoHandler.authorizeCallBack(paramInt1, paramInt2, paramIntent);
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903198);
    this.mBoundle = getIntent().getExtras();
    initWidget();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    if (this.mSinaUtil != null) {
      this.mSinaUtil.getmWeiboShareAPI().handleWeiboResponse(paramIntent, this);
    }
  }
  
  public void onResponse(BaseResponse paramBaseResponse)
  {
    switch (paramBaseResponse.errCode)
    {
    default: 
      return;
    case 0: 
      paramBaseResponse = new Intent();
      paramBaseResponse.setAction(YYGYContants.SHARE_ACTION_MSG);
      sendBroadcast(paramBaseResponse);
      return;
    case 1: 
      finish();
      return;
    }
    initToast(2131230795, 0);
    finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/share/ShareAct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */