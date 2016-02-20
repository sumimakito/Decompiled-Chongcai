package cn.apppark.vertify.activity.free.dyn;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.DynMsgGroupVo;
import cn.apppark.mcd.vo.dyn.DynProductGroupDetailVo;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.InnerScrollView;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import cn.apppark.vertify.adapter.SProductCard5033Adapter;
import cn.apppark.vertify.adapter.SProductList5031Adapter;
import cn.apppark.vertify.adapter.SProductNine5032Adapter;
import cn.apppark.vertify.adapter.TempBaseAdapter;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import lb;
import lc;
import ld;
import le;
import lf;
import lg;
import lh;

public class SProductBase
  extends FrameLayout
  implements ISelfViewDyn
{
  private final int WHAT_GROUP = 4;
  private final int WHAT_INIT = 1;
  private final int WHAT_REF = 2;
  private final int WHAT_SCROLL = 3;
  LayoutInflater a;
  private TempBaseAdapter adapter;
  private ArrayList<Button> btns = new ArrayList();
  private Context context;
  private ArrayList<TextView> countTvs = new ArrayList();
  private int currentPage = 1;
  private DynProductGroupDetailVo groupInfo;
  private ArrayList<DynMsgGroupVo> groupVoList;
  private HorizontalScrollView hScrollView;
  private RemoteImageView img_bg;
  private RemoteImageView img_icon;
  private ImageView img_phone;
  private boolean isForceParentScrollTop = false;
  private ArrayList<DynProductReturnVo> itemList = new ArrayList();
  private DynProductVo itemVo;
  private PullDownListViewAutoLoad listView;
  private LinearLayout ll_type;
  private Dialog loadDialog;
  private ILoadDataEndListener loadendListener;
  private lh mHandler;
  private ElasticScrollView parentScroll;
  private RelativeLayout rel_cellRoot;
  private RelativeLayout rel_msg;
  private String searchGroupId;
  private TextView tv_address;
  private TextView tv_msg;
  private TextView tv_shadeLeft;
  private TextView tv_shadeRight;
  private TextView tv_title;
  private InnerScrollView vScrollView;
  
  public SProductBase(Context paramContext, FreePageVo paramFreePageVo, DynProductVo paramDynProductVo, ElasticScrollView paramElasticScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.itemVo = paramDynProductVo;
    this.parentScroll = paramElasticScrollView;
    this.mHandler = new lh(this, null);
  }
  
  public SProductBase(Context paramContext, DynProductVo paramDynProductVo, boolean paramBoolean)
  {
    super(paramContext);
    this.isForceParentScrollTop = paramBoolean;
    this.context = paramContext;
    this.itemVo = paramDynProductVo;
    this.mHandler = new lh(this, null);
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("sortId", this.searchGroupId);
    ((Map)localObject).put("orderBy", "0");
    ((Map)localObject).put("keyword", "");
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(10));
    localObject = new WebServicePool(paramInt2, this.mHandler, "json", PublicUtil.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "products_sd");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getGroupData(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("groupId", this.itemVo.getGroupId());
    ((Map)localObject).put("imei", YYGYContants.IMEI);
    localObject = new WebServicePool(paramInt, this.mHandler, "json", PublicUtil.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "getProductGroupInfo");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initAdapter()
  {
    switch (this.itemVo.getSys_moduleType())
    {
    default: 
      return;
    case 5031: 
      this.adapter = new SProductList5031Adapter(this.context, this.itemVo, this.itemList);
      return;
    case 5032: 
      this.adapter = new SProductNine5032Adapter(this.context, this.itemVo, this.itemList);
      return;
    }
    this.adapter = new SProductCard5033Adapter(this.context, this.itemVo, this.itemList);
  }
  
  private void initGroupInfo()
  {
    if (this.groupInfo != null)
    {
      this.img_icon.setImageUrl(this.groupInfo.getIconUrl());
      this.img_bg.setImageUrl(this.groupInfo.getPicUrl());
      this.tv_title.setText(this.groupInfo.getName());
      this.tv_address.setText(this.groupInfo.getAddress());
      if (!StringUtil.isNotNull(this.groupInfo.getNotice())) {
        break label121;
      }
      this.tv_msg.setText(this.groupInfo.getNotice());
    }
    for (;;)
    {
      this.img_phone.setOnClickListener(new SProductBase.4(this));
      this.rel_msg.setOnClickListener(new SProductBase.5(this));
      return;
      label121:
      this.rel_msg.setVisibility(8);
    }
  }
  
  private void initLeftType()
  {
    int i = 0;
    if (i < this.groupVoList.size())
    {
      View localView = this.a.inflate(2130903179, null);
      Button localButton = (Button)localView.findViewById(2131362707);
      TextView localTextView1 = (TextView)localView.findViewById(2131362708);
      TextView localTextView2 = (TextView)localView.findViewById(2131362709);
      localButton.setText(((DynMsgGroupVo)this.groupVoList.get(i)).getName());
      localButton.setTag(Integer.valueOf(i));
      localTextView2.setTag(Integer.valueOf(i));
      this.btns.add(localButton);
      this.countTvs.add(localTextView2);
      FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)this.countTvs.get(i));
      if (i == 0)
      {
        FunctionPublic.setTextColor((TextView)this.btns.get(i), YYGYContants.PERSIONCENTER_TOP_COLOR);
        localTextView2.setVisibility(0);
        localTextView1.setVisibility(8);
      }
      for (;;)
      {
        localButton.setOnClickListener(new SProductBase.8(this));
        this.ll_type.addView(localView);
        i += 1;
        break;
        ((Button)this.btns.get(i)).setTextColor(getResources().getColor(2130837944));
        ((Button)this.btns.get(i)).setBackgroundResource(2130837947);
        localTextView2.setVisibility(8);
      }
    }
  }
  
  private void initListData(String paramString, boolean paramBoolean)
  {
    if ((this.currentPage == 1) && (this.itemList != null))
    {
      this.itemList.clear();
      if (this.adapter != null) {
        this.adapter.notifyDataSetChanged();
      }
    }
    paramString = JsonParserDyn.parseJson2List(paramString, new lg(this).getType());
    if (this.adapter == null)
    {
      if (paramString != null) {
        this.itemList.addAll(paramString);
      }
      initAdapter();
      this.listView.setAdapter(this.adapter);
      if (this.itemList.size() > 0) {
        this.listView.setSelection(0);
      }
      if (this.isForceParentScrollTop) {
        this.mHandler.post(new lc(this));
      }
    }
    for (;;)
    {
      this.currentPage += 1;
      if ((this.itemList == null) || (this.itemList.size() <= 0)) {
        break;
      }
      this.listView.onFootNodata(((DynProductReturnVo)this.itemList.get(0)).getCount(), this.itemList.size());
      return;
      if (paramString != null)
      {
        this.itemList.addAll(paramString);
        this.adapter.notifyDataSetChanged();
      }
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void initTopType()
  {
    int i;
    int j;
    label52:
    View localView;
    Object localObject;
    if (this.groupVoList.size() * PublicUtil.dip2px(65.0F) < YYGYContants.screenWidth)
    {
      i = YYGYContants.screenWidth / this.groupVoList.size();
      this.tv_shadeRight.setVisibility(8);
      this.tv_shadeLeft.setVisibility(8);
      j = 0;
      if (j >= this.groupVoList.size()) {
        return;
      }
      localView = this.a.inflate(2130903180, null);
      localObject = (Button)localView.findViewById(2131362710);
      TextView localTextView1 = (TextView)localView.findViewById(2131362711);
      TextView localTextView2 = (TextView)localView.findViewById(2131362712);
      ((Button)localObject).setText(((DynMsgGroupVo)this.groupVoList.get(j)).getName());
      ((Button)localObject).setTag(Integer.valueOf(j));
      localTextView1.setTag(Integer.valueOf(j));
      this.btns.add(localObject);
      this.countTvs.add(localTextView1);
      FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)this.countTvs.get(j));
      if (j != 0) {
        break label279;
      }
      FunctionPublic.setTextColor((TextView)this.btns.get(j), YYGYContants.PERSIONCENTER_TOP_COLOR);
      ((TextView)this.countTvs.get(j)).setVisibility(0);
      localTextView2.setVisibility(8);
    }
    for (;;)
    {
      ((Button)localObject).setOnClickListener(new SProductBase.7(this));
      localObject = new LinearLayout.LayoutParams(i, -1);
      this.ll_type.addView(localView, (ViewGroup.LayoutParams)localObject);
      j += 1;
      break label52;
      i = PublicUtil.dip2px(65.0F);
      break;
      label279:
      ((Button)this.btns.get(j)).setTextColor(getResources().getColor(2130837944));
    }
  }
  
  private void initTopType(View paramView)
  {
    this.hScrollView = ((HorizontalScrollView)paramView.findViewById(2131362714));
    this.hScrollView.setOnTouchListener(new lf(this));
    this.tv_shadeLeft = ((TextView)paramView.findViewById(2131362715));
    this.tv_shadeLeft.setVisibility(4);
    this.tv_shadeRight = ((TextView)paramView.findViewById(2131362716));
    this.ll_type = ((LinearLayout)paramView.findViewById(2131362656));
    initTopType();
  }
  
  private void initWidget()
  {
    this.a = ((LayoutInflater)this.context.getSystemService("layout_inflater"));
    View localView;
    if ("1".equals(this.itemVo.getStyle_tabPosition()))
    {
      localView = this.a.inflate(2130903171, null);
      initTopType(localView);
      addView(localView);
      this.listView = ((PullDownListViewAutoLoad)localView.findViewById(2131362657));
      this.listView.setParentScroll(this.parentScroll);
      this.rel_cellRoot = ((RelativeLayout)localView.findViewById(2131362659));
      if (this.itemVo.getStyle_groupInfoShow() != 1) {
        break label322;
      }
      this.listView.setScroll(false);
      this.listView.setBottomScroll(false);
      if (this.parentScroll != null) {
        this.parentScroll.setElasticScrollViewListener(new lb(this));
      }
      this.img_bg = ((RemoteImageView)localView.findViewById(2131362660));
      this.img_icon = ((RemoteImageView)localView.findViewById(2131362661));
      this.tv_title = ((TextView)localView.findViewById(2131362662));
      this.tv_address = ((TextView)localView.findViewById(2131362665));
      this.img_phone = ((ImageView)localView.findViewById(2131362663));
      this.tv_msg = ((TextView)localView.findViewById(2131362667));
      this.rel_msg = ((RelativeLayout)localView.findViewById(2131362666));
      initGroupInfo();
    }
    for (;;)
    {
      this.listView.setonFootRefreshListener(new ld(this));
      if ((this.itemVo.getSys_moduleType() == 5031) || (this.itemVo.getSys_moduleType() == 5033)) {
        this.listView.setOnItemClickListener(new le(this));
      }
      return;
      localView = this.a.inflate(2130903170, null);
      initleftType(localView);
      break;
      label322:
      this.rel_cellRoot.setVisibility(8);
    }
  }
  
  private void initleftType(View paramView)
  {
    this.vScrollView = ((InnerScrollView)paramView.findViewById(2131362655));
    this.vScrollView.setParentScrollView(this.parentScroll);
    this.ll_type = ((LinearLayout)paramView.findViewById(2131362656));
    initLeftType();
  }
  
  private void refData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 2);
  }
  
  public void init() {}
  
  public void initData()
  {
    getGroupData(4);
  }
  
  public boolean isCache()
  {
    return false;
  }
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void loadFail(int paramInt)
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadFail(paramInt);
    }
  }
  
  public void loadSuccess(int paramInt)
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadSuccess(paramInt);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onRefresh()
  {
    this.currentPage = 1;
    getData(this.currentPage, 2);
  }
  
  public void onResume() {}
  
  public void setLoadendListener(ILoadDataEndListener paramILoadDataEndListener)
  {
    this.loadendListener = paramILoadDataEndListener;
  }
  
  public void setParentScroll(ElasticScrollView paramElasticScrollView)
  {
    this.parentScroll = paramElasticScrollView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/SProductBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */