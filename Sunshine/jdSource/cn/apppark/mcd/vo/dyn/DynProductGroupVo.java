package cn.apppark.mcd.vo.dyn;

import cn.apppark.mcd.vo.base.BaseReturnVo;

public class DynProductGroupVo
  extends BaseReturnVo
{
  private String id;
  private String name;
  
  public String getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/dyn/DynProductGroupVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */