package cn.apppark.vertify.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.free.FunctionWeiboVo;
import cn.apppark.vertify.activity.buy.BuyAddressList;
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.activity.buy.BuyBuyCar;
import cn.apppark.vertify.activity.buy.BuyCollectionMsgList;
import cn.apppark.vertify.activity.buy.BuyMsgCommentList;
import cn.apppark.vertify.activity.buy.BuyMyOrderList;
import cn.apppark.vertify.activity.buy.BuyProCommentList;
import cn.apppark.vertify.activity.buy.BuyProductCollection;
import cn.apppark.vertify.activity.buy.BuyViewHistory;
import cn.apppark.vertify.activity.free.function.FunctionAppstore;
import cn.apppark.vertify.activity.free.function.FunctionsEmail3006;
import cn.apppark.vertify.activity.free.function.FunctionsSms;
import cn.apppark.vertify.activity.free.function.FunctionsTel;
import cn.apppark.vertify.activity.persion.PersonInfo;
import cn.apppark.vertify.activity.share.ShareAct;
import cn.apppark.vertify.activity.tieba.TMain;
import cn.apppark.vertify.base.ClientPersionInfo;
import java.io.File;
import java.io.PrintStream;

public class FunctionFactory
{
  private static ClientPersionInfo info;
  
  private static void checkLogin(Class<? extends BuyBaseAct> paramClass, String paramString)
  {
    if (getInfo().getUserId() == null)
    {
      paramClass = new Intent(HQCHApplication.getInstance(), YYGYContants.getLoginClass());
      HQCHApplication.mainActivity.startActivity(paramClass);
      return;
    }
    paramClass = new Intent(HQCHApplication.getInstance(), paramClass);
    HQCHApplication.mainActivity.startActivity(paramClass);
  }
  
  protected static ClientPersionInfo getInfo()
  {
    if (info == null) {
      info = new ClientPersionInfo(HQCHApplication.mainActivity);
    }
    return info;
  }
  
  public static void getInstance(String paramString1, String paramString2, Context paramContext)
  {
    Object localObject = "fun_" + paramString1 + ".json";
    if (HQCHApplication.DEBUG) {
      System.out.println("###  function  ### funJson--" + (String)localObject + " nPageModuleType--" + paramString2 + " nPageId--" + paramString1);
    }
    switch (FunctionPublic.str2int(paramString2))
    {
    }
    do
    {
      return;
      new FunctionsSms(paramContext, (String)localObject).startFunctions();
      return;
      new FunctionsTel(paramContext, (String)localObject).startFunctions();
      return;
      new FunctionAppstore((String)localObject).startFunctions();
      return;
      SDFileUtils.readFileSD(HQCHApplication.instance.getResourceDir() + File.separator + (String)localObject);
      return;
      paramString1 = (FunctionWeiboVo)JsonParserUtil.parseJson2Vo(SDFileUtils.readFileSD((String)localObject), FunctionWeiboVo.class);
      paramString2 = new Intent(paramContext, ShareAct.class);
      localObject = new Bundle();
      ((Bundle)localObject).putString("content", paramString1.getData_text() + paramString1.getData_url());
      ((Bundle)localObject).putString("imgpath", paramString1.getData_pic());
      paramString2.putExtras((Bundle)localObject);
      paramContext.startActivity(paramString2);
      return;
      new FunctionsEmail3006(paramContext, (String)localObject).startFunctions();
      return;
      checkLogin(PersonInfo.class, (String)localObject);
      return;
      checkLogin(BuyBuyCar.class, (String)localObject);
      return;
      checkLogin(BuyMyOrderList.class, (String)localObject);
      return;
      checkLogin(BuyProductCollection.class, (String)localObject);
      return;
      checkLogin(BuyViewHistory.class, (String)localObject);
      return;
      checkLogin(BuyAddressList.class, (String)localObject);
      return;
      checkLogin(BuyProCommentList.class, (String)localObject);
      return;
      checkLogin(BuyMsgCommentList.class, (String)localObject);
      return;
      checkLogin(BuyCollectionMsgList.class, (String)localObject);
      return;
      paramString1 = SDFileUtils.readFileSD(HQCHApplication.instance.getResourceDir() + File.separator + (String)localObject);
      if (paramString1 != null)
      {
        paramString2 = new Intent(paramContext, TMain.class);
        paramString2.putExtra("json", paramString1);
        paramContext.startActivity(paramString2);
        return;
      }
    } while (!HQCHApplication.DEBUG);
    HQCHApplication.instance.initToast(2131230735, 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/FunctionFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */