package cn.apppark.vertify.base;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.widget.TimePreference;
import vx;
import vy;
import vz;

public class SetAct
  extends PreferenceActivity
{
  public TimePreference a;
  CheckBoxPreference b;
  public TimePreference c;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034112);
    this.b = ((CheckBoxPreference)findPreference("lbs_on_off"));
    paramBundle = PreferenceManager.getDefaultSharedPreferences(this);
    this.b.setChecked(paramBundle.getBoolean("lbs_on_off", HQCHApplication.isLBSopen));
    this.b.setOnPreferenceChangeListener(new vx(this));
    this.c = ((TimePreference)findPreference("lbs_start"));
    this.c.setSummary(paramBundle.getString("lbs_start", "09:00"));
    this.c.setOnPreferenceChangeListener(new vy(this));
    this.a = ((TimePreference)findPreference("lbs_end"));
    this.a.setSummary(paramBundle.getString("lbs_end", "23:59"));
    this.a.setOnPreferenceChangeListener(new vz(this));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/base/SetAct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */