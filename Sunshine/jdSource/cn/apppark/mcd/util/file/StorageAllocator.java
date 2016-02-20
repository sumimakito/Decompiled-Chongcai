package cn.apppark.mcd.util.file;

import android.os.Environment;
import android.os.StatFs;
import java.io.File;

public class StorageAllocator
{
  private static final long LOW_STORAGE_THRESHOLD = 5242880L;
  
  public static long getAvailableStore(String paramString)
  {
    paramString = new StatFs(paramString);
    long l = paramString.getBlockSize();
    paramString.getBlockCount();
    return paramString.getAvailableBlocks() * l;
  }
  
  public static String getExternalStoragePath()
  {
    if ("mounted".equals(Environment.getExternalStorageState()))
    {
      if (Environment.getExternalStorageDirectory().canWrite()) {
        return Environment.getExternalStorageDirectory().getPath();
      }
    }
    else
    {
      File localFile = new File("mnt" + File.separator + "emmc" + File.separator);
      if (localFile.isDirectory()) {
        return localFile.toString();
      }
    }
    return null;
  }
  
  public static boolean hasEnoughCapacity(String paramString)
  {
    return getAvailableStore(paramString) > 5242880L;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/file/StorageAllocator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */