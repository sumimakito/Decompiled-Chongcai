package cn.apppark.mcd.vo.buy;

public class BuyCarsVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  String id;
  String msg;
  String type;
  
  public String getId()
  {
    return this.id;
  }
  
  public String getMsg()
  {
    return this.msg;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setMsg(String paramString)
  {
    this.msg = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyCarsVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */