package cn.apppark.vertify;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.Signature;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Toast;
import as;
import at;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.base.ActivityHistoryVo;
import cn.apppark.mcd.widget.DialogTwoBtn;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.vertify.activity.FunctionFactory;
import cn.apppark.vertify.base.OnActivityGroupResultListener;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.PrintStream;
import java.lang.reflect.Constructor;
import java.util.ArrayList;

public class PageGroup
  extends ActivityGroup
{
  private static final int BITS_PER_UNIT = 8;
  int a = 0;
  public ArrayList<ActivityHistoryVo> activityHistoryList;
  public String currentShowName;
  private long exitTime = 0L;
  private IGroup g = null;
  public LinearLayout.LayoutParams includeViewLayoutParams;
  public Main mainActivity;
  public LocalActivityManager pageActivityManager;
  public LinearLayout pageGroupLayout;
  
  private static void AntiDecompile()
  {
    char[] arrayOfChar = new char[1];
    arrayOfChar[0] = '\000';
    int i = 0;
    while (i <= 0)
    {
      arrayOfChar[0] = '\000';
      i += 1;
    }
  }
  
  private native String checkFile(int paramInt);
  
  private native String getAlertStr();
  
  private native String getFile(int paramInt, String paramString);
  
  private native String getName(int paramInt);
  
  public static native int jniCheckAPP(Context paramContext);
  
  private static int postion(int paramInt)
  {
    return 1 << 7 - paramInt % 8;
  }
  
  public boolean canBack()
  {
    return this.activityHistoryList.size() > 0;
  }
  
  public native String getCC();
  
  public String getPKG()
  {
    return HQCHApplication.getInstance().PKGNAME;
  }
  
  public int getValue(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      int i = paramContext.getPackageInfo(paramString, 64).signatures[0].hashCode();
      return i;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  public void goFunction(String paramString1, String paramString2)
  {
    FunctionFactory.getInstance(paramString1, paramString2, this.mainActivity);
  }
  
  public void goNextPage(String paramString1, String paramString2, boolean paramBoolean, String paramString3, String paramString4)
  {
    if (HQCHApplication.DEBUG)
    {
      System.out.println(" ");
      System.out.println("***  goNextPage  *** nPageType--" + paramString3 + " nPageModuleType--" + paramString4 + " nPageId--" + paramString2);
    }
    this.g.goNextPage(paramString1, paramString2, paramBoolean, paramString3, paramString4);
  }
  
  public void hiddenAD() {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Activity localActivity = getLocalActivityManager().getCurrentActivity();
    if ((localActivity instanceof OnActivityGroupResultListener)) {
      ((OnActivityGroupResultListener)localActivity).onActivityGroupResult(paramInt1, paramInt2, paramIntent);
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.pageGroupLayout = new LinearLayout(HQCHApplication.mainActivity);
    setContentView(this.pageGroupLayout);
    this.mainActivity = HQCHApplication.mainActivity;
    this.pageActivityManager = getLocalActivityManager();
    this.activityHistoryList = new ArrayList();
    this.includeViewLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    paramBundle = HQCHApplication.instance.getYygyDir() + File.separator;
    ClassLoader localClassLoader = getClassLoader();
    paramBundle = new DexClassLoader(getFile(Integer.parseInt("10185912"), paramBundle), getApplicationInfo().dataDir, null, localClassLoader);
    checkFile(Integer.parseInt("10185912"));
    try
    {
      this.g = ((IGroup)paramBundle.loadClass(getName(getValue(this, getPKG()))).getConstructor(new Class[] { PageGroup.class }).newInstance(new Object[] { this }));
      if (this.a == 0)
      {
        this.a += 1;
        if (jniCheckAPP(this) != 1)
        {
          Toast.makeText(this, getAlertStr(), 0).show();
          this.mainActivity.finish();
        }
      }
      return;
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.activityHistoryList.size() != 0) {
        break label63;
      }
      if (System.currentTimeMillis() - this.exitTime > 2000L)
      {
        Toast.makeText(getApplicationContext(), "再按一次退出程序", 0).show();
        this.exitTime = System.currentTimeMillis();
      }
    }
    else
    {
      return true;
    }
    finish();
    System.exit(0);
    return true;
    label63:
    pageBack();
    return true;
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return this.mainActivity.onMenuItemSelected(paramInt, paramMenuItem);
  }
  
  public void pageBack()
  {
    this.g.pageBack();
  }
  
  public void pageBackHome()
  {
    this.g.pageBackHome();
  }
  
  public void saveActivityHistory(String paramString1, String paramString2, Intent paramIntent)
  {
    paramString1 = new ActivityHistoryVo();
    paramString1.setId(this.pageActivityManager.getCurrentId());
    paramString1.setIntent(this.pageActivityManager.getCurrentActivity().getIntent());
    paramString1.setPageId(paramString2);
    this.activityHistoryList.add(paramString1);
  }
  
  public void showAD() {}
  
  public void showExitDialog()
  {
    new DialogTwoBtn.Builder(this.mainActivity).setTitle(2131230723).setMessage(2131230726).setPositiveButton(2131230728, new at(this)).setNegativeButton(2131230729, new as(this)).create().show();
  }
  
  public void startPageActivity(String paramString, Intent paramIntent)
  {
    this.g.startPageActivity(paramString, paramIntent);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/PageGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */