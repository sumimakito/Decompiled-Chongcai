package cn.apppark.vertify.activity.free.dyn;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import cn.apppark.vertify.adapter.DynMsg5002Adapter;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import ht;
import hu;
import hv;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class DynMsgList5002
  extends PullDownListViewAutoLoad
  implements ISelfViewDyn
{
  private static final int GET_WHAT = 1;
  private static final int REF_DATA = 2;
  private DynMsg5002Adapter adapter;
  private Context context;
  private int currentPage = 1;
  private hv handler;
  private ArrayList<DynMsgListReturnVo> itemList = new ArrayList();
  private ArrayList<DynMsgListReturnVo> itemListTemp;
  private DynMsgListVo itemVo;
  private ILoadDataEndListener loadendListener;
  private FreePageVo pageVo;
  private ElasticScrollView parentScroll;
  
  public DynMsgList5002(Context paramContext, FreePageVo paramFreePageVo, DynMsgListVo paramDynMsgListVo, ElasticScrollView paramElasticScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.itemVo = paramDynMsgListVo;
    this.pageVo = paramFreePageVo;
    this.handler = new hv(this, null);
    this.parentScroll = paramElasticScrollView;
    setCacheColorHint(0);
    setFadingEdgeLength(0);
    setFooterDividersEnabled(false);
    setVerticalScrollBarEnabled(false);
    setScrollingCacheEnabled(false);
    setParentScroll(paramElasticScrollView);
    setOnItemClickListener(new ht(this));
    setonFootRefreshListener(new hu(this));
    FunctionPublic.setBackground(this, paramDynMsgListVo.getStyle_bgType(), paramDynMsgListVo.getStyle_bgPic(), paramDynMsgListVo.getStyle_bgColor());
    if ((getBackground() != null) && (!"0".equals(paramDynMsgListVo.getStyle_bgType()))) {
      getBackground().setAlpha(FunctionPublic.str2int(paramDynMsgListVo.getStyle_bgAlpha()) * 255 / 100);
    }
    FunctionPublic.setDevider(this, paramDynMsgListVo.getStyle_rowLineBgType(), paramDynMsgListVo.getStyle_rowLineBgPic(), paramDynMsgListVo.getStyle_rowLineColor(), paramDynMsgListVo.getStyle_rowLineHeight());
    if ("0".equals(paramDynMsgListVo.getStyle_enableScroll())) {
      setScroll(false);
    }
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("interfaces", this.itemVo.getInterfaces());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", PublicUtil.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "list");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
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
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onRefresh()
  {
    this.currentPage = 1;
    getData(this.currentPage, 2);
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynMsgList5002.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */