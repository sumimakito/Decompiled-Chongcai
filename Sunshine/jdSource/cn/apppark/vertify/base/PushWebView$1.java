package cn.apppark.vertify.base;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

class PushWebView$1
  implements View.OnClickListener
{
  PushWebView$1(PushWebView paramPushWebView) {}
  
  public void onClick(View paramView)
  {
    PushWebView.a(this.a).setVisibility(0);
    PushWebView.b(this.a).setVisibility(0);
    PushWebView.c(this.a).setVisibility(8);
    PushWebView.a(this.a, 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/base/PushWebView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */