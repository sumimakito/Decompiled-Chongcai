package com.tencent.stat;

import android.app.Activity;

public class EasyActivity
  extends Activity
{
  protected void onPause()
  {
    super.onPause();
    StatService.onPause(this);
  }
  
  protected void onResume()
  {
    super.onResume();
    StatService.onResume(this);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/EasyActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */