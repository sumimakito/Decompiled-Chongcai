package cn.apppark.vertify.network;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import cn.apppark.mcd.widget.DialogOneBtn.Builder;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.network.request.WebServiceRequest;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.PrintStream;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import wc;
import wd;
import we;
import wf;
import wg;
import wh;

public class FileUpdater
  extends LoadingDialog<Void, ArrayList<String>>
{
  private ArrayList<String> downList;
  private boolean isShowUpdateWindow = false;
  private boolean manualCheck;
  private int type;
  
  public FileUpdater(Activity paramActivity, boolean paramBoolean, int paramInt)
  {
    super(paramActivity, paramActivity.getString(2131230724), paramActivity.getString(2131230745), paramActivity.getString(2131230746));
    this.manualCheck = paramBoolean;
    this.type = paramInt;
  }
  
  private void initBaseMessage(JsonObject paramJsonObject)
  {
    Object localObject = (ClientBaseVo)JsonParserUtil.JsonElement2Obj(paramJsonObject.getAsJsonObject("copyright"), ClientBaseVo.class);
    if (localObject != null)
    {
      YYGYContants.mHelper.updateIsVip(((ClientBaseVo)localObject).getIsVip());
      YYGYContants.mHelper.updateShowWaterMarker(((ClientBaseVo)localObject).getStartPageWatermark());
      YYGYContants.mHelper.updateIsShowDeclare(((ClientBaseVo)localObject).getDisclaimerDeclare());
      YYGYContants.mHelper.updateIsShowMore(((ClientBaseVo)localObject).getIsShowMore());
      YYGYContants.mHelper.updateWeiboShareContent(((ClientBaseVo)localObject).getShareContent() + " " + ((ClientBaseVo)localObject).getShareUrl());
      if (HQCHApplication.mainActivity.clientBaseVo != null)
      {
        HQCHApplication.mainActivity.clientBaseVo.setWeixinAppID(((ClientBaseVo)localObject).getWeixinAppID());
        HQCHApplication.mainActivity.clientBaseVo.setQzoneAppID(((ClientBaseVo)localObject).getQzoneAppID());
        HQCHApplication.mainActivity.clientBaseVo.setSinaAppKey(((ClientBaseVo)localObject).getSinaAppKey());
      }
      if (((ClientBaseVo)localObject).getShareUrl() != null) {
        break label192;
      }
      paramJsonObject = "";
      if (((ClientBaseVo)localObject).getShareContent() != null) {
        break label200;
      }
    }
    label192:
    label200:
    for (localObject = "";; localObject = ((ClientBaseVo)localObject).getShareContent())
    {
      YYGYContants.mHelper.updateWeiboShareContent((String)localObject + " " + paramJsonObject);
      return;
      paramJsonObject = ((ClientBaseVo)localObject).getShareUrl();
      break;
    }
  }
  
  private void isLegalFlag(String paramString)
  {
    if ("0".equals(paramString))
    {
      new DialogOneBtn.Builder(this.mActivity).setTitle("警告").setCancelable(false).setMessage("对不起,客户端内容非法,即将关闭").setPositiveButton(2131230731, new wh(this)).show();
      PublicUtil.checkIllegal();
    }
  }
  
  private void updateFile(JsonObject paramJsonObject)
  {
    Gson localGson = new Gson();
    paramJsonObject = (JsonArray)paramJsonObject.get("url");
    Type localType = new wc(this).getType();
    this.downList.clear();
    this.downList = ((ArrayList)localGson.fromJson(paramJsonObject, localType));
    try
    {
      if ((this.downList == null) || (this.downList.size() == 0))
      {
        if (!this.manualCheck) {
          return;
        }
        new DialogOneBtn.Builder(this.mActivity).setTitle(this.mActivity.getString(2131230724)).setMessage(this.mActivity.getString(2131230743)).setPositiveButton(2131230731, new wd(this)).show();
        return;
      }
      if (!this.isShowUpdateWindow)
      {
        this.isShowUpdateWindow = true;
        new DialogTwoBtn.Builder(this.mActivity).setTitle(this.mActivity.getString(2131230724)).setMessage("发现新内容，确定更新？").setPositiveButton(2131230728, new wf(this)).setNegativeButton(2131230729, new we(this)).show().setOnDismissListener(new wg(this));
        return;
      }
    }
    catch (Exception paramJsonObject)
    {
      paramJsonObject.printStackTrace();
      return;
    }
    System.out.println("window is show already");
  }
  
  private void updateRegFlag(String paramString)
  {
    if ("1".equals(paramString)) {
      YYGYContants.mHelper.updateLogFlag();
    }
  }
  
  private boolean updateVersion(JsonObject paramJsonObject)
  {
    paramJsonObject = paramJsonObject.getAsJsonObject("verUpdate");
    if ("1".equals(paramJsonObject.get("verFlag").getAsString()))
    {
      new VersionUpdateManager(paramJsonObject.get("verUrl").getAsString(), paramJsonObject.get("isForce").getAsString()).checkUpdate();
      return true;
    }
    return false;
  }
  
  protected ArrayList<String> checkFilesUpdate()
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("updateTime", YYGYContants.mHelper.getRecentTimeStamp());
    ((Map)localObject).put("osname", "1");
    ((Map)localObject).put("verCode", YYGYContants.VERSION_CODE);
    ((Map)localObject).put("number", YYGYContants.PHONE_NUMBER);
    ((Map)localObject).put("isReg", YYGYContants.PHONE_NUMBER);
    ((Map)localObject).put("number", Integer.valueOf(YYGYContants.mHelper.getLogFlag()));
    ((Map)localObject).put("phoneModel", YYGYContants.MODEL);
    ((Map)localObject).put("marketType", "0");
    ((Map)localObject).put("type", Integer.valueOf(this.type));
    if (HQCHApplication.DEBUG) {
      ((Map)localObject).put("flag", "1");
    }
    for (;;)
    {
      localObject = WebServiceRequest.Ksoap2ForString("check", "json", PublicUtil.map2Json((Map)localObject) + " \"useTime\":" + PublicRequest.getLogFile() + "\"}", "http://ws.ckj.hqch.com", "http://www.apppark.cn/software.ws", true);
      if (!WebServiceRequest.WEB_ERROR.equals(localObject)) {
        break;
      }
      return null;
      ((Map)localObject).put("flag", "0");
    }
    this.downList = new ArrayList();
    this.downList.add(localObject);
    return this.downList;
  }
  
  public ArrayList<String> doInBackground(Void... paramVarArgs)
  {
    if (!this.manualCheck) {}
    try
    {
      Thread.sleep(2000L);
      return checkFilesUpdate();
    }
    catch (InterruptedException paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
  }
  
  public void doStuffWithResult(ArrayList<String> paramArrayList)
  {
    if ((paramArrayList == null) || (WebServiceRequest.WEB_ERROR.equals(paramArrayList.get(0))) || (WebServiceRequest.NO_DATA.equals(paramArrayList.get(0))))
    {
      if (this.manualCheck) {
        HQCHApplication.instance.initToast(" 更新失败,请重试 ", 0);
      }
      return;
    }
    for (;;)
    {
      int i;
      try
      {
        JsonObject localJsonObject = (JsonObject)new JsonParser().parse((String)paramArrayList.get(0));
        HQCHApplication.lastUpdateTimeFlag = localJsonObject.get("updateTime").getAsString();
        String str1 = localJsonObject.get("legalFlag").getAsString();
        String str2 = localJsonObject.get("regFlag").getAsString();
        String str3 = localJsonObject.get("isWall").getAsString();
        String str4 = localJsonObject.get("adCount").getAsString();
        if (str4 != null)
        {
          i = FunctionPublic.str2int(str4) - YYGYContants.mHelper.getSoftCount();
          Main localMain = HQCHApplication.mainActivity;
          if (i > 10)
          {
            paramArrayList = "N";
            localMain.setWallNum(paramArrayList);
            YYGYContants.mHelper.updateSoftCount(FunctionPublic.str2int(str4));
          }
        }
        else
        {
          if (str3 != null)
          {
            YYGYContants.mHelper.updateIsShowWall(str3);
            if ((!"1".equals(str3)) && (!YYGYContants.VIP_0.equals(YYGYContants.mHelper.getIsVip()))) {
              break label287;
            }
            HQCHApplication.mainActivity.showWall();
          }
          initBaseMessage(localJsonObject);
          isLegalFlag(str1);
          updateRegFlag(str2);
          updateVersion(localJsonObject);
          PublicRequest.delLogFile();
          updateFile(localJsonObject);
          return;
        }
      }
      catch (Exception paramArrayList)
      {
        paramArrayList.printStackTrace();
        return;
      }
      paramArrayList = Math.abs(i);
      continue;
      label287:
      HQCHApplication.mainActivity.hiddenWall();
    }
  }
  
  public void onPreExecute()
  {
    if (this.manualCheck) {
      super.onPreExecute();
    }
  }
  
  protected void onProgressUpdate(Exception... paramVarArgs)
  {
    if (this.manualCheck) {
      super.onProgressUpdate(paramVarArgs);
    }
  }
  
  protected void showFailMsg()
  {
    if (this.manualCheck) {
      super.showFailMsg();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/FileUpdater.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */