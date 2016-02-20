import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Gallery;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;
import cn.apppark.vertify.activity.free.dyn.DynMsgGalleryText5010;
import cn.apppark.vertify.adapter.DynMsg5010Adapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;

public final class hq
  extends Handler
{
  private hq(DynMsgGalleryText5010 paramDynMsgGalleryText5010) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    Object localObject = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    case 3: 
      this.a.onFootRefreshComplete();
      if ((WebServiceRequest.NO_DATA.equals(localObject)) || (WebServiceRequest.WEB_ERROR.equals(localObject)))
      {
        this.a.loadFail(2);
        return;
      }
      paramMessage = new hr(this).getType();
      DynMsgGalleryText5010.a(this.a, JsonParserDyn.parseJson2List((String)localObject, paramMessage));
      if (DynMsgGalleryText5010.e(this.a) == null) {
        DynMsgGalleryText5010.a(this.a, new ArrayList());
      }
      if (DynMsgGalleryText5010.b(this.a) == 1)
      {
        DynMsgGalleryText5010.a(this.a).clear();
        this.a.loadSuccess(2);
        DynMsgGalleryText5010.b(this.a, JsonParserDyn.parseItem2Vo((String)localObject, paramMessage, "item2"));
        DynMsgGalleryText5010.f(this.a);
      }
      if (DynMsgGalleryText5010.g(this.a) == null)
      {
        DynMsgGalleryText5010.a(this.a).addAll(DynMsgGalleryText5010.e(this.a));
        DynMsgGalleryText5010.a(this.a, new DynMsg5010Adapter(DynMsgGalleryText5010.h(this.a), DynMsgGalleryText5010.i(this.a), DynMsgGalleryText5010.a(this.a)));
        this.a.setAdapter(DynMsgGalleryText5010.g(this.a));
      }
      for (;;)
      {
        DynMsgGalleryText5010.j(this.a);
        if ((DynMsgGalleryText5010.a(this.a) == null) || (DynMsgGalleryText5010.a(this.a).size() <= 0)) {
          break;
        }
        this.a.onFootNodata(((DynMsgListReturnVo)DynMsgGalleryText5010.a(this.a).get(0)).getCount(), DynMsgGalleryText5010.a(this.a).size());
        return;
        DynMsgGalleryText5010.a(this.a).addAll(DynMsgGalleryText5010.e(this.a));
        DynMsgGalleryText5010.g(this.a).notifyDataSetChanged();
      }
      this.a.onFootNodata(0, 0);
      return;
    case 4: 
      if ((WebServiceRequest.NO_DATA.equals(localObject)) || (WebServiceRequest.WEB_ERROR.equals(localObject)))
      {
        this.a.loadFail(3);
        return;
      }
      this.a.loadSuccess(3);
      DynMsgGalleryText5010.j(this.a);
      paramMessage = new hs(this).getType();
      DynMsgGalleryText5010.a(this.a, JsonParserDyn.parseJson2List((String)localObject, paramMessage));
      DynMsgGalleryText5010.b(this.a, JsonParserDyn.parseItem2Vo((String)localObject, paramMessage, "item2"));
      DynMsgGalleryText5010.f(this.a);
      if (DynMsgGalleryText5010.e(this.a) != null)
      {
        DynMsgGalleryText5010.a(this.a).clear();
        DynMsgGalleryText5010.a(this.a).addAll(DynMsgGalleryText5010.e(this.a));
        DynMsgGalleryText5010.g(this.a).notifyDataSetChanged();
        if (DynMsgGalleryText5010.a(this.a).size() > 0) {
          this.a.setSelection(0);
        }
      }
      if ((DynMsgGalleryText5010.a(this.a) != null) && (DynMsgGalleryText5010.a(this.a).size() > 0))
      {
        this.a.onFootNodata(((DynMsgListReturnVo)DynMsgGalleryText5010.a(this.a).get(0)).getCount(), DynMsgGalleryText5010.a(this.a).size());
        return;
      }
      this.a.onFootNodata(0, 0);
      return;
    case 1: 
      if (DynMsgGalleryText5010.k(this.a) < DynMsgGalleryText5010.c(this.a).size() - 1) {
        DynMsgGalleryText5010.b(this.a, 1);
      }
      for (;;)
      {
        this.a.c.setSelection(DynMsgGalleryText5010.k(this.a));
        return;
        DynMsgGalleryText5010.c(this.a, 0);
      }
    }
    paramMessage = new Intent(HQCHApplication.mainActivity, DynMsgDetail.class);
    paramMessage.putExtra("type", 2);
    localObject = new Bundle();
    ((Bundle)localObject).putSerializable("vo", (Serializable)DynMsgGalleryText5010.c(this.a).get(DynMsgGalleryText5010.l(this.a)));
    paramMessage.putExtra("bund", (Bundle)localObject);
    HQCHApplication.mainActivity.startActivity(paramMessage);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */