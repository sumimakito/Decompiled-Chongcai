package cn.apppark.vertify.activity.free.typegallery;

import android.content.Context;
import android.view.ViewGroup.LayoutParams;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.vertify.activity.ISelfView;
import java.util.ArrayList;
import mv;
import mw;
import mx;
import my;
import mz;

public class SelfGalleryView
  extends LinearLayout
  implements ISelfView
{
  private static final int CLICK_GALLERY_ITEM = 2;
  private ArrayList<ImageView> arrImageView;
  private Context context;
  private Gallery gallery;
  private int gallerySelPos = 0;
  private SelfGalleryView.PublicHandler handler = new SelfGalleryView.PublicHandler(this);
  private boolean isStop = false;
  private ArrayList<SelfGalleryItem2Vo> itemArr;
  private LinearLayout lin_point;
  private FreePageVo pageVo;
  private RelativeLayout rel;
  private SelfGalleryItemVo vo;
  
  public SelfGalleryView(Context paramContext, FreePageVo paramFreePageVo, SelfGalleryItemVo paramSelfGalleryItemVo, ArrayList<SelfGalleryItem2Vo> paramArrayList)
  {
    super(paramContext);
    this.pageVo = paramFreePageVo;
    this.vo = paramSelfGalleryItemVo;
    this.context = paramContext;
    this.itemArr = paramArrayList;
    if ((this.itemArr != null) && (this.itemArr.size() > 0)) {
      init();
    }
    FunctionPublic.setBackground(this, paramSelfGalleryItemVo.getStyle_bgType(), paramSelfGalleryItemVo.getStyle_bgPic(), paramSelfGalleryItemVo.getStyle_bgColor(), paramSelfGalleryItemVo.getStyle_bgAlpha());
  }
  
  private void initPoint(int paramInt)
  {
    this.lin_point.removeAllViews();
    this.arrImageView = new ArrayList();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(10, 10);
    localLayoutParams.setMargins(2, 5, 2, 5);
    int i = 0;
    while (i < this.itemArr.size())
    {
      ImageView localImageView = new ImageView(this.context);
      localImageView.setBackgroundResource(2130837790);
      if (i == paramInt) {
        localImageView.setBackgroundResource(2130837791);
      }
      this.arrImageView.add(localImageView);
      this.lin_point.addView(localImageView, localLayoutParams);
      i += 1;
    }
  }
  
  public void changePoint(int paramInt)
  {
    int i = 0;
    if (i < this.arrImageView.size())
    {
      if (i == paramInt)
      {
        ((ImageView)this.arrImageView.get(i)).setBackgroundResource(2130837791);
        this.lin_point.invalidate();
      }
      for (;;)
      {
        i += 1;
        break;
        ((ImageView)this.arrImageView.get(i)).setBackgroundResource(2130837790);
        this.lin_point.invalidate();
      }
    }
  }
  
  public void init()
  {
    this.rel = new RelativeLayout(this.context);
    this.lin_point = new LinearLayout(this.context);
    this.lin_point.setGravity(17);
    this.gallery = new mz(this, this.context);
    if (this.gallery != null)
    {
      this.gallery.setAdapter(new my(this, this.context));
      initPoint(0);
      if ("1".equals(this.vo.getStyle_autoPlayFlag())) {
        new Thread(new mv(this)).start();
      }
    }
    this.gallery.setSpacing(1);
    this.gallery.setFadingEdgeLength(0);
    this.gallery.setSelection(this.itemArr.size() * 100);
    Object localObject = new RelativeLayout.LayoutParams(-1, 20);
    ((RelativeLayout.LayoutParams)localObject).addRule(12);
    ((RelativeLayout.LayoutParams)localObject).addRule(14);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    this.rel.addView(this.gallery, localLayoutParams);
    this.rel.addView(this.lin_point, (ViewGroup.LayoutParams)localObject);
    localObject = new LinearLayout.LayoutParams(-1, -1);
    addView(this.rel, (ViewGroup.LayoutParams)localObject);
    this.gallery.setOnItemSelectedListener(new mw(this));
    this.gallery.setOnItemClickListener(new mx(this));
  }
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void onDestroy()
  {
    this.isStop = true;
    this.handler = null;
  }
  
  public void onPause() {}
  
  public void onResume() {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typegallery/SelfGalleryView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */