package cn.apppark.mcd.vo.tieba;

import cn.apppark.mcd.vo.buy.BuyBaseReturnVo;

public class TMyCollectionVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String commentNum;
  private String content;
  private String goodNum;
  private String tiebaId;
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
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getGoodNum()
  {
    return this.goodNum;
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
  
  public void setCommentNum(String paramString)
  {
    this.commentNum = paramString;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setGoodNum(String paramString)
  {
    this.goodNum = paramString;
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
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/tieba/TMyCollectionVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */