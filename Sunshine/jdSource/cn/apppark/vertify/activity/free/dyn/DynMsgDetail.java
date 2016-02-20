package cn.apppark.vertify.activity.free.dyn;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.dyn.Dyn5007ReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.share.ShareAct;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import hf;
import hg;
import hh;
import hi;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

public class DynMsgDetail
  extends Activity
  implements View.OnClickListener
{
  private final int COLLECTION_ADD_WHAT = 3;
  private final int COLLECTION_CANCEL_WHAT = 4;
  private final int GET_WHAT = 1;
  private String METHOD = "detailNew";
  private String METHOD_COLLECTION = "saveNewsFavorites";
  public String METHOD_DEL = "deleteNewsFavorites";
  private String METHOD_SHARE = "saveShare";
  private final int SUBSHARE_WHAT = 2;
  public boolean a = false;
  private Button btn_collection;
  private Button btn_comment;
  private Button btn_finish;
  private Button btn_share;
  private FrameLayout fra_root;
  private hi handler;
  private LinearLayout ll_root;
  private LoadDataProgress load;
  private String mContent;
  private int mType;
  private WebView mWebView;
  private BroadcastReceiver msgReceiver = new hh(this);
  private DynMsgListReturnVo msgVo;
  private Dyn5007ReturnVo msgVo3;
  private RelativeLayout rel_topMenu;
  private TextView tv_commentnum;
  private TextView tv_menuTitle;
  private TextView tv_sharenum;
  private TextView tv_time;
  private TextView tv_title;
  private TextView tv_viewNum;
  
  private void addMsgCollection(int paramInt)
  {
    Object localObject = new ClientPersionInfo(this);
    if (((ClientPersionInfo)localObject).getUserId() == null)
    {
      startActivity(new Intent(this, YYGYContants.getLoginClass()));
      return;
    }
    HQCHApplication.instance.initToast("收藏中,请稍候", 0);
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("memberId", ((ClientPersionInfo)localObject).getUserId());
    localHashMap.put("newsId", this.msgVo.getId());
    localObject = new WebServicePool(paramInt, this.handler, "json", YYGYContants.map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", this.METHOD_COLLECTION);
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void delData(int paramInt)
  {
    Object localObject = new ClientPersionInfo(this);
    if (((ClientPersionInfo)localObject).getUserId() == null)
    {
      startActivity(new Intent(this, YYGYContants.getLoginClass()));
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("memberId", ((ClientPersionInfo)localObject).getUserId());
    localHashMap.put("newsId", this.msgVo.getId());
    localObject = new WebServicePool(paramInt, this.handler, "json", YYGYContants.map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", this.METHOD_DEL);
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getData(int paramInt, String paramString)
  {
    ClientPersionInfo localClientPersionInfo = new ClientPersionInfo(this);
    HashMap localHashMap = new HashMap();
    localHashMap.put("interfaces", paramString);
    if (localClientPersionInfo.getUserId() != null) {
      localHashMap.put("userId", localClientPersionInfo.getUserId());
    }
    paramString = new WebServicePool(paramInt, this.handler, "json", YYGYContants.map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", this.METHOD);
    paramString.doRequest(paramString);
  }
  
  private void goBack()
  {
    finish();
  }
  
  private void initData(DynMsgListReturnVo paramDynMsgListReturnVo)
  {
    if ("1".equals(paramDynMsgListReturnVo.getIsFavorites()))
    {
      this.btn_collection.setBackgroundResource(2130837649);
      this.tv_time.setText(paramDynMsgListReturnVo.getCreateTime());
      this.tv_title.setText(paramDynMsgListReturnVo.getTitle());
      this.tv_menuTitle.setText(paramDynMsgListReturnVo.getTitle());
      if (!StringUtil.isNotZero(paramDynMsgListReturnVo.getShareCount())) {
        break label158;
      }
      this.tv_sharenum.setText(paramDynMsgListReturnVo.getShareCount());
      label75:
      if (!StringUtil.isNotZero(paramDynMsgListReturnVo.getBrowseCount())) {
        break label170;
      }
      this.tv_viewNum.setText(paramDynMsgListReturnVo.getBrowseCount());
      label96:
      if (!StringUtil.isNotZero(paramDynMsgListReturnVo.getCommentCount())) {
        break label182;
      }
      this.tv_commentnum.setText(paramDynMsgListReturnVo.getCommentCount());
    }
    for (;;)
    {
      try
      {
        paramDynMsgListReturnVo = URLDecoder.decode(this.mContent, "utf-8");
        this.mWebView.loadDataWithBaseURL(null, paramDynMsgListReturnVo, "text/html", "utf-8", null);
        return;
      }
      catch (UnsupportedEncodingException paramDynMsgListReturnVo)
      {
        label158:
        label170:
        label182:
        paramDynMsgListReturnVo.printStackTrace();
      }
      this.btn_collection.setBackgroundResource(2130837648);
      break;
      this.tv_sharenum.setVisibility(8);
      break label75;
      this.tv_viewNum.setVisibility(8);
      break label96;
      this.tv_commentnum.setVisibility(8);
    }
  }
  
  @SuppressLint({"NewApi"})
  private void initWidget()
  {
    this.ll_root = ((LinearLayout)findViewById(2131362215));
    this.fra_root = ((FrameLayout)findViewById(2131362221));
    this.mWebView = ((WebView)findViewById(2131362222));
    this.tv_title = ((TextView)findViewById(2131362219));
    this.tv_menuTitle = ((TextView)findViewById(2131362217));
    this.rel_topMenu = ((RelativeLayout)findViewById(2131362216));
    this.tv_commentnum = ((TextView)findViewById(2131362230));
    this.tv_sharenum = ((TextView)findViewById(2131362228));
    this.tv_viewNum = ((TextView)findViewById(2131362226));
    this.btn_comment = ((Button)findViewById(2131362229));
    this.btn_share = ((Button)findViewById(2131362227));
    this.btn_collection = ((Button)findViewById(2131362224));
    this.tv_time = ((TextView)findViewById(2131362220));
    this.tv_title.setVisibility(8);
    this.tv_time.setVisibility(8);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.rel_topMenu);
    this.mWebView.clearCache(true);
    this.btn_finish = ((Button)findViewById(2131362218));
    this.btn_finish.setOnClickListener(this);
    this.btn_share.setOnClickListener(this);
    this.btn_comment.setOnClickListener(this);
    this.btn_collection.setOnClickListener(this);
    this.tv_commentnum.setOnClickListener(this);
    this.tv_sharenum.setOnClickListener(this);
    ButtonColorFilter.setButtonFocusChanged(this.btn_finish);
    ButtonColorFilter.setButtonFocusChanged(this.btn_share);
    ButtonColorFilter.setButtonFocusChanged(this.btn_comment);
    ButtonColorFilter.setButtonFocusChanged(this.btn_collection);
    WebSettings localWebSettings = this.mWebView.getSettings();
    localWebSettings.setPluginState(WebSettings.PluginState.ON);
    localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    localWebSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
    localWebSettings.setLoadWithOverviewMode(true);
    localWebSettings.setCacheMode(1);
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setDefaultTextEncodingName("UTF-8");
    localWebSettings.setAllowFileAccess(true);
    this.mWebView.setVerticalScrollBarEnabled(false);
    this.mWebView.clearCache(true);
    this.mWebView.addJavascriptInterface(this, "jsclick");
    this.mWebView.setWebViewClient(new hf(this));
  }
  
  private void subShareData(int paramInt)
  {
    Object localObject = new HashMap();
    if (this.mType == 2) {
      ((Map)localObject).put("interfaces", this.msgVo.getId());
    }
    for (;;)
    {
      localObject = new WebServicePool(paramInt, this.handler, "json", YYGYContants.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", this.METHOD_SHARE);
      ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
      return;
      if (this.mType == 3) {
        ((Map)localObject).put("interfaces", this.msgVo3.getId());
      }
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 2) {
      this.tv_commentnum.setText(paramInt2);
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    finish();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131362219: 
    case 2131362220: 
    case 2131362221: 
    case 2131362222: 
    case 2131362223: 
    case 2131362225: 
    case 2131362226: 
    default: 
      return;
    case 2131362218: 
      finish();
      return;
    case 2131362227: 
    case 2131362228: 
      paramView = new Intent(this, ShareAct.class);
      Bundle localBundle = new Bundle();
      if (YYGYContants.VIP_0.equals(YYGYContants.mHelper.getIsVip())) {
        localBundle.putString("content", "\"" + this.msgVo.getTitle() + "\"-来自应用公园制作的APP<<" + getString(2131230721) + ">> " + this.msgVo.getShareUrl());
      }
      for (;;)
      {
        localBundle.putString("imgpath", "");
        paramView.putExtras(localBundle);
        startActivity(paramView);
        return;
        localBundle.putString("content", "\"" + this.msgVo.getTitle() + "\" <<" + getString(2131230721) + ">> " + this.msgVo.getShareUrl());
      }
    case 2131362229: 
    case 2131362230: 
      paramView = new Intent(this, DynSubComment.class);
      paramView.putExtra("id", this.msgVo.getId());
      startActivityForResult(paramView, 2);
      return;
    }
    if ("1".equals(this.msgVo.getIsFavorites()))
    {
      delData(4);
      return;
    }
    addMsgCollection(3);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903097);
    this.handler = new hi(this, null);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.mType = getIntent().getIntExtra("type", 1);
    if (this.mType == 2)
    {
      this.msgVo = ((DynMsgListReturnVo)getIntent().getBundleExtra("bund").getSerializable("vo"));
      if (this.msgVo != null)
      {
        initWidget();
        this.load.show(2131230756, true, true, "255");
        getData(1, this.msgVo.getId());
      }
    }
    for (;;)
    {
      if (paramBundle != null) {
        this.mWebView.restoreState(paramBundle);
      }
      paramBundle = new IntentFilter();
      paramBundle.addAction(YYGYContants.SHARE_ACTION_MSG);
      registerReceiver(this.msgReceiver, paramBundle);
      return;
      if (this.mType == 3)
      {
        this.msgVo3 = ((Dyn5007ReturnVo)getIntent().getBundleExtra("bund").getSerializable("vo"));
        if (this.msgVo3 != null)
        {
          initWidget();
          this.load.show(2131230756, true, true, "255");
          getData(1, this.msgVo3.getId());
        }
      }
    }
  }
  
  protected void onDestroy()
  {
    if (this.mWebView != null)
    {
      this.mWebView.clearCache(true);
      this.mWebView.onPause();
      this.mWebView.destroy();
    }
    unregisterReceiver(this.msgReceiver);
    super.onDestroy();
  }
  
  protected void onPause()
  {
    super.onPause();
    this.mWebView.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.mWebView.onResume();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    this.mWebView.saveState(paramBundle);
  }
  
  @JavascriptInterface
  public void showImage(int paramInt, String paramString)
  {
    runOnUiThread(new hg(this, paramInt));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynMsgDetail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */