package org.mozilla.intl.chardet;

public abstract interface nsICharsetDetector
{
  public abstract boolean DoIt(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean);
  
  public abstract void Done();
  
  public abstract void Init(nsICharsetDetectionObserver paramnsICharsetDetectionObserver);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/mozilla/intl/chardet/nsICharsetDetector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */