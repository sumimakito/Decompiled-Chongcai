import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.activity.persion.PersonInfo2;
import cn.apppark.vertify.base.ClientPersionInfo;

public final class ou
  implements DialogInterface.OnClickListener
{
  public ou(PersonInfo2 paramPersonInfo2) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    new ClientPersionInfo(PersonInfo2.a(this.a)).LoginOff();
    PersonInfo2.a(this.a, "注销成功", 0);
    this.a.setResult(-1);
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ou.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */