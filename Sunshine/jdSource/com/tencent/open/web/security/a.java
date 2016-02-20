package com.tencent.open.web.security;

import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import com.tencent.open.a.f;

public class a
  extends InputConnectionWrapper
{
  public static String a;
  public static boolean b = false;
  public static boolean c = false;
  
  public a(InputConnection paramInputConnection, boolean paramBoolean)
  {
    super(paramInputConnection, paramBoolean);
  }
  
  public boolean commitText(CharSequence paramCharSequence, int paramInt)
  {
    c = true;
    a = paramCharSequence.toString();
    f.b("CaptureInputConnection", "-->commitText: " + paramCharSequence.toString());
    return super.commitText(paramCharSequence, paramInt);
  }
  
  public boolean sendKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0)
    {
      f.c("CaptureInputConnection", "sendKeyEvent");
      a = String.valueOf((char)paramKeyEvent.getUnicodeChar());
      c = true;
      f.b("CaptureInputConnection", "s: " + a);
    }
    f.b("CaptureInputConnection", "-->sendKeyEvent: " + a);
    return super.sendKeyEvent(paramKeyEvent);
  }
  
  public boolean setComposingText(CharSequence paramCharSequence, int paramInt)
  {
    c = true;
    a = paramCharSequence.toString();
    f.b("CaptureInputConnection", "-->setComposingText: " + paramCharSequence.toString());
    return super.setComposingText(paramCharSequence, paramInt);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/web/security/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */