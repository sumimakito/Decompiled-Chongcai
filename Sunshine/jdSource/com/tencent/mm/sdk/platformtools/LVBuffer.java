package com.tencent.mm.sdk.platformtools;

import java.nio.ByteBuffer;

public class LVBuffer
{
  public static final int LENGTH_ALLOC_PER_NEW = 4096;
  public static final int MAX_STRING_LENGTH = 2048;
  private ByteBuffer ap;
  private boolean aq;
  
  private int a(int paramInt)
  {
    if (this.ap.limit() - this.ap.position() > paramInt) {
      return 0;
    }
    ByteBuffer localByteBuffer = ByteBuffer.allocate(this.ap.limit() + 4096);
    localByteBuffer.put(this.ap.array(), 0, this.ap.position());
    this.ap = localByteBuffer;
    return 0;
  }
  
  public byte[] buildFinish()
  {
    if (!this.aq) {
      throw new Exception("Buffer For Parse");
    }
    a(1);
    this.ap.put((byte)125);
    byte[] arrayOfByte = new byte[this.ap.position()];
    System.arraycopy(this.ap.array(), 0, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public boolean checkGetFinish()
  {
    return this.ap.limit() - this.ap.position() <= 1;
  }
  
  public int getInt()
  {
    if (this.aq) {
      throw new Exception("Buffer For Build");
    }
    return this.ap.getInt();
  }
  
  public long getLong()
  {
    if (this.aq) {
      throw new Exception("Buffer For Build");
    }
    return this.ap.getLong();
  }
  
  public String getString()
  {
    if (this.aq) {
      throw new Exception("Buffer For Build");
    }
    int i = this.ap.getShort();
    if (i > 2048)
    {
      this.ap = null;
      throw new Exception("Buffer String Length Error");
    }
    if (i == 0) {
      return "";
    }
    byte[] arrayOfByte = new byte[i];
    this.ap.get(arrayOfByte, 0, i);
    return new String(arrayOfByte);
  }
  
  public int initBuild()
  {
    this.ap = ByteBuffer.allocate(4096);
    this.ap.put((byte)123);
    this.aq = true;
    return 0;
  }
  
  public int initParse(byte[] paramArrayOfByte)
  {
    int i;
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      i = -1;
    }
    while (i != 0)
    {
      this.ap = null;
      throw new Exception("Parse Buffer Check Failed :" + i);
      if (paramArrayOfByte[0] != 123) {
        i = -2;
      } else if (paramArrayOfByte[(paramArrayOfByte.length - 1)] != 125) {
        i = -3;
      } else {
        i = 0;
      }
    }
    this.ap = ByteBuffer.wrap(paramArrayOfByte);
    this.ap.position(1);
    this.aq = false;
    return 0;
  }
  
  public int putInt(int paramInt)
  {
    if (!this.aq) {
      throw new Exception("Buffer For Parse");
    }
    a(4);
    this.ap.putInt(paramInt);
    return 0;
  }
  
  public int putLong(long paramLong)
  {
    if (!this.aq) {
      throw new Exception("Buffer For Parse");
    }
    a(8);
    this.ap.putLong(paramLong);
    return 0;
  }
  
  public int putString(String paramString)
  {
    if (!this.aq) {
      throw new Exception("Buffer For Parse");
    }
    byte[] arrayOfByte = null;
    if (paramString != null) {
      arrayOfByte = paramString.getBytes();
    }
    paramString = arrayOfByte;
    if (arrayOfByte == null) {
      paramString = new byte[0];
    }
    if (paramString.length > 2048) {
      throw new Exception("Buffer String Length Error");
    }
    a(paramString.length + 2);
    this.ap.putShort((short)paramString.length);
    if (paramString.length > 0) {
      this.ap.put(paramString);
    }
    return 0;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/LVBuffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */