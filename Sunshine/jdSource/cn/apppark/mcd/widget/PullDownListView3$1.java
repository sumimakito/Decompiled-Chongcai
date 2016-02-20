package cn.apppark.mcd.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;

class PullDownListView3$1
  implements View.OnClickListener
{
  PullDownListView3$1(PullDownListView3 paramPullDownListView3) {}
  
  public void onClick(View paramView)
  {
    if (PullDownListView3.a(this.a) != null)
    {
      PullDownListView3.a(this.a).onFootRefresh();
      PullDownListView3.b(this.a).setVisibility(0);
      PullDownListView3.c(this.a).setVisibility(4);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/PullDownListView3$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */