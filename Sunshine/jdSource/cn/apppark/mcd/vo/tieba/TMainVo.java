package cn.apppark.mcd.vo.tieba;

import cn.apppark.mcd.vo.buy.BuyBaseReturnVo;
import java.util.ArrayList;

public class TMainVo
  extends BuyBaseReturnVo
{
  private int commentNum;
  private String content;
  private int goodNum;
  private String headUrl;
  private String imgNum;
  private ArrayList<ImgVo> imgUrlItem;
  private String isCollect;
  private String isGood;
  private ArrayList<ImgVo> miniImgUrl;
  private String subTime;
  private String title;
  private String topicId;
  private String userId;
  private String userName;
  
  public int getCommentNum()
  {
    return this.commentNum;
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public int getGoodNum()
  {
    return this.goodNum;
  }
  
  public String getHeadUrl()
  {
    return this.headUrl;
  }
  
  public String getImgNum()
  {
    return this.imgNum;
  }
  
  public ArrayList<ImgVo> getImgUrlItem()
  {
    return this.imgUrlItem;
  }
  
  public String getIsCollect()
  {
    return this.isCollect;
  }
  
  public String getIsGood()
  {
    return this.isGood;
  }
  
  public ArrayList<ImgVo> getMiniImgUrl()
  {
    return this.miniImgUrl;
  }
  
  public String getSubTime()
  {
    return this.subTime;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getTopicId()
  {
    return this.topicId;
  }
  
  public String getUserName()
  {
    return this.userName;
  }
  
  public String getUserid()
  {
    return this.userId;
  }
  
  public void setCommentNum(int paramInt)
  {
    this.commentNum = paramInt;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setGoodNum(int paramInt)
  {
    this.goodNum = paramInt;
  }
  
  public void setHeadUrl(String paramString)
  {
    this.headUrl = paramString;
  }
  
  public void setImgNum(String paramString)
  {
    this.imgNum = paramString;
  }
  
  public void setImgUrlItem(ArrayList<ImgVo> paramArrayList)
  {
    this.imgUrlItem = paramArrayList;
  }
  
  public void setIsCollect(String paramString)
  {
    this.isCollect = paramString;
  }
  
  public void setIsGood(String paramString)
  {
    this.isGood = paramString;
  }
  
  public void setMiniImgUrl(ArrayList<ImgVo> paramArrayList)
  {
    this.miniImgUrl = paramArrayList;
  }
  
  public void setSubTime(String paramString)
  {
    this.subTime = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setTopicId(String paramString)
  {
    this.topicId = paramString;
  }
  
  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
  
  public void setUserid(String paramString)
  {
    this.userId = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/tieba/TMainVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */