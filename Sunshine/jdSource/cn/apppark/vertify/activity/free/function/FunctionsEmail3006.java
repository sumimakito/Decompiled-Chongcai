package cn.apppark.vertify.activity.free.function;

import android.content.Context;
import android.content.Intent;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.free.FunctionEmailVo;

public class FunctionsEmail3006
{
  private Context context;
  private FunctionEmailVo funcItem;
  private String json;
  
  public FunctionsEmail3006(Context paramContext, String paramString)
  {
    this.context = paramContext;
    this.json = paramString;
  }
  
  public void startFunctions()
  {
    this.funcItem = ((FunctionEmailVo)JsonParserUtil.parseJson2Vo(SDFileUtils.readFileSD(this.json), FunctionEmailVo.class));
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.SEND");
    localIntent.setType("message/rfc822");
    localIntent.putExtra("android.intent.extra.EMAIL", this.funcItem.getData_addr());
    localIntent.putExtra("android.intent.extra.TEXT", this.funcItem.getData_text());
    this.context.startActivity(Intent.createChooser(localIntent, "Send email!"));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/function/FunctionsEmail3006.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */