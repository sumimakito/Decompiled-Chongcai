package cn.apppark.vertify.activity.free.dyn;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.LayoutInflater;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import cn.apppark.vertify.adapter.DynMsg5010Adapter;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import hk;
import hl;
import hm;
import hn;
import ho;
import hp;
import hq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class DynMsgGalleryText5010
  extends PullDownListViewAutoLoad
  implements ISelfViewDyn
{
  private final int CLICK_GALLERY_ITEM = 2;
  private final int GET_WHAT = 3;
  private final int REF_DATA = 4;
  private final int WHAT_AUTO_PLAY = 1;
  RelativeLayout a;
  private DynMsg5010Adapter adapter;
  RelativeLayout b;
  public Gallery c;
  private int clickPos = 0;
  private Context context;
  private int currentPage = 1;
  private int currentPos = 0;
  hp d;
  public ImageView e;
  public TextView f;
  private int firstItemIndex = 0;
  Thread g;
  private hq handler;
  private boolean isStop = false;
  private ArrayList<DynMsgListReturnVo> itemList = new ArrayList();
  private ArrayList<DynMsgListReturnVo> itemListGallery;
  private ArrayList<DynMsgListReturnVo> itemListTemp;
  private DynMsgListVo itemVo;
  private ILoadDataEndListener loadendListener;
  private FreePageVo pageVo;
  private ElasticScrollView parentScroll;
  
  public DynMsgGalleryText5010(Context paramContext, FreePageVo paramFreePageVo, DynMsgListVo paramDynMsgListVo, ElasticScrollView paramElasticScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.itemVo = paramDynMsgListVo;
    this.pageVo = paramFreePageVo;
    this.handler = new hq(this, null);
    this.parentScroll = paramElasticScrollView;
    setCacheColorHint(0);
    setFadingEdgeLength(0);
    setVerticalScrollBarEnabled(false);
    setScrollingCacheEnabled(false);
    setParentScroll(paramElasticScrollView);
    setFooterDividersEnabled(false);
    setOnItemClickListener(new hk(this));
    setonFootRefreshListener(new hl(this));
    FunctionPublic.setBackground(this, paramDynMsgListVo.getStyle_bgType(), paramDynMsgListVo.getStyle_bgPic(), paramDynMsgListVo.getStyle_bgColor());
    if ((getBackground() != null) && (!"0".equals(paramDynMsgListVo.getStyle_bgType()))) {
      getBackground().setAlpha(FunctionPublic.str2int(paramDynMsgListVo.getStyle_bgAlpha()) * 255 / 100);
    }
    FunctionPublic.setDevider(this, paramDynMsgListVo.getStyle_rowLineBgType(), paramDynMsgListVo.getStyle_rowLineBgPic(), paramDynMsgListVo.getStyle_rowLineColor(), paramDynMsgListVo.getStyle_rowLineHeight());
    this.a = ((RelativeLayout)((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903096, null));
    this.b = ((RelativeLayout)this.a.findViewById(2131362212));
    FunctionPublic.setBackground(this.b, paramDynMsgListVo.getStyle_titleBgType(), paramDynMsgListVo.getStyle_titleBgPic(), paramDynMsgListVo.getStyle_titleBgColor());
    if ((this.b.getBackground() != null) && (!"0".equals(paramDynMsgListVo.getStyle_titleBgType()))) {
      this.b.getBackground().setAlpha(FunctionPublic.str2int(paramDynMsgListVo.getStyle_titleBgAlpha()) * 255 / 100);
    }
    this.c = ((Gallery)this.a.findViewById(2131362211));
    this.c.getLayoutParams().height = FunctionPublic.getConvertValue(160);
    this.f = ((TextView)this.a.findViewById(2131362214));
    FunctionPublic.setTextStyle(this.f, paramDynMsgListVo.getStyle_galleryTextSize(), paramDynMsgListVo.getStyle_galleryTextColor(), paramDynMsgListVo.getStyle_galleryTextBold());
    this.e = ((ImageView)this.a.findViewById(2131362213));
    this.c.setOnItemSelectedListener(new hm(this));
    this.c.setOnItemClickListener(new hn(this));
    addHeaderView(this.a);
    if ("0".equals(paramDynMsgListVo.getStyle_enableScroll())) {
      setScroll(false);
    }
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("interfaces", this.itemVo.getInterfaces());
    ((Map)localObject).put("type", "1");
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", PublicUtil.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "list");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initChangeGalleryThread()
  {
    if (this.g == null)
    {
      this.g = new Thread(new ho(this));
      this.g.start();
    }
  }
  
  private void initGalleryData()
  {
    if (this.itemListGallery == null) {
      return;
    }
    if ((this.d == null) && (this.itemListGallery != null))
    {
      this.c.setAdapter(new hp(this, this.context, this.itemListGallery));
      initChangeGalleryThread();
      return;
    }
    this.adapter.notifyDataSetChanged();
  }
  
  private void refData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 4);
  }
  
  public void init() {}
  
  public void initData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 3);
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
    getData(this.currentPage, 4);
  }
  
  public void onResume()
  {
    if (Build.VERSION.SDK_INT == 15)
    {
      setAdapter(this.adapter);
      setSelection(this.firstItemIndex);
    }
  }
  
  public void setLoadendListener(ILoadDataEndListener paramILoadDataEndListener)
  {
    this.loadendListener = paramILoadDataEndListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */