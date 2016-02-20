import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.widget.WaterfallImageView;
import cn.apppark.vertify.activity.free.dyn.DynMsgWater5012;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;
import java.util.HashMap;

public final class if
  extends Handler
{
  private if(DynMsgWater5012 paramDynMsgWater5012) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    Object localObject = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    case 3: 
    default: 
      return;
    case 4: 
      if ((WebServiceRequest.NO_DATA.equals(localObject)) || (WebServiceRequest.WEB_ERROR.equals(localObject)))
      {
        this.a.loadFail(2);
        return;
      }
      this.a.loadSuccess(2);
      paramMessage = new ig(this).getType();
      DynMsgWater5012.a(this.a, JsonParserDyn.parseJson2List((String)localObject, paramMessage));
      if (DynMsgWater5012.j(this.a) == null) {
        DynMsgWater5012.a(this.a, new ArrayList());
      }
      DynMsgWater5012.k(this.a).addAll(DynMsgWater5012.j(this.a));
      this.a.setMore(true);
      DynMsgWater5012.a(this.a, DynMsgWater5012.l(this.a), DynMsgWater5012.b(this.a));
      return;
    case 2: 
      if ((WebServiceRequest.NO_DATA.equals(localObject)) || (WebServiceRequest.WEB_ERROR.equals(localObject)))
      {
        this.a.loadFail(3);
        return;
      }
      this.a.loadSuccess(3);
      paramMessage = new ih(this).getType();
      DynMsgWater5012.a(this.a, JsonParserDyn.parseJson2List((String)localObject, paramMessage));
      if (DynMsgWater5012.j(this.a) == null) {
        DynMsgWater5012.a(this.a, new ArrayList());
      }
      DynMsgWater5012.m(this.a);
      i = 0;
      while (i < DynMsgWater5012.e(this.a).size())
      {
        ((LinearLayout)DynMsgWater5012.e(this.a).get(i)).removeAllViews();
        i += 1;
      }
      DynMsgWater5012.b(this.a, 0);
      DynMsgWater5012.c(this.a, 0);
      this.a.setMore(true);
      DynMsgWater5012.d(this.a, 0);
      DynMsgWater5012.k(this.a).clear();
      DynMsgWater5012.k(this.a).addAll(DynMsgWater5012.j(this.a));
      DynMsgWater5012.a(this.a, DynMsgWater5012.l(this.a), DynMsgWater5012.b(this.a));
      return;
    }
    localObject = (WaterfallImageView)paramMessage.obj;
    int i = paramMessage.arg2;
    int j = ((WaterfallImageView)localObject).getColumnIndex();
    paramMessage = DynMsgWater5012.n(this.a);
    paramMessage[j] = (i + paramMessage[j]);
    paramMessage = DynMsgWater5012.g(this.a);
    paramMessage[j] += 1;
    DynMsgWater5012.h(this.a)[j].put(Integer.valueOf(DynMsgWater5012.g(this.a)[j]), Integer.valueOf(DynMsgWater5012.n(this.a)[j]));
    DynMsgWater5012.f(this.a)[j] = DynMsgWater5012.g(this.a)[j];
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/if.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */