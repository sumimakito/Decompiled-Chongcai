package cn.apppark.vertify.activity.free.typegallery;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.widget.Gallery;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.mcd.widget.TempGallery;
import cn.apppark.vertify.activity.ISelfView;
import cn.apppark.vertify.adapter.SelfGalleryViewAdapter;
import java.util.ArrayList;
import nd;
import ne;
import nf;

public class SelfGalleryView4012
  extends LinearLayout
  implements ISelfView
{
  private static final int WHAT_AUTO_PLAY = 1;
  private static final int WHAT_CLICK_GALLERY = 2;
  private Context context;
  private int currentPos = 0;
  private Gallery gallery;
  private SelfGalleryView4012.PublicHandler handler = new SelfGalleryView4012.PublicHandler(this);
  private boolean isStop = false;
  private ArrayList<SelfGalleryItem2Vo> itemArr;
  private FreePageVo pageVo;
  private RelativeLayout rel;
  private TextView topTV;
  private SelfGalleryItemVo vo;
  
  public SelfGalleryView4012(Context paramContext, FreePageVo paramFreePageVo, SelfGalleryItemVo paramSelfGalleryItemVo, ArrayList<SelfGalleryItem2Vo> paramArrayList)
  {
    super(paramContext);
    this.vo = paramSelfGalleryItemVo;
    this.context = paramContext;
    this.itemArr = paramArrayList;
    this.pageVo = paramFreePageVo;
    if ((this.itemArr != null) && (this.itemArr.size() > 0)) {
      init();
    }
    FunctionPublic.setBackground(this, paramSelfGalleryItemVo.getStyle_bgType(), paramSelfGalleryItemVo.getStyle_bgPic(), paramSelfGalleryItemVo.getStyle_bgColor(), paramSelfGalleryItemVo.getStyle_bgAlpha());
  }
  
  public void init()
  {
    this.rel = ((RelativeLayout)((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903185, null));
    this.gallery = ((TempGallery)this.rel.findViewById(2131362717));
    this.topTV = ((TextView)this.rel.findViewById(2131362719));
    this.topTV.getBackground().setAlpha(100);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    addView(this.rel, localLayoutParams);
    this.gallery.setSpacing(1);
    this.gallery.setFadingEdgeLength(0);
    if (this.gallery != null)
    {
      this.gallery.setAdapter(new SelfGalleryViewAdapter(this.context, this.itemArr));
      if ("1".equals(this.vo.getStyle_autoPlayFlag())) {
        new Thread(new nd(this)).start();
      }
    }
    this.gallery.setOnItemSelectedListener(new ne(this));
    this.gallery.setOnItemClickListener(new nf(this));
    this.gallery.setSelection(0);
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */