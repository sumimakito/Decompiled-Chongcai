package com.tencent.open.c;

import android.content.Context;
import android.webkit.WebView;
import java.lang.reflect.Method;

public class b
  extends WebView
{
  public b(Context paramContext)
  {
    super(paramContext);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    Object localObject = getSettings();
    if (localObject == null) {}
    for (;;)
    {
      return;
      localObject = localObject.getClass();
      try
      {
        localObject = ((Class)localObject).getMethod("removeJavascriptInterface", new Class[] { String.class });
        if (localObject != null)
        {
          ((Method)localObject).invoke(this, new Object[] { "searchBoxJavaBridge_" });
          return;
        }
      }
      catch (Exception localException) {}
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */