package cn.apppark.vertify.activity.free.dyn;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.ScaleAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import cn.apppark.mcd.vo.dyn.Dyn5006Vo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.FreeAct;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import cn.apppark.vertify.activity.buy.BuyMyCenter;
import cn.apppark.vertify.activity.persion.PersionCollection;
import cn.apppark.vertify.activity.persion.PersionMyTieBa;
import cn.apppark.vertify.activity.persion.PersonInfo;
import cn.apppark.vertify.activity.persion.PersonLbsMsg;
import cn.apppark.vertify.activity.persion.SetInfo;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import ii;
import ij;
import ik;
import java.util.HashMap;
import java.util.Map;

public class DynPersonCenter5006
  extends RelativeLayout
  implements View.OnClickListener, ISelfViewDyn
{
  public static int REQUEST_PUSH_MSG = 5;
  private final int GET_PUSHMSG_NUM = 6;
  private final int REQUEST_LOGIN = 0;
  private final int REQUEST_LOGIN_OFF = 1;
  Dyn5006Vo a;
  FreeAct b;
  private Button btn_login;
  private Button btn_reg;
  ClientPersionInfo c;
  private Context context;
  boolean d = false;
  boolean e = false;
  boolean f = false;
  boolean g = false;
  boolean h = false;
  private ik handler;
  ScaleAnimation i;
  private RemoteImageView img_head;
  private ImageView img_headbg;
  private boolean isAnimaEnd = false;
  ScaleAnimation j;
  private LinearLayout ll_buyCard;
  private LinearLayout ll_collection;
  private LinearLayout ll_loginState;
  private LinearLayout ll_msg;
  private LinearLayout ll_myFriend;
  private LinearLayout ll_noLoginState;
  private LinearLayout ll_notice;
  private LinearLayout ll_set;
  private LinearLayout ll_tieBa;
  protected Dialog loadDialog;
  private ILoadDataEndListener loadendListener;
  private RelativeLayout rel_line1;
  private RelativeLayout rel_line2;
  private RelativeLayout rel_line3;
  private TextView tv_line1;
  private TextView tv_line2;
  private TextView tv_msgNum;
  private TextView tv_noticeNum;
  private TextView tv_signName;
  private TextView tv_username;
  
  public DynPersonCenter5006(Context paramContext, Dyn5006Vo paramDyn5006Vo, ElasticScrollView paramElasticScrollView, FreeAct paramFreeAct)
  {
    super(paramContext);
    this.context = paramContext;
    this.b = paramFreeAct;
    this.a = paramDyn5006Vo;
    if (StringUtil.isNotNull(HQCHApplication.mainActivity.clientBaseVo.getStyle_userCenterNavBgColor())) {}
    for (YYGYContants.PERSIONCENTER_TOP_COLOR = HQCHApplication.mainActivity.clientBaseVo.getStyle_userCenterNavBgColor();; YYGYContants.PERSIONCENTER_TOP_COLOR = YYGYContants.PERSIONCENTER_DEFAULT_COLOR)
    {
      this.c = new ClientPersionInfo(paramContext);
      paramElasticScrollView.setRefreshable(false);
      this.loadDialog = PublicUtil.createLoadingDialog("数据提交中...", paramContext);
      this.handler = new ik(this, null);
      initWidget();
      return;
    }
  }
  
  private void changeItemState()
  {
    if ("1".equals(HQCHApplication.mainActivity.clientBaseVo.getHaveProduct())) {
      this.d = true;
    }
    if ("1".equals(HQCHApplication.mainActivity.clientBaseVo.getHaveTieba())) {
      this.f = true;
    }
    if ("1".equals(HQCHApplication.mainActivity.clientBaseVo.getHaveInfo())) {
      this.e = true;
    }
    if (this.d)
    {
      this.ll_buyCard.setVisibility(0);
      this.rel_line1.setVisibility(0);
      if (!this.f) {
        break label230;
      }
      this.ll_tieBa.setVisibility(0);
      this.rel_line2.setVisibility(0);
      label112:
      if ((!this.e) && (!this.d) && (!this.f)) {
        break label251;
      }
      this.ll_collection.setVisibility(0);
      this.h = true;
      label146:
      if ((!this.f) && (!this.h) && (!this.d))
      {
        this.tv_line1.setVisibility(8);
        this.tv_line2.setVisibility(8);
      }
      if ((this.f) || (this.h)) {
        break label263;
      }
      this.rel_line1.setVisibility(8);
    }
    label230:
    label251:
    label263:
    while (this.h)
    {
      return;
      this.ll_buyCard.setVisibility(8);
      this.rel_line1.setVisibility(8);
      break;
      this.ll_tieBa.setVisibility(8);
      this.rel_line2.setVisibility(8);
      break label112;
      this.ll_collection.setVisibility(8);
      break label146;
    }
    this.rel_line2.setVisibility(8);
  }
  
  private void changeLoginInfo()
  {
    if (this.c.getUserId() == null)
    {
      this.ll_loginState.setVisibility(8);
      this.ll_noLoginState.setVisibility(0);
      this.img_head.setImageBitmap(null);
    }
    label170:
    label181:
    for (;;)
    {
      return;
      this.ll_loginState.setVisibility(0);
      this.ll_noLoginState.setVisibility(8);
      if (StringUtil.isNotNull(this.c.getUserNikeName()))
      {
        this.tv_username.setText(this.c.getUserNikeName());
        this.tv_username.setVisibility(0);
        if (this.c.getUserSign() == null) {
          break label170;
        }
        this.tv_signName.setText(this.c.getUserSign());
      }
      for (;;)
      {
        if (this.c.getUserHeadFace() == null) {
          break label181;
        }
        this.img_head.setDefaultImage(Integer.valueOf(2130837771));
        this.img_head.setImageUrlRound(this.c.getUserHeadFace(), 100);
        this.img_head.refreshDrawableState();
        return;
        this.tv_username.setVisibility(8);
        break;
        this.tv_signName.setText("个性签名");
      }
    }
  }
  
  private void getAnimaBig(View paramView)
  {
    if (this.i == null)
    {
      this.i = new ScaleAnimation(1.0F, 1.2F, 1.0F, 1.2F, 1, 0.5F, 1, 0.5F);
      this.i.setDuration(9000L);
      this.i.setFillEnabled(true);
      this.i.setFillAfter(true);
      this.i.setStartOffset(2000L);
      this.i.setAnimationListener(new ii(this, paramView));
    }
    paramView.setAnimation(this.i);
    this.i.start();
  }
  
  private void getAnimaSmall(View paramView)
  {
    if (this.j == null)
    {
      this.j = new ScaleAnimation(1.2F, 1.0F, 1.2F, 1.0F, 1, 0.5F, 1, 0.5F);
      this.j.setDuration(9000L);
      this.i.setStartOffset(2000L);
      this.j.setFillEnabled(true);
      this.j.setFillAfter(true);
      this.j.setAnimationListener(new ij(this, paramView));
    }
    paramView.setAnimation(this.j);
    this.j.start();
  }
  
  private void getPushMsgNum(int paramInt)
  {
    Object localObject = "2016-02-20 10:31:004";
    if (this.c.getLastPushMsgTime() != null) {
      localObject = this.c.getLastPushMsgTime();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("readTime", localObject);
    localHashMap.put("currPage", Integer.valueOf(1));
    localHashMap.put("pageSize", Integer.valueOf(1));
    localObject = new WebServicePool(paramInt, this.handler, "json", PublicUtil.map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "getMyMsg");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    View localView = ((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903102, null);
    this.ll_buyCard = ((LinearLayout)localView.findViewById(2131362276));
    this.ll_tieBa = ((LinearLayout)localView.findViewById(2131362278));
    this.ll_myFriend = ((LinearLayout)localView.findViewById(2131362280));
    this.ll_collection = ((LinearLayout)localView.findViewById(2131362282));
    this.ll_msg = ((LinearLayout)localView.findViewById(2131362284));
    this.ll_notice = ((LinearLayout)localView.findViewById(2131362286));
    this.ll_set = ((LinearLayout)localView.findViewById(2131362288));
    this.ll_loginState = ((LinearLayout)localView.findViewById(2131362269));
    this.ll_noLoginState = ((LinearLayout)localView.findViewById(2131362272));
    this.rel_line1 = ((RelativeLayout)localView.findViewById(2131362277));
    this.rel_line2 = ((RelativeLayout)localView.findViewById(2131362279));
    this.rel_line3 = ((RelativeLayout)localView.findViewById(2131362281));
    this.tv_line1 = ((TextView)localView.findViewById(2131362275));
    this.tv_line2 = ((TextView)localView.findViewById(2131362283));
    this.btn_reg = ((Button)localView.findViewById(2131362273));
    this.btn_login = ((Button)localView.findViewById(2131362274));
    this.tv_username = ((TextView)localView.findViewById(2131362270));
    this.tv_signName = ((TextView)localView.findViewById(2131362271));
    this.tv_msgNum = ((TextView)localView.findViewById(2131362285));
    this.tv_noticeNum = ((TextView)localView.findViewById(2131362287));
    this.img_head = ((RemoteImageView)localView.findViewById(2131362268));
    this.img_headbg = ((ImageView)localView.findViewById(2131362267));
    getAnimaBig(this.img_headbg);
    ButtonColorFilter.setButtonFocusChanged(this.btn_reg);
    ButtonColorFilter.setButtonFocusChanged(this.btn_login);
    this.ll_buyCard.setOnClickListener(this);
    this.ll_tieBa.setOnClickListener(this);
    this.ll_myFriend.setOnClickListener(this);
    this.ll_collection.setOnClickListener(this);
    this.ll_msg.setOnClickListener(this);
    this.ll_notice.setOnClickListener(this);
    this.ll_set.setOnClickListener(this);
    this.btn_reg.setOnClickListener(this);
    this.btn_login.setOnClickListener(this);
    this.tv_username.setOnClickListener(this);
    this.tv_signName.setOnClickListener(this);
    this.img_head.setOnClickListener(this);
    changeItemState();
    addView(localView, new RelativeLayout.LayoutParams(-1, -1));
  }
  
  public void init() {}
  
  public void initData()
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadSuccess(2);
    }
    getPushMsgNum(6);
  }
  
  public boolean isCache()
  {
    return false;
  }
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    changeLoginInfo();
    if (paramInt1 == REQUEST_PUSH_MSG) {
      getPushMsgNum(6);
    }
  }
  
  public void onClick(View paramView)
  {
    if ((paramView.getId() != 2131362273) && (paramView.getId() != 2131362284) && (paramView.getId() != 2131362288) && (this.c.getUserId() == null))
    {
      paramView = new Intent(this.context, YYGYContants.getLoginClass());
      this.b.getParent().startActivityForResult(paramView, 0);
      return;
    }
    switch (paramView.getId())
    {
    case 2131362280: 
    case 2131362284: 
    case 2131362269: 
    case 2131362272: 
    case 2131362275: 
    case 2131362277: 
    case 2131362279: 
    case 2131362281: 
    case 2131362283: 
    case 2131362285: 
    case 2131362287: 
    default: 
      return;
    case 2131362268: 
    case 2131362270: 
    case 2131362271: 
      paramView = new Intent(this.context, PersonInfo.class);
      this.context.startActivity(paramView);
      return;
    case 2131362276: 
      paramView = new Intent(this.context, BuyMyCenter.class);
      this.context.startActivity(paramView);
      return;
    case 2131362278: 
      paramView = new Intent(this.context, PersionMyTieBa.class);
      this.context.startActivity(paramView);
      return;
    case 2131362282: 
      paramView = new Intent(this.context, PersionCollection.class);
      paramView.putExtra("haveinfo", this.e);
      paramView.putExtra("haveproduct", this.d);
      paramView.putExtra("havetieba", this.f);
      this.context.startActivity(paramView);
      return;
    case 2131362286: 
      paramView = new Intent(this.context, PersonLbsMsg.class);
      this.b.getParent().startActivityForResult(paramView, REQUEST_PUSH_MSG);
      return;
    case 2131362288: 
      paramView = new Intent(this.context, SetInfo.class);
      this.b.getParent().startActivityForResult(paramView, 1);
      return;
    case 2131362273: 
      paramView = new Intent(this.context, YYGYContants.getRegClass());
      this.b.getParent().startActivityForResult(paramView, 0);
      return;
    }
    paramView = new Intent(this.context, YYGYContants.getLoginClass());
    this.b.getParent().startActivityForResult(paramView, 0);
  }
  
  public void onDestroy()
  {
    if (this.loadDialog != null) {
      this.loadDialog.dismiss();
    }
    if (this.img_headbg != null)
    {
      this.isAnimaEnd = true;
      this.img_headbg.clearAnimation();
    }
  }
  
  public void onPause() {}
  
  public void onRefresh()
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadSuccess(3);
    }
  }
  
  public void onResume()
  {
    changeLoginInfo();
  }
  
  public void setLoadendListener(ILoadDataEndListener paramILoadDataEndListener)
  {
    this.loadendListener = paramILoadDataEndListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynPersonCenter5006.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */