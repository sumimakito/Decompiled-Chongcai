package com.tencent.mm.algorithm;

public class UIN
  extends Number
{
  private int h = 0;
  
  public UIN(int paramInt)
  {
    this.h = paramInt;
  }
  
  public UIN(long paramLong)
  {
    this.h = ((int)(0xFFFFFFFFFFFFFFFF & paramLong));
  }
  
  public static int valueOf(String paramString)
  {
    try
    {
      int i = new UIN(Long.valueOf(paramString).longValue()).intValue();
      return i;
    }
    catch (Exception paramString) {}
    return 0;
  }
  
  public double doubleValue()
  {
    return (this.h | 0L) + 0.0D;
  }
  
  public float floatValue()
  {
    return (float)((this.h | 0L) + 0.0D);
  }
  
  public int intValue()
  {
    return this.h;
  }
  
  public long longValue()
  {
    return this.h & 0xFFFFFFFF;
  }
  
  public String toString()
  {
    return String.valueOf(this.h & 0xFFFFFFFF);
  }
  
  public int value()
  {
    return this.h;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/algorithm/UIN.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */