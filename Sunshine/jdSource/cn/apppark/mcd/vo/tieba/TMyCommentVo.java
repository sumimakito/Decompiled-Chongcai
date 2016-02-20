package cn.apppark.mcd.vo.tieba;

import cn.apppark.mcd.vo.buy.BuyBaseReturnVo;
import java.util.ArrayList;

public class TMyCommentVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String commentId;
  private String commentNum;
  private ArrayList<SonItemVo> sonItem;
  private String subTime;
  private String tiebaId;
  private String tiebaName;
  private String title;
  private String topicId;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getCommentId()
  {
    return this.commentId;
  }
  
  public String getCommentNum()
  {
    return this.commentNum;
  }
  
  public ArrayList<SonItemVo> getSonItem()
  {
    return this.sonItem;
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
  
  public void setCommentId(String paramString)
  {
    this.commentId = paramString;
  }
  
  public void setCommentNum(String paramString)
  {
    this.commentNum = paramString;
  }
  
  public void setSonItem(ArrayList<SonItemVo> paramArrayList)
  {
    this.sonItem = paramArrayList;
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
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/tieba/TMyCommentVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */