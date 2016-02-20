package cn.apppark.vertify.adapter;

import android.view.View;
import android.view.View.OnClickListener;

class TCollectionAdapter$1
  implements View.OnClickListener
{
  TCollectionAdapter$1(TCollectionAdapter paramTCollectionAdapter, int paramInt) {}
  
  public void onClick(View paramView)
  {
    if (TCollectionAdapter.a(this.b) != null) {
      TCollectionAdapter.a(this.b).onRightItemClick(paramView, this.a);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TCollectionAdapter$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */