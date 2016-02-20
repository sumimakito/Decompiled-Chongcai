package cn.apppark.mcd.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;

class PullDownListView$1
  implements View.OnClickListener
{
  PullDownListView$1(PullDownListView paramPullDownListView) {}
  
  public void onClick(View paramView)
  {
    PullDownListView.a(this.a).onFootRefresh();
    PullDownListView.b(this.a).setVisibility(0);
    PullDownListView.c(this.a).setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/PullDownListView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */