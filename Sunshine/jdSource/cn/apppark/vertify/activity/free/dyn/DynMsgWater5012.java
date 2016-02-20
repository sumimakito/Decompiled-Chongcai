package cn.apppark.vertify.activity.free.dyn;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.LazyScrollView;
import cn.apppark.mcd.widget.WaterfallImageView;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import ie;
import if;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class DynMsgWater5012
  extends LazyScrollView
  implements ISelfViewDyn
{
  private static final int GET_WHAT = 4;
  private static final int REF_DATA = 2;
  private int[] bottomIndex;
  private int columnSpace = 5;
  private int column_count = 2;
  private int[] column_height;
  private Context context;
  private int currentPage = 1;
  private int current_index = 0;
  private int current_page = 0;
  private int edgeSpace = 5;
  private if handler;
  private ArrayList<DynMsgListReturnVo> itemList = new ArrayList();
  private ArrayList<DynMsgListReturnVo> itemListTemp;
  private DynMsgListVo itemVo;
  private int item_width;
  private int[] lineIndex;
  private int loaded_count = 0;
  private ILoadDataEndListener loadendListener;
  private int pageSize = 20;
  private FreePageVo pageVo;
  private HashMap<Integer, Integer>[] pin_mark = null;
  private int scroll_height;
  private int[] topIndex;
  private LinearLayout waterfall_container;
  private ArrayList<LinearLayout> waterfall_items;
  
  public DynMsgWater5012(Context paramContext, FreePageVo paramFreePageVo, DynMsgListVo paramDynMsgListVo, ElasticScrollView paramElasticScrollView)
  {
    super(paramContext);
    this.itemVo = paramDynMsgListVo;
    this.pageVo = paramFreePageVo;
    this.context = paramContext;
    setParentScroll(paramElasticScrollView);
    this.handler = new if(this, null);
    FunctionPublic.setBackground(this, paramDynMsgListVo.getStyle_bgType(), paramDynMsgListVo.getStyle_bgPic(), paramDynMsgListVo.getStyle_bgColor());
    if ((getBackground() != null) && (!"0".equals(paramDynMsgListVo.getStyle_bgType()))) {
      getBackground().setAlpha(FunctionPublic.str2int(paramDynMsgListVo.getStyle_bgAlpha()) * 255 / 100);
    }
    initBaseData();
    InitLayout();
  }
  
  private void AddImage(String paramString, int paramInt1, int paramInt2, DynMsgListReturnVo paramDynMsgListReturnVo)
  {
    WaterfallImageView localWaterfallImageView = new WaterfallImageView(this.context, paramDynMsgListReturnVo, this.itemVo, this.pageVo.getSys_pageID());
    localWaterfallImageView.setColumnIndex(paramInt1);
    localWaterfallImageView.setId(paramInt2);
    localWaterfallImageView.setViewHandler(this.handler);
    paramDynMsgListReturnVo.setPicUrl(paramString);
    paramDynMsgListReturnVo.setItemWidth((int)(this.item_width - this.edgeSpace * YYGYContants.scaleUnite * 2.0F));
    localWaterfallImageView.setDynMsgListReturnVo(paramDynMsgListReturnVo);
    localWaterfallImageView.LoadImage();
    ((LinearLayout)this.waterfall_items.get(paramInt1)).addView(localWaterfallImageView);
  }
  
  private void AddItemToContainer(int paramInt1, int paramInt2)
  {
    int j = paramInt1 * paramInt2;
    int k = this.itemList.size();
    int i = j;
    while ((i < (paramInt1 + 1) * paramInt2) && (i < k))
    {
      this.loaded_count += 1;
      AddImage(((DynMsgListReturnVo)this.itemList.get(i)).getPicUrl(), this.current_index, this.loaded_count, (DynMsgListReturnVo)this.itemList.get(i));
      this.current_index += 1;
      if (this.current_index >= this.column_count) {
        this.current_index = 0;
      }
      i += 1;
    }
    if (j > this.itemList.size()) {
      setMore(false);
    }
  }
  
  private void InitLayout()
  {
    setOnScrollListener(new ie(this));
    this.waterfall_container = new LinearLayout(this.context);
    this.waterfall_container.setOrientation(0);
    int i = FunctionPublic.getConvertValue(this.edgeSpace);
    this.waterfall_container.setPadding(i, i * 2, i, i);
    this.waterfall_items = new ArrayList();
    int j = (int)(this.columnSpace * YYGYContants.scaleUnite);
    i = 0;
    while (i < this.column_count)
    {
      LinearLayout localLinearLayout = new LinearLayout(this.context);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(this.item_width, -2);
      localLinearLayout.setPadding(j, 0, j, 0);
      localLinearLayout.setOrientation(1);
      localLinearLayout.setLayoutParams(localLayoutParams);
      this.waterfall_items.add(localLinearLayout);
      this.waterfall_container.addView(localLinearLayout);
      i += 1;
    }
    addView(this.waterfall_container);
    getView();
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("interfaces", this.itemVo.getInterfaces());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(2000));
    localObject = new WebServicePool(paramInt2, this.handler, "json", PublicUtil.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "list");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initBaseData()
  {
    this.item_width = ((int)((this.itemVo.getSys_w() - this.edgeSpace * 2) * YYGYContants.scaleUnite / this.column_count));
    this.column_height = new int[this.column_count];
    this.pin_mark = new HashMap[this.column_count];
    this.lineIndex = new int[this.column_count];
    this.bottomIndex = new int[this.column_count];
    this.topIndex = new int[this.column_count];
    int i = 0;
    while (i < this.column_count)
    {
      this.lineIndex[i] = -1;
      this.bottomIndex[i] = -1;
      this.pin_mark[i] = new HashMap();
      i += 1;
    }
  }
  
  private void refData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 2);
  }
  
  public void init() {}
  
  public void initData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 4);
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
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynMsgWater5012.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */