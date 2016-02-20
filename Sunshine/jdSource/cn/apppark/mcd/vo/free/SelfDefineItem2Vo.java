package cn.apppark.mcd.vo.free;

import cn.apppark.mcd.vo.base.BaseVo;

public class SelfDefineItem2Vo
  extends BaseVo
{
  private String appID;
  private String itemId;
  private String pic;
  
  public String getAppID()
  {
    return this.appID;
  }
  
  public String getItemId()
  {
    return this.itemId;
  }
  
  public String getPic()
  {
    return this.pic;
  }
  
  public void setAppID(String paramString)
  {
    this.appID = paramString;
  }
  
  public void setItemId(String paramString)
  {
    this.itemId = paramString;
  }
  
  public void setPic(String paramString)
  {
    this.pic = paramString;
  }
  
  public String toString()
  {
    return "HSelfDefineItem2Vo [appID=" + this.appID + ", itemId=" + this.itemId + ", pic=" + this.pic + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/free/SelfDefineItem2Vo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */