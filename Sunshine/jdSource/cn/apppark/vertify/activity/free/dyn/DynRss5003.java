package cn.apppark.vertify.activity.free.dyn;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.DynRss5003Vo;
import cn.apppark.mcd.vo.dyn.DynRssItem5003Vo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import cn.apppark.vertify.adapter.DynRss5003Adapter;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import jn;
import jo;
import jp;
import jr;

public class DynRss5003
  extends PullDownListViewAutoLoad
  implements ISelfViewDyn
{
  private static final int GET_WHAT = 1;
  private static final int REF_DATA = 2;
  private DynRss5003Adapter adapter;
  private String code = "utf-8";
  private Context context;
  private int currentPage = 1;
  private int currentY;
  private int firstItemIndex = 0;
  private boolean found = false;
  private jr handler;
  private ArrayList<DynRssItem5003Vo> itemList = new ArrayList();
  private ArrayList<DynRssItem5003Vo> itemListTemp;
  private DynRss5003Vo itemVo;
  private ILoadDataEndListener loadendListener;
  private FreePageVo pageVo;
  private ElasticScrollView parentScroll;
  private String result = null;
  
  public DynRss5003(Context paramContext, FreePageVo paramFreePageVo, DynRss5003Vo paramDynRss5003Vo, ElasticScrollView paramElasticScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.itemVo = paramDynRss5003Vo;
    this.pageVo = paramFreePageVo;
    this.handler = new jr(this, null);
    this.parentScroll = paramElasticScrollView;
    setCacheColorHint(0);
    setFadingEdgeLength(0);
    setVerticalScrollBarEnabled(false);
    setScrollingCacheEnabled(false);
    setOnItemClickListener(new jn(this));
    setParentScroll(paramElasticScrollView);
    setonFootRefreshListener(new jo(this));
    FunctionPublic.setBackground(this, paramDynRss5003Vo.getStyle_bgType(), paramDynRss5003Vo.getStyle_bgPic(), paramDynRss5003Vo.getStyle_bgColor());
    if ((getBackground() != null) && (!"0".equals(paramDynRss5003Vo.getStyle_bgType()))) {
      getBackground().setAlpha(FunctionPublic.str2int(paramDynRss5003Vo.getStyle_bgAlpha()) * 255 / 100);
    }
    FunctionPublic.setDevider(this, paramDynRss5003Vo.getStyle_rowBgType(), paramDynRss5003Vo.getStyle_rowLinePic(), paramDynRss5003Vo.getStyle_rowLineColor(), paramDynRss5003Vo.getStyle_rowLineHeight());
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    new Thread(new jp(this, paramInt2)).start();
  }
  
  private void refData()
  {
    this.currentPage = 1;
    int i = this.currentPage;
    new Thread(new jp(this, 2)).start();
  }
  
  public void init() {}
  
  public void initData()
  {
    this.currentPage = 1;
    int i = this.currentPage;
    new Thread(new jp(this, 1)).start();
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
    int i = this.currentPage;
    new Thread(new jp(this, 2)).start();
  }
  
  public void onResume()
  {
    if (Build.VERSION.SDK_INT == 15)
    {
      setAdapter(this.adapter);
      setSelection(this.firstItemIndex);
    }
  }
  
  public byte[] read(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte['Ѐ'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    paramInputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }
  
  public void setLoadendListener(ILoadDataEndListener paramILoadDataEndListener)
  {
    this.loadendListener = paramILoadDataEndListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynRss5003.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */