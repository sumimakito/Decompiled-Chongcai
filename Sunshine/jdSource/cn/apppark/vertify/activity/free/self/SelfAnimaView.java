package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageSwitcher;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ViewSwitcher.ViewFactory;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfAnimaItem2Vo;
import cn.apppark.mcd.vo.free.SelfAnimaItemVo;
import cn.apppark.vertify.PageGroup;
import cn.apppark.vertify.activity.ISelfView;
import java.util.ArrayList;
import mj;
import mk;

public class SelfAnimaView
  extends LinearLayout
  implements ViewSwitcher.ViewFactory, ISelfView
{
  private static final int GUI_ANIMATION_CONTINUE = 1;
  private static final int GUI_ANIMATION_END = 2;
  private Context context;
  private int currentSeq;
  private int currentTimes;
  private ArrayList<Drawable> drawableList;
  private Handler handler = new mk(this);
  private boolean isStop = false;
  private ArrayList<SelfAnimaItem2Vo> itemList;
  private ImageSwitcher mSwitcher;
  private FreePageVo pageVo;
  private SelfAnimaItemVo vo;
  
  public SelfAnimaView(Context paramContext, FreePageVo paramFreePageVo, SelfAnimaItemVo paramSelfAnimaItemVo, ArrayList<SelfAnimaItem2Vo> paramArrayList)
  {
    super(paramContext);
    this.pageVo = paramFreePageVo;
    this.vo = paramSelfAnimaItemVo;
    this.context = paramContext;
    this.itemList = paramArrayList;
    if (paramArrayList != null) {
      init();
    }
  }
  
  private void autoPlay()
  {
    if ("1".equals(this.vo.getStyle_autoPlayFlag()))
    {
      startPaly();
      return;
    }
    this.mSwitcher.setImageDrawable((Drawable)this.drawableList.get(0));
    this.mSwitcher.setOnClickListener(new SelfAnimaView.1(this));
  }
  
  private void startPaly()
  {
    this.currentSeq = 0;
    this.currentTimes = 0;
    this.isStop = false;
    new Thread(new mj(this)).start();
  }
  
  public void animationContinue()
  {
    if (this.currentSeq < this.drawableList.size())
    {
      localObject = this.mSwitcher;
      ArrayList localArrayList = this.drawableList;
      int i = this.currentSeq;
      this.currentSeq = (i + 1);
      ((ImageSwitcher)localObject).setImageDrawable((Drawable)localArrayList.get(i));
    }
    do
    {
      return;
      this.currentSeq = 0;
      this.currentTimes += 1;
      if ((FunctionPublic.str2int(this.vo.getStyle_playTimes()) > 0) && (this.currentTimes >= FunctionPublic.str2int(this.vo.getStyle_playTimes())))
      {
        localObject = new Message();
        ((Message)localObject).what = 2;
        this.handler.sendMessage((Message)localObject);
        return;
      }
    } while (FunctionPublic.str2int(this.vo.getStyle_playTimes()) != 0);
    Object localObject = new Message();
    ((Message)localObject).what = 1;
    this.handler.sendMessage((Message)localObject);
  }
  
  public void animationEnd()
  {
    if (this.vo.getnFlag().equals("1")) {
      HQCHApplication.mainActivity.pageGroup.goNextPage(this.pageVo.getSys_pageID(), this.vo.getnPageId(), true, this.vo.getnPageType(), this.vo.getnPageModuleType());
    }
    this.isStop = true;
  }
  
  public void init()
  {
    FunctionPublic.setBackground(this, this.vo.getStyle_bgType(), this.vo.getStyle_bgPic(), this.vo.getStyle_bgColor(), this.vo.getStyle_bgAlpha());
    this.mSwitcher = new ImageSwitcher(this.context);
    this.mSwitcher.setFactory(this);
    this.drawableList = new ArrayList();
    int i = 0;
    while (i < this.itemList.size())
    {
      localObject = ((SelfAnimaItem2Vo)this.itemList.get(i)).getData_pic();
      if (localObject != null)
      {
        localObject = HQCHApplication.cacheUtil.getCachedDrawable((String)localObject);
        this.drawableList.add(localObject);
      }
      i += 1;
    }
    Object localObject = new LinearLayout.LayoutParams(-1, -1);
    addView(this.mSwitcher, (ViewGroup.LayoutParams)localObject);
  }
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public View makeView()
  {
    ImageView localImageView = new ImageView(this.context);
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    localImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    return localImageView;
  }
  
  public void onDestroy()
  {
    this.isStop = true;
  }
  
  public void onPause()
  {
    this.isStop = true;
  }
  
  public void onResume()
  {
    autoPlay();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfAnimaView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */