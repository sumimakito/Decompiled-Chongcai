package cn.apppark.vertify.activity;

import android.content.Intent;

public abstract interface ISelfViewDyn
  extends ISelfView
{
  public abstract void initData();
  
  public abstract boolean isCache();
  
  public abstract void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent);
  
  public abstract void onRefresh();
  
  public abstract void setLoadendListener(ILoadDataEndListener paramILoadDataEndListener);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/ISelfViewDyn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */