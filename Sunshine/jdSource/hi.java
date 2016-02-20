import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;

@SuppressLint({"HandlerLeak"})
public final class hi
  extends Handler
{
  private hi(DynMsgDetail paramDynMsgDetail) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            DynMsgDetail.b(this.a).hidden();
            if (!YYGYContants.checkResult(str)) {
              break;
            }
            paramMessage = (DynMsgListReturnVo)JsonParserDyn.parseJson2Vo(str, DynMsgListReturnVo.class);
          } while (paramMessage == null);
          DynMsgDetail.a(this.a, paramMessage);
          DynMsgDetail.a(this.a, DynMsgDetail.a(this.a).getContent());
          DynMsgDetail.b(this.a, DynMsgDetail.a(this.a));
          return;
          DynMsgDetail.b(this.a).show(2131230757, true, false, "255");
          DynMsgDetail.b(this.a).setInterfaceRef(new hj(this));
          return;
        } while (!YYGYContants.checkResult(str, "收藏失败", "收藏成功"));
        DynMsgDetail.a(this.a).setIsFavorites("1");
        DynMsgDetail.c(this.a).setBackgroundResource(2130837649);
        return;
      } while (!YYGYContants.checkResult(str, "取消收藏失败", "取消收藏成功"));
      DynMsgDetail.a(this.a).setIsFavorites("0");
      DynMsgDetail.c(this.a).setBackgroundResource(2130837648);
      return;
    } while (!YYGYContants.checkResult(str));
    DynMsgDetail.d(this.a).setVisibility(0);
    DynMsgDetail.d(this.a).setText(FunctionPublic.str2int(DynMsgDetail.a(this.a).getShareCount()) + 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */