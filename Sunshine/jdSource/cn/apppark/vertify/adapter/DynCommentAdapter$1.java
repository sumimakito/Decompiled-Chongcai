package cn.apppark.vertify.adapter;

import android.view.View;
import android.view.View.OnClickListener;

class DynCommentAdapter$1
  implements View.OnClickListener
{
  DynCommentAdapter$1(DynCommentAdapter paramDynCommentAdapter, int paramInt) {}
  
  public void onClick(View paramView)
  {
    if (DynCommentAdapter.a(this.b) != null) {
      DynCommentAdapter.a(this.b).onClickGood(this.a);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynCommentAdapter$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */