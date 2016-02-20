package cn.apppark.vertify.activity.free.function;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.free.FunctionSmsTelAppstoreVo;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import lu;
import lv;

public class FunctionsSms
{
  private String DELIVERED_SMS_ACTION = "DELIVERED_SMS_ACTION";
  private String SENT_SMS_ACTION = "SENT_SMS_ACTION";
  private Context context;
  private FunctionSmsTelAppstoreVo funcItem;
  private String json;
  
  public FunctionsSms(Context paramContext, String paramString)
  {
    this.context = paramContext;
    this.json = paramString;
  }
  
  protected void editSendSms()
  {
    Object localObject = this.funcItem.getData_tel();
    String str = this.funcItem.getData_text();
    localObject = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + (String)localObject));
    ((Intent)localObject).putExtra("sms_body", str);
    this.context.startActivity((Intent)localObject);
  }
  
  public void sendSmsMainEnter()
  {
    try
    {
      if ("0".equals(this.funcItem.getStyle_type()))
      {
        editSendSms();
        return;
      }
      if ("1".equals(this.funcItem.getStyle_type()))
      {
        editSendSms();
        return;
      }
    }
    catch (Exception localException)
    {
      HQCHApplication.instance.initToast(" 该设备无法发送短信 ", 0);
    }
  }
  
  public void startFunctions()
  {
    if (!PublicUtil.getPermisson(this.context, "android.permission.SEND_SMS")) {
      HQCHApplication.instance.initToast("对不起,客户端无该权限,请更新客户端", 0);
    }
    for (;;)
    {
      return;
      try
      {
        this.funcItem = ((FunctionSmsTelAppstoreVo)JsonParserUtil.parseJson2Vo(SDFileUtils.readFileSD(HQCHApplication.instance.getResourceDir() + "/" + this.json), FunctionSmsTelAppstoreVo.class));
        if (this.funcItem != null)
        {
          new DialogTwoBtn.Builder(this.context).setTitle(2131230732).setMessage("确定发送短信?").setPositiveButton(2131230736, new lv(this)).setNegativeButton(2131230737, new lu(this)).show();
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/function/FunctionsSms.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */