package cn.apppark.vertify.activity.free.dyn;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.dyn.Dyn5007Vo;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;

public class DynSearch5007
  extends RelativeLayout
  implements ISelfViewDyn
{
  private Context context;
  private LinearLayout ll_search;
  private ILoadDataEndListener loadendListener;
  private RelativeLayout rel_root;
  private Dyn5007Vo vo;
  
  public DynSearch5007(Context paramContext, Dyn5007Vo paramDyn5007Vo)
  {
    super(paramContext);
    this.context = paramContext;
    this.vo = paramDyn5007Vo;
    init();
  }
  
  public void init()
  {
    View localView = ((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903112, null);
    this.ll_search = ((LinearLayout)localView.findViewById(2131362369));
    this.rel_root = ((RelativeLayout)localView.findViewById(2131362368));
    addView(localView, new RelativeLayout.LayoutParams(-1, -1));
    FunctionPublic.setBackground(this.rel_root, this.vo.getStyle_bgType(), this.vo.getStyle_bgPic(), this.vo.getStyle_bgColor());
    if (getBackground() != null) {
      getBackground().setAlpha(FunctionPublic.str2int(this.vo.getStyle_bgAlpha()) * 255 / 100);
    }
    this.ll_search.setOnClickListener(new DynSearch5007.1(this));
  }
  
  public void initData()
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadSuccess(2);
    }
  }
  
  public boolean isCache()
  {
    return false;
  }
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onRefresh()
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadSuccess(3);
    }
  }
  
  public void onResume() {}
  
  public void setLoadendListener(ILoadDataEndListener paramILoadDataEndListener)
  {
    this.loadendListener = paramILoadDataEndListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynSearch5007.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */