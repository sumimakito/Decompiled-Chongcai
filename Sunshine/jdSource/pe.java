import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.activity.persion.SetInfo;
import cn.apppark.vertify.base.ClientPersionInfo;

public final class pe
  implements DialogInterface.OnClickListener
{
  public pe(SetInfo paramSetInfo) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    new ClientPersionInfo(SetInfo.a(this.a)).LoginOff();
    SetInfo.a(this.a, "注销成功", 0);
    this.a.setResult(-1);
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */