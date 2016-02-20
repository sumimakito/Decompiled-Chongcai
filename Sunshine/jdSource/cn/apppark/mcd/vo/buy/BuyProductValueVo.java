package cn.apppark.mcd.vo.buy;

import cn.apppark.mcd.vo.base.BaseReturnVo;
import java.io.Serializable;

public class BuyProductValueVo
  extends BaseReturnVo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private int valueId;
  private String valueName;
  
  public int getValueId()
  {
    return this.valueId;
  }
  
  public String getValueName()
  {
    return this.valueName;
  }
  
  public void setValueId(int paramInt)
  {
    this.valueId = paramInt;
  }
  
  public void setValueName(String paramString)
  {
    this.valueName = paramString;
  }
  
  public String toString()
  {
    return "BuyProductValueVo [valueId=" + this.valueId + ", valueName=" + this.valueName + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyProductValueVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */