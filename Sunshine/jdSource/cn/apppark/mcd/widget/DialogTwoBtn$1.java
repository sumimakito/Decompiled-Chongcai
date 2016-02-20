package cn.apppark.mcd.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.vertify.base.ClientInitInfoHelpler;

class DialogTwoBtn$1
  implements View.OnClickListener
{
  DialogTwoBtn$1(DialogTwoBtn paramDialogTwoBtn) {}
  
  public void onClick(View paramView)
  {
    boolean bool2 = true;
    boolean bool1;
    if (System.currentTimeMillis() - DialogTwoBtn.a(this.a) < 2000L)
    {
      DialogTwoBtn.b(this.a);
      if (DialogTwoBtn.c(this.a) == 5)
      {
        boolean bool3 = YYGYContants.mHelper.getIsDebug();
        paramView = DialogTwoBtn.d(this.a);
        StringBuilder localStringBuilder = new StringBuilder("debug:");
        if (bool3) {
          break label134;
        }
        bool1 = true;
        Toast.makeText(paramView, bool1 + "-10185912", 1).show();
        paramView = YYGYContants.mHelper;
        if (bool3) {
          break label139;
        }
        bool1 = true;
        label106:
        paramView.setIsDebug(bool1);
        if (bool3) {
          break label144;
        }
        bool1 = bool2;
        label118:
        cn.apppark.ckj10185912.HQCHApplication.DEBUG = bool1;
      }
    }
    for (;;)
    {
      DialogTwoBtn.a(this.a, System.currentTimeMillis());
      return;
      label134:
      bool1 = false;
      break;
      label139:
      bool1 = false;
      break label106;
      label144:
      bool1 = false;
      break label118;
      DialogTwoBtn.a(this.a, 1);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/DialogTwoBtn$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */