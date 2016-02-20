package com.tencent.stat.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

public class d
{
  public static File a(String paramString)
  {
    paramString = new File(paramString);
    if (paramString.exists()) {
      return paramString;
    }
    if (!paramString.getParentFile().exists()) {
      a(paramString.getParentFile().getAbsolutePath());
    }
    paramString.mkdir();
    return paramString;
  }
  
  public static List<String> a(File paramFile)
  {
    paramFile = new BufferedReader(new FileReader(paramFile));
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      String str = paramFile.readLine();
      if (str == null) {
        return localArrayList;
      }
      localArrayList.add(str.trim());
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/common/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */