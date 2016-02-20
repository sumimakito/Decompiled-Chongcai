package cn.apppark.mcd.vo.base;

import java.io.Serializable;

public class BasePageItemVo
  extends BaseVo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private int style_groupInfoShow;
  private int sys_h;
  private String sys_itemID;
  private int sys_moduleType;
  private int sys_w;
  private int sys_x;
  private int sys_y;
  private int sys_z;
  
  public int getStyle_groupInfoShow()
  {
    return this.style_groupInfoShow;
  }
  
  public int getSys_h()
  {
    return this.sys_h;
  }
  
  public String getSys_itemID()
  {
    return this.sys_itemID;
  }
  
  public int getSys_moduleType()
  {
    return this.sys_moduleType;
  }
  
  public int getSys_w()
  {
    return this.sys_w;
  }
  
  public int getSys_x()
  {
    return this.sys_x;
  }
  
  public int getSys_y()
  {
    return this.sys_y;
  }
  
  public int getSys_z()
  {
    return this.sys_z;
  }
  
  public void setStyle_groupInfoShow(int paramInt)
  {
    this.style_groupInfoShow = paramInt;
  }
  
  public void setSys_h(int paramInt)
  {
    this.sys_h = paramInt;
  }
  
  public void setSys_itemID(String paramString)
  {
    this.sys_itemID = paramString;
  }
  
  public void setSys_moduleType(int paramInt)
  {
    this.sys_moduleType = paramInt;
  }
  
  public void setSys_w(int paramInt)
  {
    this.sys_w = paramInt;
  }
  
  public void setSys_x(int paramInt)
  {
    this.sys_x = paramInt;
  }
  
  public void setSys_y(int paramInt)
  {
    this.sys_y = paramInt;
  }
  
  public void setSys_z(int paramInt)
  {
    this.sys_z = paramInt;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/base/BasePageItemVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */