package cn.apppark.mcd.vo.tieba;

import cn.apppark.mcd.vo.buy.BuyBaseReturnVo;

public class SonItemVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String commentId;
  private String content;
  private String replyId;
  private String subTime;
  
  public String getCommentId()
  {
    return this.commentId;
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getReplyId()
  {
    return this.replyId;
  }
  
  public String getSubTime()
  {
    return this.subTime;
  }
  
  public void setCommentId(String paramString)
  {
    this.commentId = paramString;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setReplyId(String paramString)
  {
    this.replyId = paramString;
  }
  
  public void setSubTime(String paramString)
  {
    this.subTime = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/tieba/SonItemVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */