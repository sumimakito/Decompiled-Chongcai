package cn.apppark.vertify.activity;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.widget.LinearLayout;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.network.PublicRequest;
import com.google.gson.JsonArray;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public abstract class FreeBasePageActivity
  extends Activity
{
  protected int bottomHeight = 0;
  protected int isOncreate = 0;
  protected JsonArray jsonArray;
  protected int mainHeight = 0;
  protected String pageId;
  protected String pageJsonName;
  protected FreePageVo pageVo;
  protected int topHeight = 0;
  
  public boolean isAppOnForeground()
  {
    Object localObject = (ActivityManager)getApplicationContext().getSystemService("activity");
    String str = getApplicationContext().getPackageName();
    localObject = ((ActivityManager)localObject).getRunningAppProcesses();
    if (localObject == null) {
      return false;
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
      if ((localRunningAppProcessInfo.processName.equals(str)) && (localRunningAppProcessInfo.importance == 100)) {
        return true;
      }
    }
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (this.mainHeight == 0) {
      this.mainHeight = HQCHApplication.mainActivity.linearLayoutMain.getHeight();
    }
    this.pageJsonName = getIntent().getStringExtra("pageJson");
    this.pageId = getIntent().getStringExtra("pageId");
    paramBundle = new File(HQCHApplication.instance.getResourceDir(), this.pageJsonName);
    if (!paramBundle.exists()) {
      HQCHApplication.getInstance().initToast("文件" + this.pageJsonName + "不存在", 1);
    }
    do
    {
      return;
      paramBundle = SDFileUtils.readFileSD(paramBundle);
      this.pageVo = ((FreePageVo)JsonParserUtil.parseJson2Vo(paramBundle, FreePageVo.class));
      this.jsonArray = JsonParserUtil.parseJson2JsonArray(paramBundle);
    } while (this.pageVo == null);
    this.isOncreate = 0;
    this.bottomHeight = HQCHApplication.mainActivity.createBottom(this.pageVo.getStyle_bFlag(), this.pageVo.getStyle_bNavID(), this.pageVo.getSys_pageID());
    HQCHApplication.mainActivity.pageGroup.currentShowName = this.pageVo.getData_pageName();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return HQCHApplication.mainActivity.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return HQCHApplication.mainActivity.onMenuItemSelected(paramInt, paramMenuItem);
  }
  
  protected void onResume()
  {
    if ((this.pageVo != null) && (this.isOncreate > 0))
    {
      HQCHApplication.mainActivity.createBottom(this.pageVo.getStyle_bFlag(), this.pageVo.getStyle_bNavID(), this.pageVo.getSys_pageID());
      HQCHApplication.mainActivity.pageGroup.currentShowName = this.pageVo.getData_pageName();
      if ((!"1".equals(YYGYContants.mHelper.getIsShowWall())) && (!YYGYContants.VIP_0.equals(YYGYContants.mHelper.getIsVip()))) {
        break label132;
      }
      HQCHApplication.mainActivity.showWall();
    }
    for (;;)
    {
      if (!YYGYContants.isActive)
      {
        YYGYContants.isActive = true;
        YYGYContants.START_TIME = PublicUtil.timeFomat("yyyy-MM-dd HH:mm:ss");
        PublicRequest.updateLogFile();
      }
      super.onResume();
      return;
      this.isOncreate += 1;
      break;
      label132:
      HQCHApplication.mainActivity.hiddenWall();
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    if (!isAppOnForeground())
    {
      YYGYContants.isActive = false;
      PublicRequest.updateLogFile();
      YYGYContants.START_TIME = PublicUtil.timeFomat("yyyy-MM-dd HH:mm:ss");
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/FreeBasePageActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */