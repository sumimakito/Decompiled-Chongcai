import android.widget.DatePicker;
import android.widget.DatePicker.OnDateChangedListener;
import cn.apppark.vertify.activity.free.dyn.DynMsgSubmit5001;

public final class hz
  implements DatePicker.OnDateChangedListener
{
  public hz(DynMsgSubmit5001 paramDynMsgSubmit5001) {}
  
  public final void onDateChanged(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    DynMsgSubmit5001.c(this.a, paramInt1);
    DynMsgSubmit5001.d(this.a, paramInt2);
    DynMsgSubmit5001.e(this.a, paramInt3);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */