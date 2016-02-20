package cn.apppark.mcd.widget;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;

class DialogTwoBtn$3
  implements View.OnClickListener
{
  DialogTwoBtn$3(DialogTwoBtn paramDialogTwoBtn, DialogInterface.OnClickListener paramOnClickListener) {}
  
  public void onClick(View paramView)
  {
    if (this.a != null) {
      this.a.onClick(this.b, 0);
    }
    this.b.dismiss();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/DialogTwoBtn$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */