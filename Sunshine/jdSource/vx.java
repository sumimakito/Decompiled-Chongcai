import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import cn.apppark.vertify.activity.service.LBSService;
import cn.apppark.vertify.base.SetAct;

public final class vx
  implements Preference.OnPreferenceChangeListener
{
  public vx(SetAct paramSetAct) {}
  
  public final boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if ("true".equals(paramObject.toString())) {
      this.a.startService(new Intent(this.a, LBSService.class));
    }
    for (;;)
    {
      return true;
      this.a.stopService(new Intent(this.a, LBSService.class));
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */