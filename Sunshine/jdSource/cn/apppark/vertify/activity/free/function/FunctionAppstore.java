package cn.apppark.vertify.activity.free.function;

import android.content.Intent;
import android.net.Uri;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.free.FunctionSmsTelAppstoreVo;

public class FunctionAppstore
{
  private FunctionSmsTelAppstoreVo funcItem;
  private String json;
  
  public FunctionAppstore(String paramString)
  {
    this.json = paramString;
  }
  
  public void startFunctions()
  {
    try
    {
      this.funcItem = ((FunctionSmsTelAppstoreVo)JsonParserUtil.parseJson2Vo(SDFileUtils.readFileSD(HQCHApplication.instance.getResourceDir() + "/" + this.json), FunctionSmsTelAppstoreVo.class));
      if (this.funcItem.getData_addr_android().startsWith("http://"))
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.funcItem.getData_addr_android()));
        HQCHApplication.mainActivity.startActivity(localIntent);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/function/FunctionAppstore.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */