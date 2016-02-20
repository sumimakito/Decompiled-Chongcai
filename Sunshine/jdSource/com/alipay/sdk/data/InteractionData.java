package com.alipay.sdk.data;

import java.util.ArrayList;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

public class InteractionData
{
  public static final String a = "application/octet-stream;binary/octet-stream";
  private Header[] b = null;
  private String c = null;
  private String d = null;
  
  private void a(String paramString)
  {
    this.c = paramString;
  }
  
  private void b(String paramString)
  {
    this.d = paramString;
  }
  
  private Header[] d()
  {
    return this.b;
  }
  
  private void e()
  {
    this.d = null;
    this.c = null;
  }
  
  public final ArrayList a()
  {
    Object localObject;
    if ((this.b == null) || (this.b.length == 0))
    {
      localObject = null;
      return (ArrayList)localObject;
    }
    ArrayList localArrayList = new ArrayList();
    Header[] arrayOfHeader = this.b;
    int j = arrayOfHeader.length;
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localObject = arrayOfHeader[i];
      localArrayList.add(new BasicHeader(((Header)localObject).getName(), ((Header)localObject).getValue()));
      i += 1;
    }
  }
  
  public final void a(Header[] paramArrayOfHeader)
  {
    this.b = paramArrayOfHeader;
  }
  
  public final String b()
  {
    return this.c;
  }
  
  public final String c()
  {
    return this.d;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/data/InteractionData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */