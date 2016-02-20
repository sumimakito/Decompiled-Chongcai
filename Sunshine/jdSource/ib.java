import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import cn.apppark.mcd.vo.dyn.Dyn5001Item2Vo;
import cn.apppark.vertify.activity.free.dyn.DynMsgSubmit5001;
import java.util.ArrayList;

public final class ib
  implements DialogInterface.OnClickListener
{
  public ib(DynMsgSubmit5001 paramDynMsgSubmit5001, TextView paramTextView1, String[] paramArrayOfString, TextView paramTextView2, ArrayList paramArrayList) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.setText(this.b[paramInt]);
    this.a.setId(paramInt);
    this.c.setTag(((Dyn5001Item2Vo)this.d.get(paramInt)).getId());
    paramDialogInterface.dismiss();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ib.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */