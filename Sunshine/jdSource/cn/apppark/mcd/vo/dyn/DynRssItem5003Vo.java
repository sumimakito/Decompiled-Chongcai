package cn.apppark.mcd.vo.dyn;

import cn.apppark.mcd.vo.base.BaseReturnVo;
import java.io.Serializable;

public class DynRssItem5003Vo
  extends BaseReturnVo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String author;
  private String description;
  private String link;
  private String pubDate;
  private String source;
  private String title;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getAuthor()
  {
    return this.author;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public String getLink()
  {
    return this.link;
  }
  
  public String getPubDate()
  {
    return this.pubDate;
  }
  
  public String getSource()
  {
    return this.source;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public void setAuthor(String paramString)
  {
    this.author = paramString;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setLink(String paramString)
  {
    this.link = paramString;
  }
  
  public void setPubDate(String paramString)
  {
    this.pubDate = paramString;
  }
  
  public void setSource(String paramString)
  {
    this.source = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/dyn/DynRssItem5003Vo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */