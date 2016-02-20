package com.tencent.open.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Properties;
import java.util.zip.ZipException;

public final class ApkExternalInfoTool
{
  public static final String CHANNELID = "channelNo";
  private static final ZipLong a = new ZipLong(101010256L);
  private static final ZipShort b = new ZipShort(38651);
  
  private static byte[] a(RandomAccessFile paramRandomAccessFile)
    throws IOException
  {
    int j = 1;
    long l = paramRandomAccessFile.length() - 22L;
    paramRandomAccessFile.seek(l);
    byte[] arrayOfByte = a.getBytes();
    int i = paramRandomAccessFile.read();
    if (i != -1) {
      if ((i != arrayOfByte[0]) || (paramRandomAccessFile.read() != arrayOfByte[1]) || (paramRandomAccessFile.read() != arrayOfByte[2]) || (paramRandomAccessFile.read() != arrayOfByte[3])) {}
    }
    for (i = j;; i = 0)
    {
      if (i == 0)
      {
        throw new ZipException("archive is not a ZIP archive");
        l -= 1L;
        paramRandomAccessFile.seek(l);
        i = paramRandomAccessFile.read();
        break;
      }
      paramRandomAccessFile.seek(16L + l + 4L);
      arrayOfByte = new byte[2];
      paramRandomAccessFile.readFully(arrayOfByte);
      i = new ZipShort(arrayOfByte).getValue();
      if (i == 0) {
        return null;
      }
      arrayOfByte = new byte[i];
      paramRandomAccessFile.read(arrayOfByte);
      return arrayOfByte;
    }
  }
  
  public static String read(File paramFile, String paramString)
    throws IOException
  {
    ApkExternalInfo localApkExternalInfo = null;
    try
    {
      localRandomAccessFile = new RandomAccessFile(paramFile, "r");
      if (paramString == null) {
        break label82;
      }
    }
    finally
    {
      try
      {
        paramFile = a(localRandomAccessFile);
        if (paramFile == null)
        {
          paramFile = localApkExternalInfo;
          if (localRandomAccessFile != null)
          {
            localRandomAccessFile.close();
            paramFile = localApkExternalInfo;
          }
        }
        do
        {
          return paramFile;
          localApkExternalInfo = new ApkExternalInfo(null);
          localApkExternalInfo.a(paramFile);
          paramString = localApkExternalInfo.a.getProperty(paramString);
          paramFile = paramString;
        } while (localRandomAccessFile == null);
        localRandomAccessFile.close();
        return paramString;
      }
      finally
      {
        for (;;)
        {
          RandomAccessFile localRandomAccessFile;
          paramString = localRandomAccessFile;
        }
      }
      paramFile = finally;
      paramString = null;
    }
    paramString.close();
    label82:
    throw paramFile;
  }
  
  public static String readChannelId(File paramFile)
    throws IOException
  {
    return read(paramFile, "channelNo");
  }
  
  private static class ApkExternalInfo
  {
    Properties a = new Properties();
    byte[] b;
    
    void a(byte[] paramArrayOfByte)
      throws IOException
    {
      if (paramArrayOfByte == null) {}
      ByteBuffer localByteBuffer;
      int i;
      do
      {
        int j;
        do
        {
          do
          {
            return;
            localByteBuffer = ByteBuffer.wrap(paramArrayOfByte);
            i = ApkExternalInfoTool.a().getBytes().length;
            arrayOfByte = new byte[i];
            localByteBuffer.get(arrayOfByte);
            if (!ApkExternalInfoTool.a().equals(new ZipShort(arrayOfByte))) {
              throw new ProtocolException("unknow protocl [" + Arrays.toString(paramArrayOfByte) + "]");
            }
          } while (paramArrayOfByte.length - i <= 2);
          arrayOfByte = new byte[2];
          localByteBuffer.get(arrayOfByte);
          j = new ZipShort(arrayOfByte).getValue();
        } while (paramArrayOfByte.length - i - 2 < j);
        byte[] arrayOfByte = new byte[j];
        localByteBuffer.get(arrayOfByte);
        this.a.load(new ByteArrayInputStream(arrayOfByte));
        i = paramArrayOfByte.length - i - j - 2;
      } while (i <= 0);
      this.b = new byte[i];
      localByteBuffer.get(this.b);
    }
    
    public String toString()
    {
      return "ApkExternalInfo [p=" + this.a + ", otherData=" + Arrays.toString(this.b) + "]";
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/utils/ApkExternalInfoTool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */