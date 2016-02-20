package cn.apppark.mcd.vo.tieba;

import cn.apppark.mcd.vo.buy.BuyBaseReturnVo;

public class TReplayVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String content;
  private String replyId;
  private String replyName;
  private String subTime;
  private String userId;
  private String userName;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getReplyId()
  {
    return this.replyId;
  }
  
  public String getReplyName()
  {
    return this.replyName;
  }
  
  public String getSubTime()
  {
    return this.subTime;
  }
  
  public String getUserId()
  {
    return this.userId;
  }
  
  public String getUserName()
  {
    return this.userName;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setReplyId(String paramString)
  {
    this.replyId = paramString;
  }
  
  public void setReplyName(String paramString)
  {
    this.replyName = paramString;
  }
  
  public void setSubTime(String paramString)
  {
    this.subTime = paramString;
  }
  
  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
  
  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/tieba/TReplayVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */