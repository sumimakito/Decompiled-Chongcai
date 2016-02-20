import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import cn.apppark.mcd.widget.TimePreference;
import cn.apppark.vertify.base.SetAct;

public final class vz
  implements Preference.OnPreferenceChangeListener
{
  public vz(SetAct paramSetAct) {}
  
  public final boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    this.a.a.setSummary(paramObject.toString());
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */