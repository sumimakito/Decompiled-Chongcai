package cn.apppark.mcd.vo.base;

import android.content.Intent;

public class ActivityHistoryVo
{
  private String id;
  private Intent intent;
  private String pageId;
  private boolean showAd = true;
  
  public String getId()
  {
    return this.id;
  }
  
  public Intent getIntent()
  {
    return this.intent;
  }
  
  public String getPageId()
  {
    return this.pageId;
  }
  
  public boolean isShowAd()
  {
    return this.showAd;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setIntent(Intent paramIntent)
  {
    this.intent = paramIntent;
  }
  
  public void setPageId(String paramString)
  {
    this.pageId = paramString;
  }
  
  public void setShowAd(boolean paramBoolean)
  {
    this.showAd = paramBoolean;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/base/ActivityHistoryVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */