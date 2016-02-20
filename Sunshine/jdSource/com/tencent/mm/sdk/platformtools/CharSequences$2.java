package com.tencent.mm.sdk.platformtools;

final class CharSequences$2
  implements CharSequence
{
  CharSequences$2(byte[] paramArrayOfByte, int paramInt1, int paramInt2) {}
  
  public final char charAt(int paramInt)
  {
    return (char)this.U[(this.V + paramInt)];
  }
  
  public final int length()
  {
    return this.W - this.V;
  }
  
  public final CharSequence subSequence(int paramInt1, int paramInt2)
  {
    paramInt1 -= this.V;
    paramInt2 -= this.V;
    CharSequences.a(paramInt1, paramInt2, length());
    return CharSequences.forAsciiBytes(this.U, paramInt1, paramInt2);
  }
  
  public final String toString()
  {
    return new String(this.U, this.V, length());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/CharSequences$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */