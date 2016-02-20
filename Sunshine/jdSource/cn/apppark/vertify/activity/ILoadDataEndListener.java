package cn.apppark.vertify.activity;

public abstract interface ILoadDataEndListener
{
  public abstract void onLoadCacheFail(int paramInt);
  
  public abstract void onLoadCacheSuccess(int paramInt);
  
  public abstract void onLoadFail(int paramInt);
  
  public abstract void onLoadSuccess(int paramInt);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/ILoadDataEndListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */