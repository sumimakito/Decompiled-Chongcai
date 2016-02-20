package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfBlankItemVo;
import cn.apppark.vertify.activity.ISelfView;

public class SelfBlankView
  extends TextView
  implements ISelfView
{
  private SelfBlankItemVo vo;
  
  public SelfBlankView(Context paramContext, SelfBlankItemVo paramSelfBlankItemVo)
  {
    super(paramContext);
    this.vo = paramSelfBlankItemVo;
    init();
  }
  
  public void init()
  {
    FunctionPublic.setBackground(this, this.vo.getBgType(), this.vo.getBgPic(), this.vo.getBgColor());
  }
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onResume() {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfBlankView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */