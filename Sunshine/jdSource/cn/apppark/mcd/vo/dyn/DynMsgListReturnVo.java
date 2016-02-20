package cn.apppark.mcd.vo.dyn;

import cn.apppark.mcd.vo.base.BaseReturnVo;
import java.io.Serializable;
import java.util.ArrayList;

public class DynMsgListReturnVo
  extends BaseReturnVo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private int ItemWidth;
  private String browseCount;
  private String collectCount;
  private String commentCount;
  private String content;
  private String createTime;
  private String forwardCount;
  private String id;
  private String isFavorites;
  private String name;
  private String newsId;
  private String note;
  private int picHeight;
  private String picPath;
  private String picUrl;
  private int picWidth;
  private ArrayList<String> pics;
  private String shareCount;
  private String shareUrl;
  private String title;
  private String type;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getBrowseCount()
  {
    return this.browseCount;
  }
  
  public String getCollectCount()
  {
    return this.collectCount;
  }
  
  public String getCommentCount()
  {
    return this.commentCount;
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getCreateTime()
  {
    return this.createTime;
  }
  
  public String getForwardCount()
  {
    return this.forwardCount;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getIsFavorites()
  {
    return this.isFavorites;
  }
  
  public int getItemWidth()
  {
    return this.ItemWidth;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getNewsId()
  {
    return this.newsId;
  }
  
  public String getNote()
  {
    return this.note;
  }
  
  public int getPicHeight()
  {
    return this.picHeight;
  }
  
  public String getPicPath()
  {
    return this.picPath;
  }
  
  public String getPicUrl()
  {
    return this.picUrl;
  }
  
  public int getPicWidth()
  {
    return this.picWidth;
  }
  
  public ArrayList<String> getPics()
  {
    return this.pics;
  }
  
  public String getShareCount()
  {
    return this.shareCount;
  }
  
  public String getShareUrl()
  {
    return this.shareUrl;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public void setBrowseCount(String paramString)
  {
    this.browseCount = paramString;
  }
  
  public void setCollectCount(String paramString)
  {
    this.collectCount = paramString;
  }
  
  public void setCommentCount(String paramString)
  {
    this.commentCount = paramString;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setCreateTime(String paramString)
  {
    this.createTime = paramString;
  }
  
  public void setForwardCount(String paramString)
  {
    this.forwardCount = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setIsFavorites(String paramString)
  {
    this.isFavorites = paramString;
  }
  
  public void setItemWidth(int paramInt)
  {
    this.ItemWidth = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNewsId(String paramString)
  {
    this.newsId = paramString;
  }
  
  public void setNote(String paramString)
  {
    this.note = paramString;
  }
  
  public void setPicHeight(int paramInt)
  {
    this.picHeight = paramInt;
  }
  
  public void setPicPath(String paramString)
  {
    this.picPath = paramString;
  }
  
  public void setPicUrl(String paramString)
  {
    this.picUrl = paramString;
  }
  
  public void setPicWidth(int paramInt)
  {
    this.picWidth = paramInt;
  }
  
  public void setPics(ArrayList<String> paramArrayList)
  {
    this.pics = paramArrayList;
  }
  
  public void setShareCount(String paramString)
  {
    this.shareCount = paramString;
  }
  
  public void setShareUrl(String paramString)
  {
    this.shareUrl = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/dyn/DynMsgListReturnVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */