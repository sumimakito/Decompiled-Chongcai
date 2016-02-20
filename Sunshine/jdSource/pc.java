import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import cn.apppark.vertify.activity.persion.RegNewStep2;

public final class pc
  implements RadioGroup.OnCheckedChangeListener
{
  public pc(RegNewStep2 paramRegNewStep2) {}
  
  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramInt == 2131362510)
    {
      RegNewStep2.a(this.a, "0");
      return;
    }
    RegNewStep2.a(this.a, "1");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */