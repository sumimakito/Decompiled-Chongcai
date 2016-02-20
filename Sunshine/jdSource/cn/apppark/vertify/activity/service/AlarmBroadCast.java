package cn.apppark.vertify.activity.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import cn.apppark.ckj10185912.HQCHApplication;

public class AlarmBroadCast
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((HQCHApplication.isLBSopen) && (PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("lbs_on_off", HQCHApplication.isLBSopen))) {
      paramContext.startService(new Intent(paramContext, LBSService.class));
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/service/AlarmBroadCast.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */