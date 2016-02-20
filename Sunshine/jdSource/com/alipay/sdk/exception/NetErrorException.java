package com.alipay.sdk.exception;

import android.text.TextUtils;
import android.util.Log;

public final class NetErrorException
  extends Exception
{
  public static final int NET_CONNECTION_ERROR = 0;
  public static final int SERVER_ERROR = 1;
  public static final int SSL_ERROR = 2;
  private static final long serialVersionUID = 8374198311711795611L;
  private int errorCode = 0;
  
  public NetErrorException()
  {
    this(null, null);
  }
  
  public NetErrorException(String paramString)
  {
    this(paramString, null);
  }
  
  public NetErrorException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    printException(paramString, paramThrowable);
  }
  
  public NetErrorException(Throwable paramThrowable)
  {
    this(null, paramThrowable);
  }
  
  public static void printException(String paramString, Throwable paramThrowable)
  {
    if (!TextUtils.isEmpty(paramString)) {
      Log.w("NetError", "NetError--" + paramString);
    }
    if (paramThrowable != null) {}
    try
    {
      Log.w("NetError", "NetError--" + paramThrowable.getMessage());
      return;
    }
    catch (Exception paramString) {}
  }
  
  public final int getErrorCode()
  {
    return this.errorCode;
  }
  
  public final void setErrorCode(int paramInt)
  {
    this.errorCode = paramInt;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/exception/NetErrorException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */