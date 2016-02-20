package cn.apppark.mcd.widget;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.vertify.activity.tieba.TPicCellInfo;

class TCellLinearLayout$4
  implements View.OnClickListener
{
  TCellLinearLayout$4(TCellLinearLayout paramTCellLinearLayout) {}
  
  public void onClick(View paramView)
  {
    this.a.tempTPicCellInfo = ((TPicCellInfo)paramView.getTag());
    TCellLinearLayout.a(this.a, 0, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/TCellLinearLayout$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */