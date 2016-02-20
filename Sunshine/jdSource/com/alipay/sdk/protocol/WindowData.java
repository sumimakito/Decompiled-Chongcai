package com.alipay.sdk.protocol;

import com.alipay.sdk.data.Request;
import com.alipay.sdk.data.Response;

public abstract class WindowData
  extends FrameData
{
  public static final int a = 4;
  public static final int b = 6;
  public static final int c = 7;
  public static final int d = 8;
  public static final int e = 9;
  public static final int f = 10;
  public static final int g = -10;
  boolean h = false;
  
  protected WindowData(Request paramRequest, Response paramResponse)
  {
    super(paramRequest, paramResponse);
  }
  
  private void a(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }
  
  private boolean g()
  {
    return this.h;
  }
  
  public abstract boolean d();
  
  public abstract int e();
  
  public abstract String f();
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/protocol/WindowData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */