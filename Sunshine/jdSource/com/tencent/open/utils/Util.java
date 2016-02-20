package com.tencent.open.utils;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import com.tencent.open.a.f;
import com.tencent.open.b.a;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONException;
import org.json.JSONObject;

public class Util
{
  private static final String a = "openSDK_LOG." + Util.class.getName();
  private static String b = "";
  private static String c = "";
  private static String d = "";
  private static String e = "";
  private static int f = -1;
  private static String g;
  private static boolean h = true;
  private static String i = "0123456789ABCDEF";
  
  private static char a(int paramInt)
  {
    paramInt &= 0xF;
    if (paramInt < 10) {
      return (char)(paramInt + 48);
    }
    return (char)(paramInt - 10 + 97);
  }
  
  private static String a(HttpResponse paramHttpResponse)
    throws IllegalStateException, IOException
  {
    Object localObject = paramHttpResponse.getEntity().getContent();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramHttpResponse = paramHttpResponse.getFirstHeader("Content-Encoding");
    if ((paramHttpResponse != null) && (paramHttpResponse.getValue().toLowerCase().indexOf("gzip") > -1)) {}
    for (paramHttpResponse = new GZIPInputStream((InputStream)localObject);; paramHttpResponse = (HttpResponse)localObject)
    {
      localObject = new byte['Ȁ'];
      for (;;)
      {
        int j = paramHttpResponse.read((byte[])localObject);
        if (j == -1) {
          break;
        }
        localByteArrayOutputStream.write((byte[])localObject, 0, j);
      }
      return new String(localByteArrayOutputStream.toByteArray(), "UTF-8");
    }
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(paramString1, paramString2));
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.addFlags(1073741824);
    localIntent.addFlags(268435456);
    localIntent.setData(Uri.parse(paramString3));
    paramContext.startActivity(localIntent);
  }
  
  private static boolean a(Context paramContext)
  {
    boolean bool2 = false;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.tencent.mtt", 64);
      Object localObject = paramContext.versionName;
      boolean bool1 = bool2;
      if (SystemUtils.compareVersion((String)localObject, "4.3") >= 0)
      {
        bool1 = bool2;
        if (!((String)localObject).startsWith("4.4"))
        {
          localObject = paramContext.signatures;
          bool1 = bool2;
          if (localObject == null) {}
        }
      }
      try
      {
        paramContext = MessageDigest.getInstance("MD5");
        paramContext.update(localObject[0].toByteArray());
        localObject = toHexString(paramContext.digest());
        paramContext.reset();
        boolean bool3 = ((String)localObject).equals("d8391a394d4a179e6fe7bdb8a301258b");
        bool1 = bool2;
        if (bool3) {
          bool1 = true;
        }
        return bool1;
      }
      catch (NoSuchAlgorithmException paramContext)
      {
        f.e(a, "isQQBrowerAvailable has exception: " + paramContext.getMessage());
        return false;
      }
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
  }
  
  public static boolean checkNetWork(Context paramContext)
  {
    boolean bool2 = false;
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    boolean bool1;
    if (paramContext == null) {
      bool1 = true;
    }
    do
    {
      return bool1;
      paramContext = paramContext.getAllNetworkInfo();
      bool1 = bool2;
    } while (paramContext == null);
    int j = 0;
    for (;;)
    {
      bool1 = bool2;
      if (j >= paramContext.length) {
        break;
      }
      if (paramContext[j].isConnectedOrConnecting()) {
        return true;
      }
      j += 1;
    }
  }
  
  public static Bundle composeHaboCgiReportParams(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("platform", "1");
    localBundle.putString("result", paramString1);
    localBundle.putString("code", paramString2);
    localBundle.putString("tmcost", paramString3);
    localBundle.putString("rate", paramString4);
    localBundle.putString("cmd", paramString5);
    localBundle.putString("uin", paramString6);
    localBundle.putString("appid", paramString7);
    localBundle.putString("share_type", paramString8);
    localBundle.putString("detail", paramString9);
    localBundle.putString("os_ver", Build.VERSION.RELEASE);
    localBundle.putString("network", a.a(Global.getContext()));
    localBundle.putString("apn", a.b(Global.getContext()));
    localBundle.putString("model_name", Build.MODEL);
    localBundle.putString("sdk_ver", "2.9.1.lite");
    localBundle.putString("packagename", Global.getPackageName());
    localBundle.putString("app_ver", getAppVersionName(Global.getContext(), Global.getPackageName()));
    return localBundle;
  }
  
  public static Bundle composeViaReportParams(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return composeViaReportParams(paramString1, paramString3, paramString4, paramString2, paramString5, paramString6, "", "", "", "", "", "");
  }
  
  public static Bundle composeViaReportParams(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("openid", paramString1);
    localBundle.putString("report_type", paramString2);
    localBundle.putString("act_type", paramString3);
    localBundle.putString("via", paramString4);
    localBundle.putString("app_id", paramString5);
    localBundle.putString("result", paramString6);
    localBundle.putString("type", paramString7);
    localBundle.putString("login_status", paramString8);
    localBundle.putString("need_user_auth", paramString9);
    localBundle.putString("to_uin", paramString10);
    localBundle.putString("call_source", paramString11);
    localBundle.putString("to_type", paramString12);
    return localBundle;
  }
  
  public static Bundle decodeUrl(String paramString)
  {
    int j = 0;
    Bundle localBundle = new Bundle();
    localObject = localBundle;
    if (paramString != null) {
      try
      {
        paramString = paramString.split("&");
        int k = paramString.length;
        for (;;)
        {
          localObject = localBundle;
          if (j >= k) {
            break;
          }
          localObject = paramString[j].split("=");
          if (localObject.length == 2) {
            localBundle.putString(URLDecoder.decode(localObject[0]), URLDecoder.decode(localObject[1]));
          }
          j += 1;
        }
        return (Bundle)localObject;
      }
      catch (Exception paramString)
      {
        localObject = null;
      }
    }
  }
  
  public static JSONObject decodeUrlToJson(JSONObject paramJSONObject, String paramString)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (paramJSONObject == null) {
      localJSONObject = new JSONObject();
    }
    if (paramString != null)
    {
      paramJSONObject = paramString.split("&");
      int k = paramJSONObject.length;
      int j = 0;
      for (;;)
      {
        if (j < k)
        {
          paramString = paramJSONObject[j].split("=");
          if (paramString.length == 2) {}
          try
          {
            localJSONObject.put(URLDecoder.decode(paramString[0]), URLDecoder.decode(paramString[1]));
            j += 1;
          }
          catch (JSONException paramString)
          {
            for (;;)
            {
              f.e(a, "decodeUrlToJson has exception: " + paramString.getMessage());
            }
          }
        }
      }
    }
    return localJSONObject;
  }
  
  public static String encodePostBody(Bundle paramBundle, String paramString)
  {
    if (paramBundle == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int k = paramBundle.size();
    Iterator localIterator = paramBundle.keySet().iterator();
    int j = -1;
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      j += 1;
      Object localObject = paramBundle.get(str);
      if ((localObject instanceof String))
      {
        localStringBuilder.append("Content-Disposition: form-data; name=\"" + str + "\"" + "\r\n" + "\r\n" + (String)localObject);
        if (j < k - 1) {
          localStringBuilder.append("\r\n--" + paramString + "\r\n");
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String encodeUrl(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    int j = 1;
    while (localIterator.hasNext())
    {
      Object localObject1 = (String)localIterator.next();
      Object localObject2 = paramBundle.get((String)localObject1);
      if (((localObject2 instanceof String)) || ((localObject2 instanceof String[]))) {
        if ((localObject2 instanceof String[]))
        {
          int k;
          if (j != 0)
          {
            j = 0;
            localStringBuilder.append(URLEncoder.encode((String)localObject1) + "=");
            localObject1 = paramBundle.getStringArray((String)localObject1);
            if (localObject1 == null) {
              break label207;
            }
            k = 0;
            label132:
            if (k >= localObject1.length) {
              break label207;
            }
            if (k != 0) {
              break label173;
            }
            localStringBuilder.append(URLEncoder.encode(localObject1[k]));
          }
          for (;;)
          {
            k += 1;
            break label132;
            localStringBuilder.append("&");
            break;
            label173:
            localStringBuilder.append(URLEncoder.encode("," + localObject1[k]));
          }
        }
        else
        {
          label207:
          if (j != 0) {
            j = 0;
          }
          for (;;)
          {
            localStringBuilder.append(URLEncoder.encode((String)localObject1) + "=" + URLEncoder.encode(paramBundle.getString((String)localObject1)));
            break;
            localStringBuilder.append("&");
          }
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String encrypt(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(getBytesUTF8(paramString));
      byte[] arrayOfByte = ((MessageDigest)localObject).digest();
      localObject = paramString;
      if (arrayOfByte != null)
      {
        localObject = new StringBuilder();
        int k = arrayOfByte.length;
        int j = 0;
        while (j < k)
        {
          int m = arrayOfByte[j];
          ((StringBuilder)localObject).append(a(m >>> 4));
          ((StringBuilder)localObject).append(a(m));
          j += 1;
        }
        localObject = ((StringBuilder)localObject).toString();
      }
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      f.e(a, "encrypt has exception: " + localNoSuchAlgorithmException.getMessage());
    }
    return paramString;
  }
  
  public static boolean fileExists(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = new File(paramString);
    } while ((paramString == null) || (!paramString.exists()));
    return true;
  }
  
  public static String getAppVersion(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      paramContext = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      f.e(a, "getAppVersion error" + paramContext.getMessage());
    }
    return "";
  }
  
  public static String getAppVersionName(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      return "";
    }
    getPackageInfo(paramContext, paramString);
    return b;
  }
  
  public static final String getApplicationLable(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo());
      if (paramContext != null) {
        return paramContext.toString();
      }
    }
    return null;
  }
  
  public static byte[] getBytesUTF8(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString) {}
    return null;
  }
  
  public static String getLocation(Context paramContext)
  {
    if (paramContext == null) {
      return "";
    }
    try
    {
      paramContext = (LocationManager)paramContext.getSystemService("location");
      Object localObject = new Criteria();
      ((Criteria)localObject).setCostAllowed(false);
      ((Criteria)localObject).setAccuracy(2);
      localObject = paramContext.getBestProvider((Criteria)localObject, true);
      if (localObject != null)
      {
        paramContext = paramContext.getLastKnownLocation((String)localObject);
        if (paramContext == null) {
          return "";
        }
        double d1 = paramContext.getLatitude();
        double d2 = paramContext.getLongitude();
        g = d1 + "*" + d2;
        paramContext = g;
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      f.b("getLocation", "getLocation>>>", paramContext);
    }
    return "";
  }
  
  public static void getPackageInfo(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      return;
    }
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      c = paramContext.versionName;
      b = c.substring(0, c.lastIndexOf('.'));
      e = c.substring(c.lastIndexOf('.') + 1, c.length());
      f = paramContext.versionCode;
      return;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      f.e(a, "getPackageInfo has exception: " + paramContext.getMessage());
      return;
    }
    catch (Exception paramContext)
    {
      f.e(a, "getPackageInfo has exception: " + paramContext.getMessage());
    }
  }
  
  public static String getQUA3(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      return "";
    }
    d = getAppVersionName(paramContext, paramString);
    return d;
  }
  
  public static String getUserIp()
  {
    try
    {
      InetAddress localInetAddress;
      do
      {
        localObject = NetworkInterface.getNetworkInterfaces();
        Enumeration localEnumeration;
        while (!localEnumeration.hasMoreElements())
        {
          if ((localObject == null) || (!((Enumeration)localObject).hasMoreElements())) {
            break;
          }
          localEnumeration = ((NetworkInterface)((Enumeration)localObject).nextElement()).getInetAddresses();
        }
        localInetAddress = (InetAddress)localEnumeration.nextElement();
      } while (localInetAddress.isLoopbackAddress());
      Object localObject = localInetAddress.getHostAddress().toString();
      return (String)localObject;
    }
    catch (SocketException localSocketException)
    {
      logd("Tencent-Util", localSocketException.toString());
    }
    return "";
  }
  
  public static String getVersionName(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      return "";
    }
    getPackageInfo(paramContext, paramString);
    return c;
  }
  
  public static boolean hasSDCard()
  {
    File localFile = null;
    if (Environment.getExternalStorageState().equals("mounted")) {
      localFile = Environment.getExternalStorageDirectory();
    }
    return localFile != null;
  }
  
  public static String hexToString(String paramString)
  {
    int j = 0;
    String str = paramString;
    if ("0x".equals(paramString.substring(0, 2))) {
      str = paramString.substring(2);
    }
    paramString = new byte[str.length() / 2];
    for (;;)
    {
      if (j < paramString.length) {
        try
        {
          paramString[j] = ((byte)(Integer.parseInt(str.substring(j * 2, j * 2 + 2), 16) & 0xFF));
          j += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            f.e(a, "hexToString has exception: " + localException.getMessage());
          }
        }
      }
    }
    try
    {
      paramString = new String(paramString, "utf-8");
      return paramString;
    }
    catch (Exception paramString)
    {
      f.e(a, "hexToString has exception: " + paramString.getMessage());
    }
    return str;
  }
  
  public static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static boolean isMobileQQSupportShare(Context paramContext)
  {
    boolean bool = false;
    paramContext = paramContext.getPackageManager();
    try
    {
      int j = SystemUtils.compareVersion(paramContext.getPackageInfo("com.tencent.mobileqq", 0).versionName, "4.1");
      if (j >= 0) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      f.b("checkMobileQQ", "error");
    }
    return false;
  }
  
  public static boolean isNumeric(String paramString)
  {
    return Pattern.compile("[0-9]*").matcher(paramString).matches();
  }
  
  public static final boolean isValidPath(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = new File(paramString);
    } while ((paramString == null) || (!paramString.exists()));
    return true;
  }
  
  public static final boolean isValidUrl(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.startsWith("http://")) && (!paramString.startsWith("https://"))) {
      return false;
    }
    return true;
  }
  
  public static void logd(String paramString1, String paramString2)
  {
    if (h) {
      f.b(paramString1, paramString2);
    }
  }
  
  public static boolean openBrowser(Context paramContext, String paramString)
  {
    try
    {
      bool = a(paramContext);
      if (bool) {}
      try
      {
        a(paramContext, "com.tencent.mtt", "com.tencent.mtt.MainActivity", paramString);
      }
      catch (Exception localException1) {}
      a(paramContext, "com.android.browser", "com.android.browser.BrowserActivity", paramString);
    }
    catch (Exception localException5)
    {
      for (;;)
      {
        boolean bool = false;
      }
    }
    if (bool) {
      try
      {
        a(paramContext, "com.android.browser", "com.android.browser.BrowserActivity", paramString);
      }
      catch (Exception localException2)
      {
        try
        {
          a(paramContext, "com.google.android.browser", "com.android.browser.BrowserActivity", paramString);
        }
        catch (Exception localException3)
        {
          try
          {
            a(paramContext, "com.android.chrome", "com.google.android.apps.chrome.Main", paramString);
          }
          catch (Exception paramContext)
          {
            return false;
          }
        }
      }
    } else {
      try
      {
        a(paramContext, "com.google.android.browser", "com.android.browser.BrowserActivity", paramString);
      }
      catch (Exception localException4)
      {
        try
        {
          a(paramContext, "com.android.chrome", "com.google.android.apps.chrome.Main", paramString);
        }
        catch (Exception paramContext)
        {
          return false;
        }
      }
    }
    return true;
  }
  
  public static int parseIntValue(String paramString)
  {
    return parseIntValue(paramString, 0);
  }
  
  public static int parseIntValue(String paramString, int paramInt)
  {
    try
    {
      int j = Integer.parseInt(paramString);
      return j;
    }
    catch (Exception paramString) {}
    return paramInt;
  }
  
  public static JSONObject parseJson(String paramString)
    throws JSONException
  {
    String str = paramString;
    if (paramString.equals("false")) {
      str = "{value : false}";
    }
    paramString = str;
    if (str.equals("true")) {
      paramString = "{value : true}";
    }
    str = paramString;
    if (paramString.contains("allback(")) {
      str = paramString.replaceFirst("[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z", "$1").trim();
    }
    paramString = str;
    if (str.contains("online[0]=")) {
      paramString = "{online:" + str.charAt(str.length() - 2) + "}";
    }
    return new JSONObject(paramString);
  }
  
  public static Bundle parseUrl(String paramString)
  {
    paramString = paramString.replace("auth://", "http://");
    try
    {
      paramString = new URL(paramString);
      Bundle localBundle = decodeUrl(paramString.getQuery());
      localBundle.putAll(decodeUrl(paramString.getRef()));
      return localBundle;
    }
    catch (MalformedURLException paramString) {}
    return new Bundle();
  }
  
  public static JSONObject parseUrlToJson(String paramString)
  {
    paramString = paramString.replace("auth://", "http://");
    try
    {
      paramString = new URL(paramString);
      JSONObject localJSONObject = decodeUrlToJson(null, paramString.getQuery());
      decodeUrlToJson(localJSONObject, paramString.getRef());
      return localJSONObject;
    }
    catch (MalformedURLException paramString) {}
    return new JSONObject();
  }
  
  public static void reportBernoulli(Context paramContext, String paramString1, long paramLong, String paramString2)
  {
    final Bundle localBundle = new Bundle();
    localBundle.putString("appid_for_getting_config", paramString2);
    localBundle.putString("strValue", paramString2);
    localBundle.putString("nValue", paramString1);
    localBundle.putString("qver", "2.9.1.lite");
    if (paramLong != 0L) {
      localBundle.putLong("elt", paramLong);
    }
    new Thread()
    {
      public void run()
      {
        try
        {
          HttpUtils.openUrl2(this.a, "http://cgi.qplus.com/report/report", "GET", localBundle);
          return;
        }
        catch (Exception localException)
        {
          f.e(Util.a(), "reportBernoulli has exception: " + localException.getMessage());
        }
      }
    }.start();
  }
  
  public static void showAlert(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = new AlertDialog.Builder(paramContext);
    paramContext.setTitle(paramString1);
    paramContext.setMessage(paramString2);
    paramContext.create().show();
  }
  
  public static final String subString(String paramString1, int paramInt, String paramString2, String paramString3)
  {
    int j = 0;
    if (TextUtils.isEmpty(paramString1))
    {
      paramString2 = "";
      return paramString2;
    }
    if (!TextUtils.isEmpty(paramString2)) {}
    for (String str = paramString2;; str = "UTF-8")
    {
      paramString2 = paramString1;
      for (;;)
      {
        int k;
        int m;
        try
        {
          if (paramString1.getBytes(str).length <= paramInt) {
            break;
          }
          k = 0;
          paramString2 = paramString1;
          if (j >= paramString1.length()) {
            break;
          }
          m = paramString1.substring(j, j + 1).getBytes(str).length;
          if (k + m > paramInt)
          {
            paramString2 = paramString1.substring(0, j);
            paramString1 = paramString2;
            paramString2 = paramString1;
          }
        }
        catch (Exception paramString2) {}
        try
        {
          if (!TextUtils.isEmpty(paramString3)) {
            paramString2 = paramString1 + paramString3;
          }
          return paramString2;
        }
        catch (Exception paramString2)
        {
          for (;;) {}
        }
        k += m;
        j += 1;
      }
      System.out.println("StructMsg sSubString error : " + paramString2.getMessage());
      return paramString1;
    }
  }
  
  public static String toHexString(String paramString)
  {
    paramString = getBytesUTF8(paramString);
    StringBuilder localStringBuilder = new StringBuilder(paramString.length * 2);
    int j = 0;
    while (j < paramString.length)
    {
      localStringBuilder.append(i.charAt((paramString[j] & 0xF0) >> 4));
      localStringBuilder.append(i.charAt((paramString[j] & 0xF) >> 0));
      j += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String toHexString(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    int j = 0;
    while (j < paramArrayOfByte.length)
    {
      String str2 = Integer.toString(paramArrayOfByte[j] & 0xFF, 16);
      String str1 = str2;
      if (str2.length() == 1) {
        str1 = "0" + str2;
      }
      localStringBuilder.append(str1);
      j += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static Statistic upload(Context paramContext, String paramString, Bundle paramBundle)
    throws MalformedURLException, IOException, HttpUtils.NetworkUnavailableException, HttpUtils.HttpStatusException
  {
    if (paramContext != null)
    {
      localObject1 = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localObject1 != null)
      {
        localObject1 = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
        if ((localObject1 == null) || (!((NetworkInfo)localObject1).isAvailable())) {
          throw new HttpUtils.NetworkUnavailableException("network unavailable");
        }
      }
    }
    paramBundle = new Bundle(paramBundle);
    Object localObject1 = paramBundle.getString("appid_for_getting_config");
    paramBundle.remove("appid_for_getting_config");
    paramContext = HttpUtils.getHttpClient(paramContext, (String)localObject1, paramString);
    paramString = new HttpPost(paramString);
    localObject1 = new Bundle();
    Object localObject2 = paramBundle.keySet().iterator();
    Object localObject3;
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (String)((Iterator)localObject2).next();
      Object localObject4 = paramBundle.get((String)localObject3);
      if ((localObject4 instanceof byte[])) {
        ((Bundle)localObject1).putByteArray((String)localObject3, (byte[])localObject4);
      }
    }
    paramString.setHeader("Content-Type", "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
    paramString.setHeader("Connection", "Keep-Alive");
    localObject2 = new ByteArrayOutputStream();
    ((ByteArrayOutputStream)localObject2).write(getBytesUTF8("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
    ((ByteArrayOutputStream)localObject2).write(getBytesUTF8(encodePostBody(paramBundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f")));
    if (!((Bundle)localObject1).isEmpty())
    {
      int m = ((Bundle)localObject1).size();
      ((ByteArrayOutputStream)localObject2).write(getBytesUTF8("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
      paramBundle = ((Bundle)localObject1).keySet().iterator();
      j = -1;
      while (paramBundle.hasNext())
      {
        localObject3 = (String)paramBundle.next();
        k = j + 1;
        ((ByteArrayOutputStream)localObject2).write(getBytesUTF8("Content-Disposition: form-data; name=\"" + (String)localObject3 + "\"; filename=\"" + "value.file" + "\"" + "\r\n"));
        ((ByteArrayOutputStream)localObject2).write(getBytesUTF8("Content-Type: application/octet-stream\r\n\r\n"));
        localObject3 = ((Bundle)localObject1).getByteArray((String)localObject3);
        if (localObject3 != null) {
          ((ByteArrayOutputStream)localObject2).write((byte[])localObject3);
        }
        j = k;
        if (k < m - 1)
        {
          ((ByteArrayOutputStream)localObject2).write(getBytesUTF8("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
          j = k;
        }
      }
    }
    ((ByteArrayOutputStream)localObject2).write(getBytesUTF8("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n"));
    paramBundle = ((ByteArrayOutputStream)localObject2).toByteArray();
    int j = paramBundle.length;
    ((ByteArrayOutputStream)localObject2).close();
    paramString.setEntity(new ByteArrayEntity(paramBundle));
    paramContext = paramContext.execute(paramString);
    int k = paramContext.getStatusLine().getStatusCode();
    if (k == 200) {
      return new Statistic(a(paramContext), j + 0);
    }
    throw new HttpUtils.HttpStatusException("http status code error:" + k);
  }
  
  public static class Statistic
  {
    public long reqSize;
    public String response;
    public long rspSize;
    
    public Statistic(String paramString, int paramInt)
    {
      this.response = paramString;
      this.reqSize = paramInt;
      if (this.response != null) {
        this.rspSize = this.response.length();
      }
    }
  }
  
  private static class TBufferedOutputStream
    extends BufferedOutputStream
  {
    private int a = 0;
    
    public TBufferedOutputStream(OutputStream paramOutputStream)
    {
      super();
    }
    
    public int getLength()
    {
      return this.a;
    }
    
    public void write(byte[] paramArrayOfByte)
      throws IOException
    {
      super.write(paramArrayOfByte);
      this.a += paramArrayOfByte.length;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/utils/Util.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */