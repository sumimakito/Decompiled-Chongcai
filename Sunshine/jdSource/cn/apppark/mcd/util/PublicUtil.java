package cn.apppark.mcd.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.LocalActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.PermissionInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.imge.ImgUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.vertify.network.request.WebServiceRequest;
import com.google.gson.Gson;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m;
import n;
import org.json.JSONException;
import org.json.JSONObject;

public class PublicUtil
{
  private static Toast mToast;
  
  public static double calculateFileSize(String paramString)
  {
    double d2 = 0.0D;
    paramString = new File(paramString);
    double d1 = d2;
    if (paramString.exists())
    {
      if (!paramString.isFile()) {
        break label37;
      }
      d1 = 0.0D + paramString.length();
    }
    label37:
    int j;
    int i;
    do
    {
      return d1;
      paramString = paramString.listFiles();
      j = paramString.length;
      i = 0;
      d1 = d2;
    } while (i >= j);
    if (paramString[i].isDirectory()) {}
    for (d2 += calculateFileSize(paramString[i].getPath());; d2 += paramString[i].length())
    {
      i += 1;
      break;
    }
  }
  
  public static boolean checkEmail(String paramString)
  {
    return Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$").matcher(paramString).matches();
  }
  
  public static void checkIllegal()
  {
    new Thread(new m()).start();
  }
  
  public static boolean checkPassword(String paramString)
  {
    return Pattern.compile("^[0-9a-zA-z]{6,12}$").matcher(paramString).matches();
  }
  
  public static boolean checkResult(String paramString1, String paramString2, String paramString3)
  {
    if (WebServiceRequest.WEB_ERROR.equals(paramString1)) {
      Toast.makeText(HQCHApplication.mainActivity, paramString2, 0).show();
    }
    for (;;)
    {
      return false;
      Object localObject;
      try
      {
        localObject = new JSONObject(paramString1);
        paramString1 = ((JSONObject)localObject).getString("retFlag");
        localObject = ((JSONObject)localObject).getString("retMsg");
        if (!"1".equals(paramString1)) {
          break label75;
        }
        initToast(paramString3, 0);
        return true;
      }
      catch (JSONException paramString1)
      {
        initToast(paramString2, 0);
        paramString1.printStackTrace();
      }
      continue;
      label75:
      initToast((String)localObject, 1);
    }
  }
  
  public static boolean chekMobilePhone(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return Pattern.compile("((\\d{10,11})|^((\\d{10,11})|(\\d{4}|\\d{3})-(\\d{7,8})|(\\d{4}|\\d{3})-(\\d{7,8})-(\\d{4}|\\d{3}|\\d{2}|\\d{1})|(\\d{7,8})-(\\d{4}|\\d{3}|\\d{2}|\\d{1}))$)").matcher(paramString).matches();
  }
  
  public static boolean chekPhone(String paramString)
  {
    return Pattern.compile("((\\d{11})|^((\\d{7,8})|(\\d{4}|\\d{3})-(\\d{7,8})|(\\d{4}|\\d{3})-(\\d{7,8})-(\\d{4}|\\d{3}|\\d{2}|\\d{1})|(\\d{7,8})-(\\d{4}|\\d{3}|\\d{2}|\\d{1}))$)").matcher(paramString).matches();
  }
  
  public static void closeKeyBoard(Activity paramActivity)
  {
    ((InputMethodManager)paramActivity.getSystemService("input_method")).hideSoftInputFromWindow(paramActivity.getCurrentFocus().getWindowToken(), 0);
  }
  
  public static void closeKeyBoardView(Activity paramActivity, View paramView)
  {
    ((InputMethodManager)paramActivity.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 2);
  }
  
  public static Dialog createLoadingDialog(String paramString, Context paramContext)
  {
    View localView = LayoutInflater.from(paramContext).inflate(2130903088, null);
    paramContext = (LinearLayout)localView.findViewById(2131362177);
    ((TextView)localView.findViewById(2131362179)).setText(paramString);
    paramString = new Dialog(HQCHApplication.mainActivity, 2131099665);
    paramString.setContentView(paramContext, new LinearLayout.LayoutParams(-1, -1));
    return paramString;
  }
  
  public static int dateCompare(String paramString1, String paramString2)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    Calendar localCalendar1 = Calendar.getInstance();
    Calendar localCalendar2 = Calendar.getInstance();
    try
    {
      localCalendar1.setTime(localSimpleDateFormat.parse(paramString1));
      localCalendar2.setTime(localSimpleDateFormat.parse(paramString2));
      return localCalendar1.getTime().compareTo(localCalendar2.getTime());
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        paramString1.printStackTrace();
      }
    }
  }
  
  private static boolean deleteDir(File paramFile)
  {
    if (paramFile.isDirectory())
    {
      String[] arrayOfString = paramFile.list();
      int i = 0;
      while (i < arrayOfString.length)
      {
        if (!deleteDir(new File(paramFile, arrayOfString[i]))) {
          return false;
        }
        i += 1;
      }
    }
    return paramFile.delete();
  }
  
  public static void deleteFiles(String paramString)
  {
    File localFile = new File(paramString);
    if (localFile.exists())
    {
      if (localFile.isFile())
      {
        localFile.delete();
        System.out.println(paramString);
      }
    }
    else {
      return;
    }
    paramString = localFile.listFiles();
    int j = paramString.length;
    int i = 0;
    if (i < j)
    {
      if (paramString[i].isDirectory()) {
        deleteFiles(paramString[i].getPath());
      }
      for (;;)
      {
        i += 1;
        break;
        paramString[i].delete();
      }
    }
    localFile.delete();
  }
  
  public static boolean destroyAct(String paramString, LocalActivityManager paramLocalActivityManager)
  {
    boolean bool = false;
    if (paramLocalActivityManager != null) {
      paramLocalActivityManager.destroyActivity(paramString, false);
    }
    try
    {
      Object localObject1 = LocalActivityManager.class.getDeclaredField("mActivities");
      if (localObject1 != null)
      {
        ((Field)localObject1).setAccessible(true);
        localObject1 = (Map)((Field)localObject1).get(paramLocalActivityManager);
        if (localObject1 != null) {
          ((Map)localObject1).remove(paramString);
        }
        localObject1 = LocalActivityManager.class.getDeclaredField("mActivityArray");
        if (localObject1 != null)
        {
          ((Field)localObject1).setAccessible(true);
          paramLocalActivityManager = (ArrayList)((Field)localObject1).get(paramLocalActivityManager);
          if (paramLocalActivityManager != null)
          {
            localObject1 = paramLocalActivityManager.iterator();
            while (((Iterator)localObject1).hasNext())
            {
              Object localObject2 = ((Iterator)localObject1).next();
              Field localField = localObject2.getClass().getDeclaredField("id");
              if (localField != null)
              {
                localField.setAccessible(true);
                if (paramString.equals((String)localField.get(localObject2))) {
                  paramLocalActivityManager.remove(localObject2);
                }
              }
            }
          }
        }
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
    bool = true;
    return bool;
  }
  
  public static int dip2px(float paramFloat)
  {
    return (int)(YYGYContants.dpiScaleUnite * paramFloat + 0.5F);
  }
  
  public static void editSendSms(Context paramContext, String paramString1, String paramString2)
  {
    paramString1 = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + paramString1));
    paramString1.putExtra("sms_body", paramString2);
    paramContext.startActivity(paramString1);
  }
  
  public static String formatSizeStr(double paramDouble)
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = " Bytes";
    arrayOfString[1] = " Kb";
    arrayOfString[2] = " Mb";
    int j = arrayOfString.length;
    int i = 0;
    while ((i < j) && (paramDouble >= 1024.0D))
    {
      paramDouble /= 1024.0D;
      i += 1;
    }
    return String.format("%.2f", new Object[] { Double.valueOf(paramDouble) }) + arrayOfString[i];
  }
  
  public static String getExternalDestination()
  {
    if ("mounted".equals(Environment.getExternalStorageState()))
    {
      if (Environment.getExternalStorageDirectory().canWrite()) {
        return Environment.getExternalStorageDirectory().getPath() + "/yygy";
      }
    }
    else
    {
      File localFile = new File("mnt/emmc/yygy");
      if (localFile.isDirectory()) {
        return localFile.getPath();
      }
    }
    return null;
  }
  
  public static String getExternalStoragePath()
  {
    if ("mounted".equals(Environment.getExternalStorageState()))
    {
      if (Environment.getExternalStorageDirectory().canWrite()) {
        return Environment.getExternalStorageDirectory().getPath();
      }
    }
    else
    {
      File localFile = new File("mnt" + File.separator + "emmc" + File.separator);
      if (localFile.isDirectory()) {
        return localFile.toString();
      }
    }
    return null;
  }
  
  public static String getFormatTime()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat();
    localSimpleDateFormat.applyPattern("yyyy-MM-dd HH:mm:ss");
    localSimpleDateFormat.format(new Date());
    return localSimpleDateFormat.format(new Date());
  }
  
  public static String getMD5Str(String paramString)
  {
    Object localObject = null;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localObject = localMessageDigest;
      localMessageDigest.reset();
      localObject = localMessageDigest;
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      localObject = localMessageDigest;
    }
    catch (Exception paramString)
    {
      int i;
      for (;;) {}
    }
    paramString = ((MessageDigest)localObject).digest();
    localObject = new StringBuffer();
    i = 0;
    if (i < paramString.length)
    {
      if (Integer.toHexString(paramString[i] & 0xFF).length() == 1) {
        ((StringBuffer)localObject).append("0").append(Integer.toHexString(paramString[i] & 0xFF));
      }
      for (;;)
      {
        i += 1;
        break;
        ((StringBuffer)localObject).append(Integer.toHexString(paramString[i] & 0xFF));
      }
    }
    return ((StringBuffer)localObject).substring(8, 24).toString().toUpperCase();
  }
  
  public static String getMacAddress(Context paramContext)
  {
    paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
    if (StringUtil.isNull(paramContext.getMacAddress())) {
      return "000000";
    }
    return paramContext.getMacAddress();
  }
  
  public static boolean getPermisson(Context paramContext, String paramString)
  {
    boolean bool2 = false;
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      paramContext = localPackageManager.getPackageInfo(localPackageManager.getPackageInfo(paramContext.getPackageName(), 0).packageName, 4096).requestedPermissions;
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < paramContext.length)
        {
          bool1 = paramContext[i].equals(paramString);
          if (bool1) {
            bool1 = true;
          }
        }
        else
        {
          return bool1;
        }
        i += 1;
      }
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  @SuppressLint({"NewApi"})
  public static String getPicPath(Activity paramActivity, Uri paramUri)
  {
    if ((paramUri != null) && (Build.VERSION.SDK_INT >= 19) && (DocumentsContract.isDocumentUri(paramActivity.getBaseContext(), paramUri))) {
      return ImgUtil.getPath(paramActivity.getBaseContext(), paramUri);
    }
    paramActivity = paramActivity.getContentResolver().query(paramUri, new String[] { "_data" }, null, null, null);
    int i = paramActivity.getColumnIndexOrThrow("_data");
    paramActivity.moveToFirst();
    paramUri = paramActivity.getString(i);
    paramActivity.close();
    return paramUri;
  }
  
  public static String getShieldString(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (chekMobilePhone(paramString))
      {
        str = paramString.substring(0, 3);
        paramString = paramString.substring(8, paramString.length());
        str = str + "*****" + paramString;
      }
    }
    return str;
  }
  
  public static String getStringFromAssets(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getResources().getAssets().open(paramString);
      paramString = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte['Ѐ'];
      for (;;)
      {
        int i = paramContext.read(arrayOfByte);
        if (-1 == i) {
          break;
        }
        paramString.write(arrayOfByte, 0, i);
      }
      paramContext = paramString.toString();
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      return null;
    }
    return paramContext;
  }
  
  public static String getVersionCode(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 16384);
      if (paramContext == null) {
        return "";
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        paramContext = null;
      }
    }
    return paramContext.versionCode;
  }
  
  public static String getVersionName(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 16384);
      if (paramContext == null) {
        return "";
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        paramContext = null;
      }
    }
    return paramContext.versionName;
  }
  
  public static boolean hasPermission(Context paramContext, String paramString)
  {
    boolean bool2 = false;
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      paramContext = localPackageManager.getPackageInfo(localPackageManager.getPackageInfo(paramContext.getPackageName(), 0).packageName, 4096).requestedPermissions;
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < paramContext.length)
        {
          String str = paramContext[i];
          localPackageManager.getPermissionGroupInfo(localPackageManager.getPermissionInfo(str, 0).group, 0);
          bool1 = paramString.equals(str);
          if (bool1) {
            bool1 = true;
          }
        }
        else
        {
          return bool1;
        }
        i += 1;
      }
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
  }
  
  public static void initToast(String paramString, int paramInt)
  {
    Toast.makeText(HQCHApplication.mainActivity, paramString, paramInt).show();
  }
  
  public static void makeEventToast(Context paramContext, int paramInt)
  {
    Toast.makeText(paramContext, paramInt, 0).show();
  }
  
  public static void makeEventToast(Context paramContext, String paramString)
  {
    Toast.makeText(paramContext, paramString, 0).show();
  }
  
  public static String map2Json(Map<String, Object> paramMap)
  {
    return new Gson().toJson(paramMap);
  }
  
  public static void openKeyBoard(Activity paramActivity)
  {
    ((InputMethodManager)paramActivity.getSystemService("input_method")).hideSoftInputFromWindow(paramActivity.getCurrentFocus().getWindowToken(), 2);
  }
  
  public static void openKeyBoardView(Activity paramActivity, View paramView)
  {
    ((InputMethodManager)paramActivity.getSystemService("input_method")).showSoftInput(paramView, 2);
  }
  
  public static void out(String paramString)
  {
    if (HQCHApplication.DEBUG) {
      System.out.println(paramString);
    }
  }
  
  public static String timeFomat(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat();
    localSimpleDateFormat.applyPattern(paramString);
    return localSimpleDateFormat.format(new Date());
  }
  
  public static final void toastMessage(Activity paramActivity, String paramString)
  {
    paramActivity.runOnUiThread(new n(paramActivity, paramString));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/PublicUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */