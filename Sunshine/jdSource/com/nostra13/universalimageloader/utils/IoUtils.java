package com.nostra13.universalimageloader.utils;

import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;

public final class IoUtils
{
  public static final int CONTINUE_LOADING_PERCENTAGE = 75;
  public static final int DEFAULT_BUFFER_SIZE = 32768;
  public static final int DEFAULT_IMAGE_TOTAL_SIZE = 512000;
  
  public static void closeSilently(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Exception paramCloseable) {}
  }
  
  public static boolean copyStream(InputStream paramInputStream, OutputStream paramOutputStream, IoUtils.CopyListener paramCopyListener)
  {
    return copyStream(paramInputStream, paramOutputStream, paramCopyListener, 32768);
  }
  
  public static boolean copyStream(InputStream paramInputStream, OutputStream paramOutputStream, IoUtils.CopyListener paramCopyListener, int paramInt)
  {
    int j = paramInputStream.available();
    int i = j;
    if (j <= 0) {
      i = 512000;
    }
    byte[] arrayOfByte = new byte[paramInt];
    if (shouldStopLoading(paramCopyListener, 0, i)) {
      return false;
    }
    j = 0;
    int k;
    do
    {
      k = paramInputStream.read(arrayOfByte, 0, paramInt);
      if (k == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, k);
      k = j + k;
      j = k;
    } while (!shouldStopLoading(paramCopyListener, k, i));
    return false;
    paramOutputStream.flush();
    return true;
  }
  
  /* Error */
  public static void readAndCloseStream(InputStream paramInputStream)
  {
    // Byte code:
    //   0: ldc 9
    //   2: newarray <illegal type>
    //   4: astore_2
    //   5: aload_0
    //   6: aload_2
    //   7: iconst_0
    //   8: ldc 9
    //   10: invokevirtual 44	java/io/InputStream:read	([BII)I
    //   13: istore_1
    //   14: iload_1
    //   15: iconst_m1
    //   16: if_icmpne -11 -> 5
    //   19: aload_0
    //   20: ifnull +9 -> 29
    //   23: aload_0
    //   24: invokeinterface 25 1 0
    //   29: return
    //   30: astore_2
    //   31: aload_0
    //   32: ifnull -3 -> 29
    //   35: aload_0
    //   36: invokeinterface 25 1 0
    //   41: return
    //   42: astore_0
    //   43: return
    //   44: astore_2
    //   45: aload_0
    //   46: ifnull +9 -> 55
    //   49: aload_0
    //   50: invokeinterface 25 1 0
    //   55: aload_2
    //   56: athrow
    //   57: astore_0
    //   58: return
    //   59: astore_0
    //   60: goto -5 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	paramInputStream	InputStream
    //   13	4	1	i	int
    //   4	3	2	arrayOfByte	byte[]
    //   30	1	2	localIOException	java.io.IOException
    //   44	12	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   5	14	30	java/io/IOException
    //   35	41	42	java/lang/Exception
    //   5	14	44	finally
    //   23	29	57	java/lang/Exception
    //   49	55	59	java/lang/Exception
  }
  
  private static boolean shouldStopLoading(IoUtils.CopyListener paramCopyListener, int paramInt1, int paramInt2)
  {
    return (paramCopyListener != null) && (!paramCopyListener.onBytesCopied(paramInt1, paramInt2)) && (paramInt1 * 100 / paramInt2 < 75);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/utils/IoUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */