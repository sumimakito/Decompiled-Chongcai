package cn.apppark.mcd.vo.dyn;

import cn.apppark.mcd.vo.base.BaseReturnVo;

public class DynRssHead5003Vo
  extends BaseReturnVo
{
  private String link;
  private String pubDate;
  private String title;
  
  public DynRssHead5003Vo(String paramString1, String paramString2, String paramString3)
  {
    this.title = paramString1;
    this.pubDate = paramString2;
    this.link = paramString3;
  }
  
  public String getLink()
  {
    return this.link;
  }
  
  public String getPubDate()
  {
    return this.pubDate;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public void setLink(String paramString)
  {
    this.link = paramString;
  }
  
  public void setPubDate(String paramString)
  {
    this.pubDate = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/dyn/DynRssHead5003Vo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */