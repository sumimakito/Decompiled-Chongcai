package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ScrollView;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.mcd.widget.InnerScrollView;
import cn.apppark.mcd.widget.MyTextView1;
import cn.apppark.vertify.activity.ISelfView;

public class SelfMultLine1
  extends FrameLayout
  implements ISelfView
{
  private Context context;
  private InnerScrollView scroll;
  private MyTextView1 textView;
  private SelfDefineItemVo vo;
  
  public SelfMultLine1(Context paramContext, SelfDefineItemVo paramSelfDefineItemVo, ScrollView paramScrollView)
  {
    super(paramContext);
    this.vo = paramSelfDefineItemVo;
    this.context = paramContext;
    init();
  }
  
  public void init()
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    this.textView = new MyTextView1(this.context);
    this.textView.setBackgroundColor(-16776961);
    this.textView.setText(this.vo.getData_text());
    addView(this.textView, localLayoutParams);
  }
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onResume() {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfMultLine1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */