package cn.apppark.mcd.widget;

import android.view.View;
import android.view.View.OnClickListener;

class LoadDataProgress$1
  implements View.OnClickListener
{
  LoadDataProgress$1(LoadDataProgress paramLoadDataProgress) {}
  
  public void onClick(View paramView)
  {
    if (LoadDataProgress.a(this.a) != null) {
      LoadDataProgress.a(this.a).reloadData();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/LoadDataProgress$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */