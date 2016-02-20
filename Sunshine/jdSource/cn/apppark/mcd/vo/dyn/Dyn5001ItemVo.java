package cn.apppark.mcd.vo.dyn;

import cn.apppark.mcd.vo.base.BasePageItem2Vo;
import com.google.gson.JsonElement;

public class Dyn5001ItemVo
  extends BasePageItem2Vo
{
  private static final long serialVersionUID = 1L;
  private String data_label;
  private JsonElement data_options;
  private String id;
  private String style_height;
  private String style_inputType;
  private String style_must;
  private String style_type;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getData_label()
  {
    return this.data_label;
  }
  
  public JsonElement getData_options()
  {
    return this.data_options;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getStyle_height()
  {
    return this.style_height;
  }
  
  public String getStyle_inputType()
  {
    return this.style_inputType;
  }
  
  public String getStyle_must()
  {
    return this.style_must;
  }
  
  public String getStyle_type()
  {
    return this.style_type;
  }
  
  public void setData_label(String paramString)
  {
    this.data_label = paramString;
  }
  
  public void setData_options(JsonElement paramJsonElement)
  {
    this.data_options = paramJsonElement;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setStyle_height(String paramString)
  {
    this.style_height = paramString;
  }
  
  public void setStyle_inputType(String paramString)
  {
    this.style_inputType = paramString;
  }
  
  public void setStyle_must(String paramString)
  {
    this.style_must = paramString;
  }
  
  public void setStyle_type(String paramString)
  {
    this.style_type = paramString;
  }
  
  public String toString()
  {
    return "Dyn5001ItemVo [data_label=" + this.data_label + ", style_type=" + this.style_type + ", style_inputType=" + this.style_inputType + ", style_height=" + this.style_height + ", style_must=" + this.style_must + ", data_options=" + this.data_options + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/dyn/Dyn5001ItemVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */