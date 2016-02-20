package cn.apppark.mcd.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;

class PullDownListViewOnScroll$1
  implements View.OnClickListener
{
  PullDownListViewOnScroll$1(PullDownListViewOnScroll paramPullDownListViewOnScroll) {}
  
  public void onClick(View paramView)
  {
    PullDownListViewOnScroll.a(this.a).onFootRefresh();
    PullDownListViewOnScroll.b(this.a).setVisibility(0);
    PullDownListViewOnScroll.c(this.a).setVisibility(4);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/PullDownListViewOnScroll$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */