package cn.apppark.mcd.vo.dyn;

import cn.apppark.mcd.vo.base.BasePageItemVo;
import com.google.gson.JsonElement;

public class Dyn5007Vo
  extends BasePageItemVo
{
  private String searchType;
  private JsonElement source;
  private String style_bgAlpha;
  private String style_bgColor;
  private String style_bgPic;
  private String style_bgType;
  
  public String getSearchType()
  {
    return this.searchType;
  }
  
  public JsonElement getSource()
  {
    return this.source;
  }
  
  public String getStyle_bgAlpha()
  {
    return this.style_bgAlpha;
  }
  
  public String getStyle_bgColor()
  {
    return this.style_bgColor;
  }
  
  public String getStyle_bgPic()
  {
    return this.style_bgPic;
  }
  
  public String getStyle_bgType()
  {
    return this.style_bgType;
  }
  
  public void setSearchType(String paramString)
  {
    this.searchType = paramString;
  }
  
  public void setSource(JsonElement paramJsonElement)
  {
    this.source = paramJsonElement;
  }
  
  public void setStyle_bgAlpha(String paramString)
  {
    this.style_bgAlpha = paramString;
  }
  
  public void setStyle_bgColor(String paramString)
  {
    this.style_bgColor = paramString;
  }
  
  public void setStyle_bgPic(String paramString)
  {
    this.style_bgPic = paramString;
  }
  
  public void setStyle_bgType(String paramString)
  {
    this.style_bgType = paramString;
  }
  
  public String toString()
  {
    return "Dyn5007Vo [style_bgColor=" + this.style_bgColor + ", style_bgPic=" + this.style_bgPic + ", searchType=" + this.searchType + ", style_bgType=" + this.style_bgType + ", style_bgAlpha=" + this.style_bgAlpha + ", source=" + this.source + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/dyn/Dyn5007Vo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */