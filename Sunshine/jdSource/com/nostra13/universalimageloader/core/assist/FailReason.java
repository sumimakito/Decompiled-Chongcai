package com.nostra13.universalimageloader.core.assist;

public class FailReason
{
  private final Throwable cause;
  private final FailReason.FailType type;
  
  public FailReason(FailReason.FailType paramFailType, Throwable paramThrowable)
  {
    this.type = paramFailType;
    this.cause = paramThrowable;
  }
  
  public Throwable getCause()
  {
    return this.cause;
  }
  
  public FailReason.FailType getType()
  {
    return this.type;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/assist/FailReason.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */