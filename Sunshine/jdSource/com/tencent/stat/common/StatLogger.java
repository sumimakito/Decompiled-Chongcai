package com.tencent.stat.common;

import android.util.Log;

public final class StatLogger
{
  private String a = "default";
  private boolean b = true;
  private int c = 2;
  
  public StatLogger() {}
  
  public StatLogger(String paramString)
  {
    this.a = paramString;
  }
  
  private String a()
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    if (arrayOfStackTraceElement == null) {
      return null;
    }
    int j = arrayOfStackTraceElement.length;
    int i = 0;
    label18:
    StackTraceElement localStackTraceElement;
    if (i < j)
    {
      localStackTraceElement = arrayOfStackTraceElement[i];
      if (!localStackTraceElement.isNativeMethod()) {
        break label43;
      }
    }
    label43:
    while ((localStackTraceElement.getClassName().equals(Thread.class.getName())) || (localStackTraceElement.getClassName().equals(getClass().getName())))
    {
      i += 1;
      break label18;
      break;
    }
    return "[" + Thread.currentThread().getName() + "(" + Thread.currentThread().getId() + "): " + localStackTraceElement.getFileName() + ":" + localStackTraceElement.getLineNumber() + "]";
  }
  
  public void d(Object paramObject)
  {
    if (isDebugEnable()) {
      debug(paramObject);
    }
  }
  
  public void debug(Object paramObject)
  {
    String str;
    if (this.c <= 3)
    {
      str = a();
      if (str != null) {
        break label32;
      }
    }
    label32:
    for (paramObject = paramObject.toString();; paramObject = str + " - " + paramObject)
    {
      Log.d(this.a, (String)paramObject);
      return;
    }
  }
  
  public void e(Exception paramException)
  {
    if (isDebugEnable()) {
      error(paramException);
    }
  }
  
  public void e(Object paramObject)
  {
    if (isDebugEnable()) {
      error(paramObject);
    }
  }
  
  public void error(Exception paramException)
  {
    if (this.c <= 6)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      String str = a();
      StackTraceElement[] arrayOfStackTraceElement = paramException.getStackTrace();
      if (str != null) {
        localStringBuffer.append(str + " - " + paramException + "\r\n");
      }
      while ((arrayOfStackTraceElement != null) && (arrayOfStackTraceElement.length > 0))
      {
        int j = arrayOfStackTraceElement.length;
        int i = 0;
        while (i < j)
        {
          paramException = arrayOfStackTraceElement[i];
          if (paramException != null) {
            localStringBuffer.append("[ " + paramException.getFileName() + ":" + paramException.getLineNumber() + " ]\r\n");
          }
          i += 1;
        }
        localStringBuffer.append(paramException + "\r\n");
      }
      Log.e(this.a, localStringBuffer.toString());
    }
  }
  
  public void error(Object paramObject)
  {
    String str;
    if (this.c <= 6)
    {
      str = a();
      if (str != null) {
        break label33;
      }
    }
    label33:
    for (paramObject = paramObject.toString();; paramObject = str + " - " + paramObject)
    {
      Log.e(this.a, (String)paramObject);
      return;
    }
  }
  
  public int getLogLevel()
  {
    return this.c;
  }
  
  public void i(Object paramObject)
  {
    if (isDebugEnable()) {
      info(paramObject);
    }
  }
  
  public void info(Object paramObject)
  {
    String str;
    if (this.c <= 4)
    {
      str = a();
      if (str != null) {
        break label32;
      }
    }
    label32:
    for (paramObject = paramObject.toString();; paramObject = str + " - " + paramObject)
    {
      Log.i(this.a, (String)paramObject);
      return;
    }
  }
  
  public boolean isDebugEnable()
  {
    return this.b;
  }
  
  public void setDebugEnable(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public void setLogLevel(int paramInt)
  {
    this.c = paramInt;
  }
  
  public void setTag(String paramString)
  {
    this.a = paramString;
  }
  
  public void v(Object paramObject)
  {
    if (isDebugEnable()) {
      verbose(paramObject);
    }
  }
  
  public void verbose(Object paramObject)
  {
    String str;
    if (this.c <= 2)
    {
      str = a();
      if (str != null) {
        break label32;
      }
    }
    label32:
    for (paramObject = paramObject.toString();; paramObject = str + " - " + paramObject)
    {
      Log.v(this.a, (String)paramObject);
      return;
    }
  }
  
  public void w(Object paramObject)
  {
    if (isDebugEnable()) {
      warn(paramObject);
    }
  }
  
  public void warn(Object paramObject)
  {
    String str;
    if (this.c <= 5)
    {
      str = a();
      if (str != null) {
        break label32;
      }
    }
    label32:
    for (paramObject = paramObject.toString();; paramObject = str + " - " + paramObject)
    {
      Log.w(this.a, (String)paramObject);
      return;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/common/StatLogger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */