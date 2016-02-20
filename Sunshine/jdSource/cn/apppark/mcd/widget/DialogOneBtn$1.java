package cn.apppark.mcd.widget;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;

class DialogOneBtn$1
  implements View.OnClickListener
{
  DialogOneBtn$1(DialogOneBtn paramDialogOneBtn, DialogInterface.OnClickListener paramOnClickListener) {}
  
  public void onClick(View paramView)
  {
    if (this.a != null) {
      this.a.onClick(this.b, 0);
    }
    this.b.dismiss();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/DialogOneBtn$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */