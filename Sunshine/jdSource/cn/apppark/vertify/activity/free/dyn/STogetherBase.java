package cn.apppark.vertify.activity.free.dyn;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.DynMsgGroupVo;
import cn.apppark.mcd.vo.dyn.STogetherItemVo;
import cn.apppark.mcd.vo.dyn.STogetherReturnVo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import cn.apppark.vertify.adapter.STogether5041Adapter;
import cn.apppark.vertify.adapter.STogether5042Adapter;
import cn.apppark.vertify.adapter.STogether5043Adapter;
import cn.apppark.vertify.adapter.TempBaseAdapter;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import lj;
import lk;
import ll;
import lm;
import ln;
import lo;
import lp;
import lq;
import lr;

public class STogetherBase
  extends PullDownListViewAutoLoad
  implements ISelfViewDyn
{
  private static int GALLERY_HIEGHT = 120;
  private final int CLICK_GALLERY_ITEM = 4;
  private final int WHAT_AUTO_PLAY = 3;
  private final int WHAT_INIT = 1;
  private final int WHAT_REF = 2;
  private TempBaseAdapter adapter;
  private ArrayList<ImageView> arrImageView;
  private ArrayList<Button> btns = new ArrayList();
  private int clickPos = 0;
  private Context context;
  private View convertView = null;
  private ArrayList<TextView> countTvs = new ArrayList();
  private int currentPage = 1;
  private int currentPos = 0;
  private Gallery gallery;
  private lq galleryAdapter;
  private Thread galleryThread;
  private String galleryType = "0";
  private ArrayList<DynMsgGroupVo> groupVoList;
  private boolean isShowGallery = false;
  private boolean isStop = false;
  private ArrayList<STogetherReturnVo> itemList = new ArrayList();
  private ArrayList<STogetherReturnVo> itemListGallery;
  private STogetherItemVo itemVo;
  private PullDownListViewAutoLoad listView = this;
  private LinearLayout ll_point;
  private LinearLayout ll_type;
  private Dialog loadDialog;
  private ILoadDataEndListener loadendListener;
  private lr mHandler;
  private LayoutInflater mInflater;
  private FreePageVo pageVo;
  private ElasticScrollView parentScroll;
  private String searchType = "0";
  
  public STogetherBase(Context paramContext, FreePageVo paramFreePageVo, STogetherItemVo paramSTogetherItemVo, ElasticScrollView paramElasticScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.itemVo = paramSTogetherItemVo;
    this.pageVo = paramFreePageVo;
    this.mHandler = new lr(this, null);
    if (((paramSTogetherItemVo.getSys_moduleType() == 5041) || (paramSTogetherItemVo.getSys_moduleType() == 5042)) && (!"0".equals(paramSTogetherItemVo.getStyle_showGallery())))
    {
      this.isShowGallery = true;
      this.galleryType = "1";
    }
    this.parentScroll = paramElasticScrollView;
    setCacheColorHint(0);
    setSelector(2130837950);
    setFadingEdgeLength(0);
    setVerticalScrollBarEnabled(false);
    setScrollingCacheEnabled(false);
    setParentScroll(paramElasticScrollView);
    setHeaderDividersEnabled(false);
    setDividerHeight(0);
    initWidget();
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("togetherId", this.itemVo.getInterfaces());
    ((Map)localObject).put("orderBy", this.searchType);
    ((Map)localObject).put("location", YYGYContants.LOCATION);
    ((Map)localObject).put("galleryType", this.galleryType);
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(10));
    localObject = new WebServicePool(paramInt2, this.mHandler, "json", PublicUtil.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "getShopGather");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initAdapter()
  {
    this.adapter = new STogether5043Adapter(this.context, this.itemVo, this.itemList);
    switch (this.itemVo.getSys_moduleType())
    {
    default: 
      return;
    case 5041: 
      this.adapter = new STogether5041Adapter(this.context, this.itemVo, this.itemList);
      return;
    case 5042: 
      this.adapter = new STogether5042Adapter(this.context, this.pageVo, this.itemVo, this.itemList);
      return;
    }
    this.adapter = new STogether5043Adapter(this.context, this.itemVo, this.itemList);
  }
  
  private void initChangeGalleryThread()
  {
    if (this.galleryThread == null)
    {
      this.galleryThread = new Thread(new lp(this));
      this.galleryThread.start();
    }
  }
  
  private void initGallery()
  {
    if (!this.isShowGallery)
    {
      this.gallery.setVisibility(8);
      this.ll_point.setVisibility(8);
      return;
    }
    this.gallery.getLayoutParams().height = FunctionPublic.getConvertValue(GALLERY_HIEGHT);
    this.gallery.setOnItemClickListener(new ll(this));
    this.gallery.setOnItemSelectedListener(new lm(this));
  }
  
  private void initGalleryData()
  {
    if (this.itemListGallery == null) {}
    do
    {
      return;
      initPoint(0);
    } while ((this.galleryAdapter != null) || (this.itemListGallery == null));
    this.gallery.setAdapter(new lq(this, this.context, this.itemListGallery));
    initChangeGalleryThread();
  }
  
  private void initListData(String paramString)
  {
    if (this.currentPage == 1)
    {
      if (this.isShowGallery)
      {
        this.itemListGallery = JsonParserDyn.parseItem2Vo(paramString, new ln(this).getType(), "galleryItem");
        initGalleryData();
      }
      if (this.itemList != null) {
        this.itemList.clear();
      }
      if (this.adapter != null) {
        this.adapter.notifyDataSetChanged();
      }
    }
    paramString = JsonParserDyn.parseJson2List(paramString, new lo(this).getType());
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
    }
    for (;;)
    {
      this.currentPage += 1;
      if ((this.itemList == null) || (this.itemList.size() <= 0)) {
        break;
      }
      this.listView.onFootNodata(((STogetherReturnVo)this.itemList.get(0)).getCount(), this.itemList.size());
      return;
      if (paramString != null)
      {
        this.itemList.addAll(paramString);
        this.adapter.notifyDataSetChanged();
      }
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void initPoint(int paramInt)
  {
    int i = 0;
    this.ll_point.removeAllViews();
    this.arrImageView = new ArrayList();
    int j = PublicUtil.dip2px(5.0F);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(j, j);
    localLayoutParams.setMargins(j, 0, j, 0);
    while (i < this.itemListGallery.size())
    {
      ImageView localImageView = new ImageView(this.context);
      localImageView.setBackgroundResource(2130837790);
      if (i == paramInt) {
        localImageView.setBackgroundResource(2130837791);
      }
      this.arrImageView.add(localImageView);
      this.ll_point.addView(localImageView, localLayoutParams);
      i += 1;
    }
  }
  
  private void initTopType()
  {
    this.groupVoList = new ArrayList();
    Object localObject1 = new DynMsgGroupVo();
    Object localObject2 = new DynMsgGroupVo();
    Object localObject3 = new DynMsgGroupVo();
    ((DynMsgGroupVo)localObject1).setId("0");
    ((DynMsgGroupVo)localObject1).setName("综合");
    ((DynMsgGroupVo)localObject2).setId("1");
    ((DynMsgGroupVo)localObject2).setName("人气");
    ((DynMsgGroupVo)localObject3).setId("2");
    ((DynMsgGroupVo)localObject3).setName("距离");
    this.groupVoList.add(localObject1);
    this.groupVoList.add(localObject2);
    this.groupVoList.add(localObject3);
    int j = YYGYContants.screenWidth / this.groupVoList.size();
    int i = 0;
    if (i < this.groupVoList.size())
    {
      localObject1 = this.mInflater.inflate(2130903180, null);
      localObject2 = (Button)((View)localObject1).findViewById(2131362710);
      localObject3 = (TextView)((View)localObject1).findViewById(2131362711);
      TextView localTextView = (TextView)((View)localObject1).findViewById(2131362712);
      ((Button)localObject2).setText(((DynMsgGroupVo)this.groupVoList.get(i)).getName());
      ((Button)localObject2).setTag(Integer.valueOf(i));
      ((TextView)localObject3).setTag(Integer.valueOf(i));
      this.btns.add(localObject2);
      this.countTvs.add(localObject3);
      FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)this.countTvs.get(i));
      if (i == 0)
      {
        FunctionPublic.setTextColor((TextView)this.btns.get(i), YYGYContants.PERSIONCENTER_TOP_COLOR);
        ((TextView)this.countTvs.get(i)).setVisibility(0);
        localTextView.setVisibility(8);
      }
      for (;;)
      {
        ((Button)localObject2).setOnClickListener(new STogetherBase.5(this));
        localObject2 = new LinearLayout.LayoutParams(j, -1);
        this.ll_type.addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
        i += 1;
        break;
        ((Button)this.btns.get(i)).setTextColor(getResources().getColor(2130837944));
      }
    }
  }
  
  private void initWidget()
  {
    this.mInflater = ((LayoutInflater)this.context.getSystemService("layout_inflater"));
    this.convertView = this.mInflater.inflate(2130903177, null);
    this.gallery = ((Gallery)this.convertView.findViewById(2131362698));
    this.ll_type = ((LinearLayout)this.convertView.findViewById(2131362700));
    this.ll_point = ((LinearLayout)this.convertView.findViewById(2131362699));
    addHeaderView(this.convertView);
    if (!"0".equals(this.itemVo.getStyle_showOrderBar())) {
      initTopType();
    }
    for (;;)
    {
      initGallery();
      setParentScroll(this.parentScroll);
      if ((this.itemVo.getSys_moduleType() == 5041) || (this.itemVo.getSys_moduleType() == 5043)) {
        this.listView.setOnItemClickListener(new lj(this));
      }
      setonFootRefreshListener(new lk(this));
      FunctionPublic.setBackground(this, this.itemVo.getStyle_bgType(), this.itemVo.getStyle_bgPic(), this.itemVo.getStyle_bgColor());
      if ((getBackground() != null) && (!"0".equals(this.itemVo.getStyle_bgType()))) {
        getBackground().setAlpha(FunctionPublic.str2int(this.itemVo.getStyle_bgAlpha()) * 255 / 100);
      }
      if ("0".equals(this.itemVo.getStyle_enableScroll())) {
        this.listView.setScroll(false);
      }
      return;
      this.ll_type.setVisibility(8);
    }
  }
  
  private void refData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 2);
  }
  
  public void changePoint(int paramInt)
  {
    int i = 0;
    if (i < this.arrImageView.size())
    {
      if (i == paramInt)
      {
        ((ImageView)this.arrImageView.get(i)).setBackgroundResource(2130837791);
        this.ll_point.invalidate();
      }
      for (;;)
      {
        i += 1;
        break;
        ((ImageView)this.arrImageView.get(i)).setBackgroundResource(2130837790);
        this.ll_point.invalidate();
      }
    }
  }
  
  public void init() {}
  
  public void initData()
  {
    getData(this.currentPage, 1);
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
  
  public void onDestroy()
  {
    this.isStop = true;
  }
  
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
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/STogetherBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */