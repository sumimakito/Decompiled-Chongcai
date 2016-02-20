package cn.apppark.vertify.adapter;

import android.view.View;
import android.view.View.OnClickListener;

class TCommnetAdapter$1
  implements View.OnClickListener
{
  TCommnetAdapter$1(TCommnetAdapter paramTCommnetAdapter) {}
  
  public void onClick(View paramView)
  {
    if (TCommnetAdapter.a(this.a) != null) {
      TCommnetAdapter.a(this.a).onPicClick(paramView.getTag().toString());
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TCommnetAdapter$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */