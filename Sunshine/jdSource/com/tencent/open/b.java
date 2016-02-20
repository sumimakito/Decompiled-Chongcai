package com.tencent.open;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import com.tencent.open.a.f;

public abstract class b
  extends Dialog
{
  protected a jsBridge;
  @SuppressLint({"NewApi"})
  protected final WebChromeClient mChromeClient = new WebChromeClient()
  {
    public void onConsoleMessage(String paramAnonymousString1, int paramAnonymousInt, String paramAnonymousString2)
    {
      f.c("WebConsole", paramAnonymousString1 + " -- From 222 line " + paramAnonymousInt + " of " + paramAnonymousString2);
      if (Build.VERSION.SDK_INT == 7) {
        b.this.onConsoleMessage(paramAnonymousString1);
      }
    }
    
    public boolean onConsoleMessage(ConsoleMessage paramAnonymousConsoleMessage)
    {
      if (paramAnonymousConsoleMessage == null) {
        return false;
      }
      f.c("WebConsole", paramAnonymousConsoleMessage.message() + " -- From  111 line " + paramAnonymousConsoleMessage.lineNumber() + " of " + paramAnonymousConsoleMessage.sourceId());
      b localb;
      if (Build.VERSION.SDK_INT > 7)
      {
        localb = b.this;
        if (paramAnonymousConsoleMessage != null) {
          break label79;
        }
      }
      label79:
      for (paramAnonymousConsoleMessage = "";; paramAnonymousConsoleMessage = paramAnonymousConsoleMessage.message())
      {
        localb.onConsoleMessage(paramAnonymousConsoleMessage);
        return true;
      }
    }
  };
  
  public b(Context paramContext)
  {
    super(paramContext);
  }
  
  public b(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  protected abstract void onConsoleMessage(String paramString);
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.jsBridge = new a();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */