package cn.apppark.mcd.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;

class PullDownListView2$1
  implements View.OnClickListener
{
  PullDownListView2$1(PullDownListView2 paramPullDownListView2) {}
  
  public void onClick(View paramView)
  {
    PullDownListView2.a(this.a).onFootRefresh();
    PullDownListView2.b(this.a).setVisibility(0);
    PullDownListView2.c(this.a).setVisibility(4);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/PullDownListView2$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */