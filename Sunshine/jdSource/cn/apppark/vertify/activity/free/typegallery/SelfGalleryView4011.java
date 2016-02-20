package cn.apppark.vertify.activity.free.typegallery;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.MyAlphaAnima;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.mcd.widget.TempGallery;
import cn.apppark.vertify.activity.ISelfView;
import cn.apppark.vertify.adapter.SelfGalleryViewAdapter;
import java.util.ArrayList;
import na;
import nb;
import nc;

public class SelfGalleryView4011
  extends LinearLayout
  implements ISelfView
{
  private static final int WHAT_AUTO_PLAY = 1;
  private static final int WHAT_CLICK_GALLERY = 2;
  private ArrayList<ImageView> arrIVList = new ArrayList();
  private Context context;
  private int currentPos = 0;
  private Gallery gallery;
  private int gallerySelPos = 0;
  private SelfGalleryView4011.PublicHandler handler = new SelfGalleryView4011.PublicHandler(this);
  private boolean isStop = false;
  private ArrayList<SelfGalleryItem2Vo> itemArr;
  private LinearLayout nextLL;
  private LinearLayout pointLL;
  private LinearLayout preLL;
  private RelativeLayout rel;
  private RelativeLayout topBar;
  private TextView topTV;
  private SelfGalleryItemVo vo;
  
  public SelfGalleryView4011(Context paramContext, FreePageVo paramFreePageVo, SelfGalleryItemVo paramSelfGalleryItemVo, ArrayList<SelfGalleryItem2Vo> paramArrayList)
  {
    super(paramContext);
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
    this.pointLL.removeAllViews();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(PublicUtil.dip2px(4.0F), PublicUtil.dip2px(4.0F));
    localLayoutParams.setMargins(3, 5, 3, 5);
    int i = 0;
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
    this.rel = ((RelativeLayout)((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903184, null));
    this.topBar = ((RelativeLayout)this.rel.findViewById(2131362718));
    this.topBar.getBackground().setAlpha(100);
    this.gallery = ((TempGallery)this.rel.findViewById(2131362717));
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
      this.gallery.setSpacing(1);
      this.gallery.setFadingEdgeLength(0);
      if (this.gallery != null)
      {
        this.gallery.setAdapter(new SelfGalleryViewAdapter(this.context, this.itemArr));
        initPoint(0);
        if ("1".equals(this.vo.getStyle_autoPlayFlag())) {
          new Thread(new na(this)).start();
        }
      }
      this.gallery.setOnItemSelectedListener(new nb(this));
      this.gallery.setOnItemClickListener(new nc(this));
      this.preLL.setOnClickListener(new SelfGalleryView4011.4(this));
      this.nextLL.setOnClickListener(new SelfGalleryView4011.5(this));
      this.gallery.setSelection(0);
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */