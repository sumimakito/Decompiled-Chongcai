package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.activity.ISelfView;

public class SelfSignLineTextView
  extends TextView
  implements ISelfView
{
  private Context context;
  private SelfDefineItemVo vo;
  
  public SelfSignLineTextView(Context paramContext, SelfDefineItemVo paramSelfDefineItemVo)
  {
    super(paramContext);
    this.vo = paramSelfDefineItemVo;
    this.context = paramContext;
    FunctionPublic.setBackground(this, paramSelfDefineItemVo.getStyle_bgType(), paramSelfDefineItemVo.getStyle_bgPic(), paramSelfDefineItemVo.getStyle_bgColor());
    init();
  }
  
  public void init()
  {
    FunctionPublic.setTextStyle(this, this.vo.getStyle_textSize(), this.vo.getStyle_textColor(), this.vo.getStyle_textBold());
    setBackgroundColor(0);
    setText(this.vo.getData_text());
    switch (FunctionPublic.str2int(this.vo.getStyle_textAlign()))
    {
    }
    for (;;)
    {
      setMaxLines(1);
      return;
      setGravity(3);
      continue;
      setGravity(17);
      continue;
      setGravity(5);
    }
  }
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onResume() {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfSignLineTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */