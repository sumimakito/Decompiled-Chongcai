package cn.apppark.mcd.util.more;

import android.os.Environment;
import java.io.File;

public class SavePath
{
  private static final String FOLDER_NAME = "apppark";
  
  public static String getAppparkDirectory()
  {
    Object localObject = File.separator;
    if (getSdCardStatus())
    {
      localObject = new File(Environment.getExternalStorageDirectory().getPath() + (String)localObject + "apppark");
      if (!((File)localObject).exists()) {
        ((File)localObject).mkdirs();
      }
      return ((File)localObject).toString();
    }
    localObject = new File("mnt" + (String)localObject + "apppark");
    if (!((File)localObject).exists()) {
      ((File)localObject).mkdirs();
    }
    return ((File)localObject).toString();
  }
  
  private static boolean getSdCardStatus()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ("mounted".equals(Environment.getExternalStorageState()))
    {
      bool1 = bool2;
      if (Environment.getExternalStorageDirectory().canWrite()) {
        bool1 = true;
      }
    }
    return bool1;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/more/SavePath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */