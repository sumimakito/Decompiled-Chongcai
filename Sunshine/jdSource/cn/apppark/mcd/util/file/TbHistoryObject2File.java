package cn.apppark.mcd.util.file;

import android.content.Context;
import cn.apppark.mcd.vo.tieba.TMyHistoryVo;
import java.io.File;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

public class TbHistoryObject2File
{
  private static String historyFileName = "tb_history";
  
  public static boolean clearHistory(Context paramContext, String paramString)
  {
    return writeObject2File(paramContext, new ArrayList(), paramString);
  }
  
  public static boolean delHistory(Context paramContext, int paramInt, String paramString)
  {
    ArrayList localArrayList = readFile2Object(paramContext, paramString);
    if (localArrayList != null) {
      localArrayList.remove(paramInt);
    }
    return writeObject2File(paramContext, localArrayList, paramString);
  }
  
  public static ArrayList<TMyHistoryVo> readFile2Object(Context paramContext, String paramString)
  {
    try
    {
      paramString = new ObjectInputStream(paramContext.openFileInput(historyFileName + paramString));
      paramContext = (ArrayList)paramString.readObject();
      paramString.printStackTrace();
    }
    catch (Exception paramString)
    {
      try
      {
        paramString.close();
        return paramContext;
      }
      catch (Exception paramString)
      {
        for (;;) {}
      }
      paramString = paramString;
      paramContext = null;
    }
    return paramContext;
  }
  
  public static boolean saveHistory(Context paramContext, TMyHistoryVo paramTMyHistoryVo, String paramString)
  {
    ArrayList localArrayList = readFile2Object(paramContext, paramString);
    if (localArrayList == null)
    {
      localArrayList = new ArrayList();
      localArrayList.add(paramTMyHistoryVo);
    }
    for (paramTMyHistoryVo = localArrayList;; paramTMyHistoryVo = localArrayList)
    {
      return writeObject2File(paramContext, paramTMyHistoryVo, paramString);
      int i = 0;
      while (i < localArrayList.size())
      {
        if ((localArrayList.get(i) != null) && (((TMyHistoryVo)localArrayList.get(i)).getTopicId() != null) && (((TMyHistoryVo)localArrayList.get(i)).getTopicId().equals(paramTMyHistoryVo.getTopicId()))) {
          return true;
        }
        i += 1;
      }
      localArrayList.add(paramTMyHistoryVo);
    }
  }
  
  public static boolean writeObject2File(Context paramContext, ArrayList<TMyHistoryVo> paramArrayList, String paramString)
  {
    File localFile = new File(paramContext.getFilesDir() + historyFileName + paramString);
    try
    {
      if (!localFile.exists()) {
        localFile.mkdir();
      }
      paramContext = new ObjectOutputStream(paramContext.openFileOutput(historyFileName + paramString, 0));
      paramContext.writeObject(paramArrayList);
      paramContext.close();
      return true;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/file/TbHistoryObject2File.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */