package cn.apppark.vertify.activity.free.function;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.free.FunctionSmsTelAppstoreVo;

public class FunctionsTel
{
  private Context context;
  private FunctionSmsTelAppstoreVo funcItem;
  private String json;
  
  public FunctionsTel(Context paramContext, String paramString)
  {
    this.context = paramContext;
    this.json = paramString;
  }
  
  public void startFunctions()
  {
    if (!PublicUtil.getPermisson(this.context, "android.permission.CALL_PHONE"))
    {
      HQCHApplication.instance.initToast("对不起,客户端无该权限,请更新客户端", 0);
      return;
    }
    try
    {
      this.funcItem = ((FunctionSmsTelAppstoreVo)JsonParserUtil.parseJson2Vo(SDFileUtils.readFileSD(HQCHApplication.instance.getResourceDir() + "/" + this.json), FunctionSmsTelAppstoreVo.class));
      Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + this.funcItem.getData_tel()));
      this.context.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      HQCHApplication.instance.initToast(" 该设备无法拨打电话 ", 0);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/function/FunctionsTel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */