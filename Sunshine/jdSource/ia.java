import android.widget.TimePicker;
import android.widget.TimePicker.OnTimeChangedListener;
import cn.apppark.vertify.activity.free.dyn.DynMsgSubmit5001;

public final class ia
  implements TimePicker.OnTimeChangedListener
{
  public ia(DynMsgSubmit5001 paramDynMsgSubmit5001) {}
  
  public final void onTimeChanged(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    DynMsgSubmit5001.f(this.a, paramInt1);
    DynMsgSubmit5001.g(this.a, paramInt2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ia.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */