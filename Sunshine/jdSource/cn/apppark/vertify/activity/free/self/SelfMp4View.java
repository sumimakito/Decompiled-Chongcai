package cn.apppark.vertify.activity.free.self;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.Button;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.activity.ISelfView;

public class SelfMp4View
  extends Button
  implements ISelfView
{
  private Context context;
  private SelfDefineItemVo vo;
  
  public SelfMp4View(Context paramContext, SelfDefineItemVo paramSelfDefineItemVo)
  {
    super(paramContext);
    this.vo = paramSelfDefineItemVo;
    this.context = paramContext;
    init();
  }
  
  @SuppressLint({"DefaultLocale"})
  public void init()
  {
    FunctionPublic.setBackground(this, "2", this.vo.getStyle_bgPic(), this.vo.getStyle_bgColor());
    ButtonColorFilter.setButtonFocusChanged(this);
    setOnClickListener(new SelfMp4View.1(this));
  }
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void onDestroy()
  {
    this.context = null;
  }
  
  public void onPause() {}
  
  public void onResume() {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfMp4View.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */