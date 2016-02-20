package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ScrollView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.Self360Item2Vo;
import cn.apppark.mcd.vo.free.Self360ItemVo;
import cn.apppark.vertify.activity.ISelfView;
import java.util.ArrayList;
import mf;

public class Self360View
  extends LinearLayout
  implements ISelfView
{
  private Context context;
  private int currentImage = 0;
  private ArrayList<Self360Item2Vo> itemList;
  private ScrollView parentScroll;
  private Self360ItemVo vo;
  
  public Self360View(Context paramContext, Self360ItemVo paramSelf360ItemVo, ArrayList<Self360Item2Vo> paramArrayList, ScrollView paramScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.vo = paramSelf360ItemVo;
    this.itemList = paramArrayList;
    this.parentScroll = paramScrollView;
    if (paramArrayList != null) {
      init();
    }
  }
  
  public void init()
  {
    FunctionPublic.setBackground(this, this.vo.getStyle_bgType(), this.vo.getStyle_bgPic(), this.vo.getStyle_bgColor(), this.vo.getStyle_bgAlpha());
    ImageView localImageView = new ImageView(this.context);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    setGravity(17);
    localImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
    addView(localImageView, localLayoutParams);
    localImageView.setBackgroundColor(0);
    FunctionPublic.setImageDrawable(((Self360Item2Vo)this.itemList.get(this.currentImage)).getData_pic(), localImageView);
    localImageView.setClickable(true);
    localImageView.setOnTouchListener(new mf(this, localImageView));
  }
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onResume() {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/Self360View.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */