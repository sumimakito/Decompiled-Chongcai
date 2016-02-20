package com.tencent.stat.a;

import java.util.Arrays;
import java.util.Properties;

public class c
{
  String a;
  String[] b;
  Properties c = null;
  
  public c() {}
  
  public c(String paramString, String[] paramArrayOfString, Properties paramProperties)
  {
    this.a = paramString;
    this.b = paramArrayOfString;
    this.c = paramProperties;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    int i;
    label81:
    do
    {
      return true;
      if (!(paramObject instanceof c)) {
        break;
      }
      paramObject = (c)paramObject;
      if ((this.a.equals(((c)paramObject).a)) && (Arrays.equals(this.b, ((c)paramObject).b))) {}
      for (i = 1;; i = 0)
      {
        if (this.c == null) {
          break label81;
        }
        if ((i != 0) && (this.c.equals(((c)paramObject).c))) {
          break;
        }
        return false;
      }
    } while ((i != 0) && (((c)paramObject).c == null));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    if (this.a != null) {
      j = this.a.hashCode();
    }
    int i = j;
    if (this.b != null) {
      i = j ^ Arrays.hashCode(this.b);
    }
    j = i;
    if (this.c != null) {
      j = i ^ this.c.hashCode();
    }
    return j;
  }
  
  public String toString()
  {
    String str3 = this.a;
    String str1 = "";
    if (this.b != null)
    {
      str1 = this.b[0];
      int i = 1;
      while (i < this.b.length)
      {
        str1 = str1 + "," + this.b[i];
        i += 1;
      }
      str1 = "[" + str1 + "]";
    }
    String str2 = str1;
    if (this.c != null) {
      str2 = str1 + this.c.toString();
    }
    return str3 + str2;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */