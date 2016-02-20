package cn.apppark.vertify.adapter;

import android.view.View;
import android.view.View.OnClickListener;

class TMyHistoryAdapter$1
  implements View.OnClickListener
{
  TMyHistoryAdapter$1(TMyHistoryAdapter paramTMyHistoryAdapter, int paramInt) {}
  
  public void onClick(View paramView)
  {
    if (TMyHistoryAdapter.a(this.b) != null) {
      TMyHistoryAdapter.a(this.b).onRightItemClick(paramView, this.a);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TMyHistoryAdapter$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */