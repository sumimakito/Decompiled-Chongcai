package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.widget.Button;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.activity.ISelfView;

public class SelfVideoView
  extends Button
  implements ISelfView
{
  private Context context;
  private SelfDefineItemVo vo;
  
  public SelfVideoView(Context paramContext, SelfDefineItemVo paramSelfDefineItemVo)
  {
    super(paramContext);
    this.vo = paramSelfDefineItemVo;
    this.context = paramContext;
    init();
  }
  
  public void init()
  {
    FunctionPublic.setBackground(this, "2", this.vo.getStyle_bgPic(), this.vo.getStyle_bgColor());
    ButtonColorFilter.setButtonFocusChanged(this);
    setOnClickListener(new SelfVideoView.1(this));
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfVideoView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */