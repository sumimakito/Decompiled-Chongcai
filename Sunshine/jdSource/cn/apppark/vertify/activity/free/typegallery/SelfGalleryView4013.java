package cn.apppark.vertify.activity.free.typegallery;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.MyAlphaAnima;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.mcd.widget.CoverFlowGallery;
import cn.apppark.vertify.activity.ISelfView;
import cn.apppark.vertify.adapter.SelfGalleryView4013Adapter;
import java.util.ArrayList;
import ng;
import nh;
import ni;

public class SelfGalleryView4013
  extends LinearLayout
  implements ISelfView
{
  private static final int WHAT_AUTO_PLAY = 1;
  private static final int WHAT_CLICK_GALLERY = 2;
  private ArrayList<ImageView> arrIVList = new ArrayList();
  private Context context;
  private int currentPos = 0;
  private CoverFlowGallery gallery;
  private int gallerySelPos = 0;
  private SelfGalleryView4013.PublicHandler handler = new SelfGalleryView4013.PublicHandler(this);
  private boolean isStop = false;
  private ArrayList<SelfGalleryItem2Vo> itemArr;
  private LinearLayout nextLL;
  private FreePageVo pageVo;
  private LinearLayout pointLL;
  private LinearLayout preLL;
  private RelativeLayout rel;
  private RelativeLayout topBar;
  private TextView topTV;
  private SelfGalleryItemVo vo;
  
  public SelfGalleryView4013(Context paramContext, FreePageVo paramFreePageVo, SelfGalleryItemVo paramSelfGalleryItemVo, ArrayList<SelfGalleryItem2Vo> paramArrayList)
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
  
  private void changePoint(int paramInt)
  {
    int i = 0;
    if (i < this.arrIVList.size())
    {
      if (i == paramInt) {
        ((ImageView)this.arrIVList.get(i)).setBackgroundResource(2130837791);
      }
      for (;;)
      {
        this.pointLL.invalidate();
        i += 1;
        break;
        ((ImageView)this.arrIVList.get(i)).setBackgroundResource(2130837790);
      }
    }
  }
  
  private void initPoint(int paramInt)
  {
    int i = 0;
    this.pointLL.removeAllViews();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(PublicUtil.dip2px(4.0F), PublicUtil.dip2px(4.0F));
    localLayoutParams.setMargins(3, 0, 3, 0);
    if (i < this.itemArr.size())
    {
      ImageView localImageView = new ImageView(this.context);
      if (i == paramInt) {
        localImageView.setBackgroundResource(2130837791);
      }
      for (;;)
      {
        this.arrIVList.add(localImageView);
        this.pointLL.addView(localImageView, localLayoutParams);
        i += 1;
        break;
        localImageView.setBackgroundResource(2130837790);
      }
    }
  }
  
  public void init()
  {
    this.rel = ((RelativeLayout)((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903187, null));
    this.topBar = ((RelativeLayout)this.rel.findViewById(2131362718));
    this.topBar.getBackground().setAlpha(100);
    this.gallery = ((CoverFlowGallery)this.rel.findViewById(2131362717));
    this.topTV = ((TextView)this.rel.findViewById(2131362719));
    this.preLL = ((LinearLayout)this.rel.findViewById(2131362722));
    this.nextLL = ((LinearLayout)this.rel.findViewById(2131362724));
    this.preLL.setOnTouchListener(new MyAlphaAnima());
    this.nextLL.setOnTouchListener(new MyAlphaAnima());
    this.pointLL = ((LinearLayout)this.rel.findViewById(2131362720));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    addView(this.rel, localLayoutParams);
    if ("0".equals(this.vo.getStyle_showNum())) {
      this.topBar.setVisibility(8);
    }
    for (;;)
    {
      this.gallery.setSpacing((int)(this.vo.getSys_w() * YYGYContants.scaleUnite / 15.0F));
      this.gallery.setFadingEdgeLength(0);
      if (this.gallery != null)
      {
        this.gallery.setAdapter(new SelfGalleryView4013Adapter(this.context, this.vo, this.itemArr));
        initPoint(0);
        if ("1".equals(this.vo.getStyle_autoPlayFlag())) {
          new Thread(new ng(this)).start();
        }
      }
      this.gallery.setOnItemSelectedListener(new nh(this));
      this.gallery.setOnItemClickListener(new ni(this));
      this.preLL.setOnClickListener(new SelfGalleryView4013.4(this));
      this.nextLL.setOnClickListener(new SelfGalleryView4013.5(this));
      return;
      this.topBar.setVisibility(0);
    }
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */