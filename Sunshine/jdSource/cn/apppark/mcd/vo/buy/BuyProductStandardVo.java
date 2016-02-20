package cn.apppark.mcd.vo.buy;

import cn.apppark.mcd.vo.base.BaseReturnVo;
import java.io.Serializable;
import java.util.ArrayList;

public class BuyProductStandardVo
  extends BaseReturnVo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String firstType;
  private ArrayList<BuyProductValueVo> firstValue;
  private String secondType;
  private ArrayList<BuyProductValueVo> secondValue;
  
  public String getFirstType()
  {
    return this.firstType;
  }
  
  public ArrayList<BuyProductValueVo> getFirstValue()
  {
    return this.firstValue;
  }
  
  public String getSecondType()
  {
    return this.secondType;
  }
  
  public ArrayList<BuyProductValueVo> getSecondValue()
  {
    return this.secondValue;
  }
  
  public void setFirstType(String paramString)
  {
    this.firstType = paramString;
  }
  
  public void setFirstValue(ArrayList<BuyProductValueVo> paramArrayList)
  {
    this.firstValue = paramArrayList;
  }
  
  public void setSecondType(String paramString)
  {
    this.secondType = paramString;
  }
  
  public void setSecondValue(ArrayList<BuyProductValueVo> paramArrayList)
  {
    this.secondValue = paramArrayList;
  }
  
  public String toString()
  {
    return "BuyProductStandardVo [firstType=" + this.firstType + ", secondType=" + this.secondType + ", firstValue=" + this.firstValue + ", secondValue=" + this.secondValue + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyProductStandardVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */