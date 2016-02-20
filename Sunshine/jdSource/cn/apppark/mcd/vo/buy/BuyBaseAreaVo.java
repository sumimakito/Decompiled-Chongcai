package cn.apppark.mcd.vo.buy;

public class BuyBaseAreaVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String area_id;
  private String city_id;
  private int id;
  private boolean isNext = true;
  private String name;
  private String provience_id;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getArea_id()
  {
    return this.area_id;
  }
  
  public String getCity_id()
  {
    return this.city_id;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getProvience_id()
  {
    return this.provience_id;
  }
  
  public boolean isNext()
  {
    return this.isNext;
  }
  
  public void setArea_id(String paramString)
  {
    this.area_id = paramString;
  }
  
  public void setCity_id(String paramString)
  {
    this.city_id = paramString;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNext(boolean paramBoolean)
  {
    this.isNext = paramBoolean;
  }
  
  public void setProvience_id(String paramString)
  {
    this.provience_id = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyBaseAreaVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */