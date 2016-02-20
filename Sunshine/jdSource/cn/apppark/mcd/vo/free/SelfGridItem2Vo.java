package cn.apppark.mcd.vo.free;

import cn.apppark.mcd.vo.base.BasePageItem2Vo;

public class SelfGridItem2Vo
  extends BasePageItem2Vo
{
  private String data_pic;
  private String data_text;
  private String nFlag;
  private String nPageId;
  private String nPageid;
  private String stytle_itemBgColor;
  
  public String getData_pic()
  {
    return this.data_pic;
  }
  
  public String getData_text()
  {
    return this.data_text;
  }
  
  public String getStytle_itemBgColor()
  {
    return this.stytle_itemBgColor;
  }
  
  public String getnFlag()
  {
    return this.nFlag;
  }
  
  public String getnPageId()
  {
    return this.nPageId;
  }
  
  public String getnPageid()
  {
    return this.nPageid;
  }
  
  public void setData_pic(String paramString)
  {
    this.data_pic = paramString;
  }
  
  public void setData_text(String paramString)
  {
    this.data_text = paramString;
  }
  
  public void setStytle_itemBgColor(String paramString)
  {
    this.stytle_itemBgColor = paramString;
  }
  
  public void setnFlag(String paramString)
  {
    this.nFlag = paramString;
  }
  
  public void setnPageId(String paramString)
  {
    this.nPageId = paramString;
  }
  
  public void setnPageid(String paramString)
  {
    this.nPageid = paramString;
  }
  
  public String toString()
  {
    return "SelfGridItem2Vo [data_pic=" + this.data_pic + ", data_text=" + this.data_text + ", nFlag=" + this.nFlag + ", nPageid=" + this.nPageid + ", nPageId=" + this.nPageId + ", nPageType=" + this.nPageType + ", nPageModuleType=" + this.nPageModuleType + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/free/SelfGridItem2Vo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */