package cn.apppark.mcd.util.more;

public class StringUtil
{
  public static boolean isNotNull(String paramString)
  {
    return (paramString != null) && (!"".equals(paramString)) && (!"null".equals(paramString));
  }
  
  public static boolean isNotZero(String paramString)
  {
    return (paramString != null) && (!"".equals(paramString)) && (!"null".equals(paramString)) && (!"0".equals(paramString));
  }
  
  public static boolean isNull(String paramString)
  {
    return (paramString == null) || ("".equals(paramString)) || ("null".equals(paramString));
  }
  
  public static boolean isNullWithTrim(String paramString)
  {
    return (paramString == null) || ("".equals(paramString)) || ("null".equals(paramString));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/more/StringUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */