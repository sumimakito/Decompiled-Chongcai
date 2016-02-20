package cn.apppark.vertify.activity.free.dyn;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;

class DynSubComment$2
  implements View.OnClickListener
{
  DynSubComment$2(DynSubComment paramDynSubComment) {}
  
  public void onClick(View paramView)
  {
    DynSubComment.b(this.a).setHint("评论");
    DynSubComment.b(this.a).setText("");
    DynSubComment.a(this.a, null);
    DynSubComment.c(this.a).setVisibility(8);
    DynSubComment.d(this.a).setVisibility(0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynSubComment$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */