package cn.apppark.vertify.activity.tieba;

import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class TPicCellInfo
{
  private int cid;
  private ImageView img;
  private ImageView imgbg;
  private String picName;
  private String picSDpath;
  private int positon;
  private RelativeLayout rel_cell;
  private TextView tv;
  
  public int getCid()
  {
    return this.cid;
  }
  
  public ImageView getImg()
  {
    return this.img;
  }
  
  public ImageView getImgbg()
  {
    return this.imgbg;
  }
  
  public String getPicName()
  {
    return this.picName;
  }
  
  public String getPicSDpath()
  {
    return this.picSDpath;
  }
  
  public String getPicUrl()
  {
    return this.picSDpath;
  }
  
  public int getPositon()
  {
    return this.positon;
  }
  
  public RelativeLayout getRel()
  {
    return this.rel_cell;
  }
  
  public TextView getTv()
  {
    return this.tv;
  }
  
  public void setCid(int paramInt)
  {
    this.cid = paramInt;
  }
  
  public void setImg(ImageView paramImageView)
  {
    this.img = paramImageView;
  }
  
  public void setImgbg(ImageView paramImageView)
  {
    this.imgbg = paramImageView;
  }
  
  public void setPicName(String paramString)
  {
    this.picName = paramString;
  }
  
  public void setPicSDpath(String paramString)
  {
    this.picSDpath = paramString;
  }
  
  public void setPicUrl(String paramString)
  {
    this.picSDpath = paramString;
  }
  
  public void setPositon(int paramInt)
  {
    this.positon = paramInt;
  }
  
  public void setRel(RelativeLayout paramRelativeLayout)
  {
    this.rel_cell = paramRelativeLayout;
  }
  
  public void setTv(TextView paramTextView)
  {
    this.tv = paramTextView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TPicCellInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */