package com.tencent.mm.sdk.platformtools;

final class CharSequences$1
  implements CharSequence
{
  CharSequences$1(byte[] paramArrayOfByte) {}
  
  public final char charAt(int paramInt)
  {
    return (char)this.U[paramInt];
  }
  
  public final int length()
  {
    return this.U.length;
  }
  
  public final CharSequence subSequence(int paramInt1, int paramInt2)
  {
    return CharSequences.forAsciiBytes(this.U, paramInt1, paramInt2);
  }
  
  public final String toString()
  {
    return new String(this.U);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/CharSequences$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */