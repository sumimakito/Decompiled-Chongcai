package com.tencent.open.web.security;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.tencent.open.a;
import com.tencent.open.a.a;
import com.tencent.open.a.b;
import com.tencent.open.a.f;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class b
  extends a
{
  public void a(String paramString1, String paramString2, List<String> paramList, a.a parama)
  {
    f.b("openSDK_LOG.SecureJs", "-->getResult, objectName: " + paramString1 + " | methodName: " + paramString2);
    int j = paramList.size();
    int i = 0;
    for (;;)
    {
      if (i < j) {
        try
        {
          paramList.set(i, URLDecoder.decode((String)paramList.get(i), "UTF-8"));
          i += 1;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          for (;;)
          {
            localUnsupportedEncodingException.printStackTrace();
          }
        }
      }
    }
    paramString1 = (a.b)this.a.get(paramString1);
    if (paramString1 != null)
    {
      f.b("openSDK_LOG.SecureJs", "-->handler != null");
      paramString1.call(paramString2, paramList, parama);
    }
    do
    {
      return;
      f.b("openSDK_LOG.SecureJs", "-->handler == null");
    } while (parama == null);
    parama.a();
  }
  
  public boolean a(WebView paramWebView, String paramString)
  {
    f.b("openSDK_LOG.SecureJs", "-->canHandleUrl---url = " + paramString);
    if (paramString == null) {
      return false;
    }
    if (!Uri.parse(paramString).getScheme().equals("jsbridge")) {
      return false;
    }
    ArrayList localArrayList = new ArrayList(Arrays.asList((paramString + "/#").split("/")));
    if (localArrayList.size() < 7) {
      return false;
    }
    String str1 = (String)localArrayList.get(2);
    String str2 = (String)localArrayList.get(3);
    String str3 = (String)localArrayList.get(4);
    String str4 = (String)localArrayList.get(5);
    f.b("openSDK_LOG.SecureJs", "-->canHandleUrl, objectName: " + str1 + " | methodName: " + str2 + " | snStr: " + str3);
    if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str3))) {
      return false;
    }
    try
    {
      long l = Long.parseLong(str3);
      paramWebView = new c(paramWebView, l, paramString, str4);
      a(str1, str2, localArrayList.subList(6, localArrayList.size() - 1), paramWebView);
      return true;
    }
    catch (Exception paramWebView) {}
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/web/security/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */