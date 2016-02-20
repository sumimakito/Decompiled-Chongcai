package cn.apppark.vertify.base;

import cn.apppark.mcd.util.file.StorageAllocator;
import java.io.File;

public class YygyResourceDirGenerator
{
  static YygyResourceDirGenerator a = null;
  private String baseFileName = "yygy";
  private String mClientFlag;
  private String yygyPath;
  
  private YygyResourceDirGenerator(String paramString)
  {
    this.mClientFlag = paramString;
  }
  
  public static YygyResourceDirGenerator getGenerator()
  {
    return a;
  }
  
  public static YygyResourceDirGenerator getInstance(String paramString)
  {
    if ((a == null) || (a.mClientFlag != paramString)) {
      a = new YygyResourceDirGenerator(paramString);
    }
    return a;
  }
  
  public static void setGenerator(YygyResourceDirGenerator paramYygyResourceDirGenerator)
  {
    a = paramYygyResourceDirGenerator;
  }
  
  public void generateyygyPath()
  {
    if ((StorageAllocator.getExternalStoragePath() != null) && (StorageAllocator.hasEnoughCapacity(StorageAllocator.getExternalStoragePath()))) {
      this.yygyPath = (StorageAllocator.getExternalStoragePath() + File.separator + this.baseFileName + File.separator);
    }
  }
  
  public File getDownLoadDir(String paramString)
  {
    if ((paramString != null) && (getyygyDir() != null))
    {
      paramString = new File(this.yygyPath, paramString);
      if (paramString.exists()) {}
      while (paramString.mkdir()) {
        return paramString;
      }
    }
    return null;
  }
  
  public String getFileResourcePath(String paramString1, String paramString2)
  {
    return this.yygyPath + File.separator + "10185912" + File.separator + paramString1 + File.separator + paramString2;
  }
  
  public String getFoldPath(String paramString)
  {
    paramString = getResourceDir() + File.separator + paramString + File.separator;
    File localFile = new File(paramString);
    if (!localFile.exists()) {
      localFile.mkdir();
    }
    return paramString;
  }
  
  public String getFolderResourcePath(String paramString)
  {
    return this.yygyPath + File.separator + "10185912" + File.separator + paramString + File.separator;
  }
  
  public File getResourceDir()
  {
    if ((this.mClientFlag != null) && (getyygyDir() != null))
    {
      File localFile = new File(this.yygyPath, this.mClientFlag);
      if (localFile.exists()) {}
      while (localFile.mkdir()) {
        return localFile;
      }
    }
    return null;
  }
  
  public String getmClientFlag()
  {
    return this.mClientFlag;
  }
  
  public File getyygyDir()
  {
    if (this.yygyPath == null) {
      generateyygyPath();
    }
    if (this.yygyPath != null)
    {
      File localFile = new File(this.yygyPath);
      if (localFile.exists()) {}
      while (localFile.mkdir()) {
        return localFile;
      }
    }
    return null;
  }
  
  public String getyygyPath()
  {
    return this.yygyPath;
  }
  
  public void setmClientFlag(String paramString)
  {
    this.mClientFlag = paramString;
  }
  
  public void setyygyPath(String paramString)
  {
    this.yygyPath = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/base/YygyResourceDirGenerator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */