package cn.apppark.mcd.vo.tieba;

import cn.apppark.mcd.vo.buy.BuyBaseReturnVo;

public class TMyTopicVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String TBId;
  private String commentNum;
  private String subtime;
  private String tiebaName;
  private String title;
  private String topicId;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getCommentNum()
  {
    return this.commentNum;
  }
  
  public String getSubtime()
  {
    return this.subtime;
  }
  
  public String getTBId()
  {
    return this.TBId;
  }
  
  public String getTiebaName()
  {
    return this.tiebaName;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getTopicId()
  {
    return this.topicId;
  }
  
  public void setCommentNum(String paramString)
  {
    this.commentNum = paramString;
  }
  
  public void setSubtime(String paramString)
  {
    this.subtime = paramString;
  }
  
  public void setTBId(String paramString)
  {
    this.TBId = paramString;
  }
  
  public void setTiebaName(String paramString)
  {
    this.tiebaName = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setTopicId(String paramString)
  {
    this.topicId = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/tieba/TMyTopicVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */