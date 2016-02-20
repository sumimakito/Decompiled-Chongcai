package cn.apppark.mcd.vo.buy;

public class BuyProCommentDetailVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String bTime;
  private String buyTime;
  private String cTime;
  private String content;
  private String createTime;
  private String productId;
  private String replyContent;
  private int score;
  private String userId;
  private String userName;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getBuyTime()
  {
    return this.buyTime;
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getCreateTime()
  {
    return this.createTime;
  }
  
  public String getProductId()
  {
    return this.productId;
  }
  
  public String getReplyContent()
  {
    return this.replyContent;
  }
  
  public int getScore()
  {
    return this.score;
  }
  
  public String getUserId()
  {
    return this.userId;
  }
  
  public String getUserName()
  {
    return this.userName;
  }
  
  public String getbTime()
  {
    return this.bTime;
  }
  
  public String getcTime()
  {
    return this.cTime;
  }
  
  public void setBuyTime(String paramString)
  {
    this.buyTime = paramString;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setCreateTime(String paramString)
  {
    this.createTime = paramString;
  }
  
  public void setProductId(String paramString)
  {
    this.productId = paramString;
  }
  
  public void setReplyContent(String paramString)
  {
    this.replyContent = paramString;
  }
  
  public void setScore(int paramInt)
  {
    this.score = paramInt;
  }
  
  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
  
  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
  
  public void setbTime(String paramString)
  {
    this.bTime = paramString;
  }
  
  public void setcTime(String paramString)
  {
    this.cTime = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyProCommentDetailVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */