package org.kobjects.isodate;

import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class IsoDate
{
  public static final int DATE = 1;
  public static final int DATE_TIME = 3;
  public static final int TIME = 2;
  
  public static String dateToString(Date paramDate, int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeZone(TimeZone.getTimeZone("GMT"));
    localCalendar.setTime(paramDate);
    paramDate = new StringBuffer();
    if ((paramInt & 0x1) != 0)
    {
      int i = localCalendar.get(1);
      dd(paramDate, i / 100);
      dd(paramDate, i % 100);
      paramDate.append('-');
      dd(paramDate, localCalendar.get(2) + 0 + 1);
      paramDate.append('-');
      dd(paramDate, localCalendar.get(5));
      if (paramInt == 3) {
        paramDate.append("T");
      }
    }
    if ((paramInt & 0x2) != 0)
    {
      dd(paramDate, localCalendar.get(11));
      paramDate.append(':');
      dd(paramDate, localCalendar.get(12));
      paramDate.append(':');
      dd(paramDate, localCalendar.get(13));
      paramDate.append('.');
      paramInt = localCalendar.get(14);
      paramDate.append((char)(paramInt / 100 + 48));
      dd(paramDate, paramInt % 100);
      paramDate.append('Z');
    }
    return paramDate.toString();
  }
  
  static void dd(StringBuffer paramStringBuffer, int paramInt)
  {
    paramStringBuffer.append((char)(paramInt / 10 + 48));
    paramStringBuffer.append((char)(paramInt % 10 + 48));
  }
  
  public static Date stringToDate(String paramString, int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    int j;
    int i;
    label200:
    int k;
    if ((paramInt & 0x1) != 0)
    {
      localCalendar.set(1, Integer.parseInt(paramString.substring(0, 4)));
      localCalendar.set(2, Integer.parseInt(paramString.substring(5, 7)) - 1 + 0);
      localCalendar.set(5, Integer.parseInt(paramString.substring(8, 10)));
      if ((paramInt != 3) || (paramString.length() < 11))
      {
        localCalendar.set(11, 0);
        localCalendar.set(12, 0);
        localCalendar.set(13, 0);
        localCalendar.set(14, 0);
        return localCalendar.getTime();
      }
      paramString = paramString.substring(11);
      localCalendar.set(11, Integer.parseInt(paramString.substring(0, 2)));
      localCalendar.set(12, Integer.parseInt(paramString.substring(3, 5)));
      localCalendar.set(13, Integer.parseInt(paramString.substring(6, 8)));
      j = 8;
      if ((8 >= paramString.length()) || (paramString.charAt(8) != '.')) {
        break label332;
      }
      i = 0;
      paramInt = 100;
      j += 1;
      k = paramString.charAt(j);
      if ((k >= 48) && (k <= 57)) {
        break label314;
      }
      localCalendar.set(14, i);
      label233:
      if (j < paramString.length())
      {
        if ((paramString.charAt(j) != '+') && (paramString.charAt(j) != '-')) {
          break label343;
        }
        localCalendar.setTimeZone(TimeZone.getTimeZone("GMT" + paramString.substring(j)));
      }
    }
    for (;;)
    {
      return localCalendar.getTime();
      localCalendar.setTime(new Date(0L));
      break;
      label314:
      i += (k - 48) * paramInt;
      paramInt /= 10;
      break label200;
      label332:
      localCalendar.set(14, 0);
      break label233;
      label343:
      if (paramString.charAt(j) != 'Z') {
        break label366;
      }
      localCalendar.setTimeZone(TimeZone.getTimeZone("GMT"));
    }
    label366:
    throw new RuntimeException("illegal time format!");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/isodate/IsoDate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */