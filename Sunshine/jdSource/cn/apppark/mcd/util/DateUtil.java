package cn.apppark.mcd.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil
{
  private static final String FORMAT = "yyyy-MM-dd HH:mm:ss";
  public static final String FORMAT_YEAR = "yyyy-MM-dd";
  
  public static String date2Str(Calendar paramCalendar)
  {
    return date2Str(paramCalendar, null);
  }
  
  public static String date2Str(Calendar paramCalendar, String paramString)
  {
    if (paramCalendar == null) {
      return null;
    }
    return date2Str(paramCalendar.getTime(), paramString);
  }
  
  public static String date2Str(Date paramDate)
  {
    return date2Str(paramDate, null);
  }
  
  public static String date2Str(Date paramDate, String paramString)
  {
    if (paramDate == null) {
      return null;
    }
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() != 0) {}
    }
    else
    {
      str = "yyyy-MM-dd HH:mm:ss";
    }
    return new SimpleDateFormat(str).format(paramDate);
  }
  
  public static String getCurDateStr()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(new Date());
    return localCalendar.get(1) + "-" + (localCalendar.get(2) + 1) + "-" + localCalendar.get(5) + "-" + localCalendar.get(11) + ":" + localCalendar.get(12) + ":" + localCalendar.get(13);
  }
  
  public static String getCurDateStr(String paramString)
  {
    return date2Str(Calendar.getInstance(), paramString);
  }
  
  public static String getDay(long paramLong)
  {
    return new SimpleDateFormat("yyyy-MM-dd").format(Long.valueOf(paramLong));
  }
  
  public static String getMillon(long paramLong)
  {
    return new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(Long.valueOf(paramLong));
  }
  
  public static String getSMillon(long paramLong)
  {
    return new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss-SSS").format(Long.valueOf(paramLong));
  }
  
  public static Calendar str2Calendar(String paramString)
  {
    return str2Calendar(paramString, null);
  }
  
  public static Calendar str2Calendar(String paramString1, String paramString2)
  {
    paramString1 = str2Date(paramString1, paramString2);
    if (paramString1 == null) {
      return null;
    }
    paramString2 = Calendar.getInstance();
    paramString2.setTime(paramString1);
    return paramString2;
  }
  
  public static Date str2Date(String paramString)
  {
    return str2Date(paramString, null);
  }
  
  public static Date str2Date(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0)) {
      return null;
    }
    String str;
    if (paramString2 != null)
    {
      str = paramString2;
      if (paramString2.length() != 0) {}
    }
    else
    {
      str = "yyyy-MM-dd HH:mm:ss";
    }
    try
    {
      paramString1 = new SimpleDateFormat(str).parse(paramString1);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  public static String str2Format(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() > 10) {
        str = paramString.substring(0, 10);
      }
    }
    return str;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/DateUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */