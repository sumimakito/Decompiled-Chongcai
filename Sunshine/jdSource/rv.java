import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.activity.tieba.TCommentList;

final class rv
  implements DialogInterface.OnClickListener
{
  rv(rt paramrt, int paramInt, String paramString) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    TCommentList.u(this.c.a).show();
    TCommentList.c(this.c.a, this.a);
    TCommentList.a(this.c.a, 4, this.b);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */