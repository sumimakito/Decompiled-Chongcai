package cn.apppark.mcd.vo.tieba;

import cn.apppark.mcd.vo.buy.BuyBaseReturnVo;

public class TMyHistoryVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private int commentNum;
  private String content;
  private String goodNum;
  private String subTime;
  private String tiebaId;
  private String tiebaName;
  private String title;
  private String topicId;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public int getCommentNum()
  {
    return this.commentNum;
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getGoodNum()
  {
    return this.goodNum;
  }
  
  public String getSubTime()
  {
    return this.subTime;
  }
  
  public String getTiebaId()
  {
    return this.tiebaId;
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
  
  public void setCommentNum(int paramInt)
  {
    this.commentNum = paramInt;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setGoodNum(String paramString)
  {
    this.goodNum = paramString;
  }
  
  public void setSubTime(String paramString)
  {
    this.subTime = paramString;
  }
  
  public void setTiebaId(String paramString)
  {
    this.tiebaId = paramString;
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
  
  public String toString()
  {
    return "TMyHistoryVo [tiebaId=" + this.tiebaId + ", tiebaName=" + this.tiebaName + ", commentNum=" + this.commentNum + ", goodNum=" + this.goodNum + ", topicId=" + this.topicId + ", title=" + this.title + ", content=" + this.content + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/tieba/TMyHistoryVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */