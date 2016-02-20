package cn.apppark.vertify.activity;

import android.content.Context;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.base.BasePageItemVo;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.navigation.NavigationHistoryVo;
import cn.apppark.vertify.activity.topmenu.ITopView;
import cn.apppark.vertify.activity.topmenu.NavigationHistoryView;
import java.io.File;

public class TopMenuFactory
{
  public static ITopView getInstance(Context paramContext, File paramFile, FreePageVo paramFreePageVo)
  {
    paramFile = SDFileUtils.readFileSD(paramFile);
    BasePageItemVo localBasePageItemVo = (BasePageItemVo)JsonParserUtil.parseJson2Vo(paramFile, NavigationHistoryVo.class);
    if (localBasePageItemVo != null) {
      switch (localBasePageItemVo.getSys_moduleType())
      {
      }
    }
    do
    {
      return null;
      paramFile = (NavigationHistoryVo)JsonParserUtil.parseJson2Vo(paramFile, NavigationHistoryVo.class);
    } while (paramFile == null);
    return new NavigationHistoryView(paramContext, paramFile, paramFreePageVo.getData_pageName());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/TopMenuFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */