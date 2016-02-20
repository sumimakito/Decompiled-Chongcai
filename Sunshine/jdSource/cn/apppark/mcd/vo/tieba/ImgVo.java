package cn.apppark.mcd.vo.tieba;

import cn.apppark.mcd.vo.buy.BuyBaseReturnVo;

public class ImgVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private int height;
  private String imgUrl;
  private int width;
  
  public int getHeight()
  {
    return this.height;
  }
  
  public String getImgUrl()
  {
    return this.imgUrl;
  }
  
  public int getWidth()
  {
    return this.width;
  }
  
  public void setHeight(int paramInt)
  {
    this.height = paramInt;
  }
  
  public void setImgUrl(String paramString)
  {
    this.imgUrl = paramString;
  }
  
  public void setWidth(int paramInt)
  {
    this.width = paramInt;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/tieba/ImgVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */