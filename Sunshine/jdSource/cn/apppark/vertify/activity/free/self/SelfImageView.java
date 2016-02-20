package cn.apppark.vertify.activity.free.self;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.PageGroup;
import cn.apppark.vertify.activity.ISelfView;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.base.ImagePreview;
import mm;
import mn;
import mo;
import mp;

@SuppressLint({"ViewConstructor"})
public class SelfImageView
  extends RelativeLayout
  implements ISelfView
{
  RelativeLayout.LayoutParams a;
  private Context mContext;
  private RemoteImageView mImageView;
  private FreePageVo mPageVo;
  private SelfDefineItemVo mSelfVo;
  
  public SelfImageView(Context paramContext, SelfDefineItemVo paramSelfDefineItemVo, FreePageVo paramFreePageVo)
  {
    super(paramContext);
    this.mSelfVo = paramSelfDefineItemVo;
    this.mPageVo = paramFreePageVo;
    this.mContext = paramContext;
    this.mPageVo = paramFreePageVo;
    init();
  }
  
  private void addWater()
  {
    if ((HQCHApplication.mainActivity.clientBaseVo.getnPageId().equals(this.mPageVo.getSys_pageID())) && (!"0".equals(YYGYContants.mHelper.getShowWaterMarker())))
    {
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, FunctionPublic.getConvertValue(80));
      localLayoutParams.addRule(12);
      ImageView localImageView = new ImageView(this.mContext);
      FunctionPublic.setBackground("copyright.png", localImageView);
      addView(localImageView, localLayoutParams);
    }
  }
  
  private void goBack()
  {
    this.mImageView.setOnTouchListener(new mo(this));
  }
  
  private void goBigPic()
  {
    this.mImageView.setOnTouchListener(new mn(this));
  }
  
  private void goNext()
  {
    if (StringUtil.isNotNull(this.mSelfVo.getnPageId())) {
      this.mImageView.setOnTouchListener(new mm(this));
    }
    if (HQCHApplication.mainActivity.clientBaseVo.getnPageId().equals(this.mPageVo.getSys_pageID()))
    {
      new mp(this, null).sendEmptyMessageDelayed(0, 2000L);
      return;
    }
    this.mImageView.setOnClickListener(new SelfImageView.2(this));
  }
  
  private void returnBack()
  {
    HQCHApplication.mainActivity.pageGroup.pageBack();
  }
  
  private void showBigPic()
  {
    Intent localIntent = new Intent(HQCHApplication.mainActivity, ImagePreview.class);
    localIntent.putExtra("picname", this.mSelfVo.getStyle_bigPic());
    HQCHApplication.mainActivity.startActivity(localIntent);
  }
  
  public void init()
  {
    int i = (int)(this.mSelfVo.getSys_w() * YYGYContants.scaleUnite);
    this.mImageView = new RemoteImageView(this.mContext);
    ImageView.ScaleType localScaleType = ImageView.ScaleType.FIT_XY;
    int[] arrayOfInt;
    if (HQCHApplication.mainActivity.clientBaseVo.getnPageId().equals(this.mPageVo.getSys_pageID()))
    {
      arrayOfInt = FunctionPublic.getBmpWidhtHeight(this.mSelfVo.getData_pic());
      if ((arrayOfInt[0] < YYGYContants.screenWidth) && (arrayOfInt[1] < YYGYContants.screenHeight))
      {
        this.a = new RelativeLayout.LayoutParams(arrayOfInt[0], arrayOfInt[1]);
        this.a.addRule(13);
        label110:
        if ((this.mSelfVo.getData_pic() == null) || (!this.mSelfVo.getData_pic().startsWith("http://"))) {
          break label379;
        }
        this.mImageView.setImageUrl(this.mSelfVo.getData_pic());
        label149:
        switch (FunctionPublic.str2int(this.mSelfVo.getStyle_eventType()))
        {
        }
      }
    }
    for (;;)
    {
      addView(this.mImageView, this.a);
      addWater();
      return;
      if ((arrayOfInt[0] > YYGYContants.screenWidth) && (arrayOfInt[1] < YYGYContants.screenHeight))
      {
        i = (int)(arrayOfInt[1] / arrayOfInt[0] * YYGYContants.screenWidth);
        this.a = new RelativeLayout.LayoutParams(YYGYContants.screenWidth, i);
        break;
      }
      if ((arrayOfInt[0] < YYGYContants.screenWidth) && (arrayOfInt[1] > YYGYContants.screenHeight))
      {
        this.a = new RelativeLayout.LayoutParams((int)(arrayOfInt[1] / arrayOfInt[0] * YYGYContants.screenWidth), -1);
        break;
      }
      if ((arrayOfInt[0] > YYGYContants.screenWidth) && (arrayOfInt[1] > YYGYContants.screenHeight))
      {
        localScaleType = ImageView.ScaleType.FIT_CENTER;
        this.a = new RelativeLayout.LayoutParams(arrayOfInt[0], arrayOfInt[1]);
        break;
      }
      this.a = new RelativeLayout.LayoutParams(-1, -1);
      break;
      this.a = new RelativeLayout.LayoutParams(i, -1);
      break label110;
      label379:
      FunctionPublic.setImgBg(this.mSelfVo.getData_pic(), this.mImageView, this.mSelfVo.getSys_x(), this.mSelfVo.getSys_y(), localScaleType);
      break label149;
      goBack();
      continue;
      goBigPic();
      continue;
      goNext();
    }
  }
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onResume() {}
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (HQCHApplication.mainActivity.clientBaseVo.getnPageId().equals(this.mPageVo.getSys_pageID()))
    {
      int i = HQCHApplication.mainActivity.linearLayoutMain.getHeight();
      YYGYContants.MainContentHeight = i;
      setLayoutParams(new RelativeLayout.LayoutParams(YYGYContants.screenWidth, i));
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */