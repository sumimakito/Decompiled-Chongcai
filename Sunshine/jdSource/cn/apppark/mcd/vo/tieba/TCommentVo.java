package cn.apppark.mcd.vo.tieba;

import cn.apppark.mcd.vo.buy.BuyBaseReturnVo;
import java.util.ArrayList;

public class TCommentVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String commentId;
  private String content;
  private String floorNum;
  private String headUrl;
  private String hostUserId;
  private ArrayList<ImgVo> imgUrlItem;
  private boolean isShowMore = false;
  private ArrayList<TReplayVo> sonItem;
  private String subTime;
  private int totalCount;
  private String userId;
  private String userName;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getCommentId()
  {
    return this.commentId;
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getFloorNum()
  {
    return this.floorNum;
  }
  
  public String getHeadUrl()
  {
    return this.headUrl;
  }
  
  public String getHostUserId()
  {
    return this.hostUserId;
  }
  
  public ArrayList<ImgVo> getImgUrlItem()
  {
    return this.imgUrlItem;
  }
  
  public ArrayList<TReplayVo> getSonItem()
  {
    return this.sonItem;
  }
  
  public String getSubTime()
  {
    return this.subTime;
  }
  
  public int getTotalCount()
  {
    return this.totalCount;
  }
  
  public String getUserId()
  {
    return this.userId;
  }
  
  public String getUserName()
  {
    return this.userName;
  }
  
  public boolean isShowMore()
  {
    return this.isShowMore;
  }
  
  public void setCommentId(String paramString)
  {
    this.commentId = paramString;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setFloorNum(String paramString)
  {
    this.floorNum = paramString;
  }
  
  public void setHeadUrl(String paramString)
  {
    this.headUrl = paramString;
  }
  
  public void setHostUserId(String paramString)
  {
    this.hostUserId = paramString;
  }
  
  public void setImgUrlItem(ArrayList<ImgVo> paramArrayList)
  {
    this.imgUrlItem = paramArrayList;
  }
  
  public void setShowMore(boolean paramBoolean)
  {
    this.isShowMore = paramBoolean;
  }
  
  public void setSonItem(ArrayList<TReplayVo> paramArrayList)
  {
    this.sonItem = paramArrayList;
  }
  
  public void setSubTime(String paramString)
  {
    this.subTime = paramString;
  }
  
  public void setTotalCount(int paramInt)
  {
    this.totalCount = paramInt;
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/tieba/TCommentVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */