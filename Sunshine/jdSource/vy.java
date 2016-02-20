import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import cn.apppark.mcd.widget.TimePreference;
import cn.apppark.vertify.base.SetAct;

public final class vy
  implements Preference.OnPreferenceChangeListener
{
  public vy(SetAct paramSetAct) {}
  
  public final boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    this.a.c.setSummary(paramObject.toString());
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */