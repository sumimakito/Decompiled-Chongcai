package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.Button;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.activity.ISelfView;
import ml;

public class SelfButtonView
  extends Button
  implements ISelfView
{
  private FreePageVo pageVo;
  private SelfDefineItemVo vo;
  
  public SelfButtonView(Context paramContext, SelfDefineItemVo paramSelfDefineItemVo, FreePageVo paramFreePageVo)
  {
    super(paramContext);
    this.vo = paramSelfDefineItemVo;
    this.pageVo = paramFreePageVo;
    init();
  }
  
  private void setBtnBg()
  {
    FunctionPublic.setBackground(this, this.vo.getStyle_bgType(), this.vo.getStyle_bgPic(), this.vo.getStyle_bgColor());
    if (getBackground() != null) {
      getBackground().setAlpha(FunctionPublic.str2int(this.vo.getStyle_bgAlpha()) * 255 / 100);
    }
  }
  
  public void init()
  {
    setBtnBg();
    FunctionPublic.setBtnStyle(this, this.vo.getStyle_textSize(), this.vo.getStyle_textColor(), this.vo.getStyle_textBold());
    setText(this.vo.getData_text());
    setSingleLine(true);
    setPadding(0, 0, 0, 0);
    switch (FunctionPublic.str2int(this.vo.getStyle_textAlign()))
    {
    }
    for (;;)
    {
      setOnTouchListener(new ml(this));
      return;
      setGravity(3);
      setGravity(16);
      continue;
      setGravity(17);
      continue;
      setGravity(21);
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfButtonView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */