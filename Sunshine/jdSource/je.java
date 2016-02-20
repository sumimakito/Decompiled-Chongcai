import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Gallery;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.vertify.activity.buy.BuyProductDetail;
import cn.apppark.vertify.activity.free.dyn.DynProductGalleryText5013;
import cn.apppark.vertify.adapter.DynProduct5013Adapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class je
  extends Handler
{
  private je(DynProductGalleryText5013 paramDynProductGalleryText5013) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      this.a.onFootRefreshComplete();
      if (DynProductGalleryText5013.b(this.a) != null) {
        DynProductGalleryText5013.b(this.a).dismiss();
      }
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(2);
        return;
      }
      paramMessage = new jf(this).getType();
      DynProductGalleryText5013.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      if (DynProductGalleryText5013.h(this.a) == null) {
        DynProductGalleryText5013.a(this.a, new ArrayList());
      }
      if (DynProductGalleryText5013.g(this.a) == 1)
      {
        DynProductGalleryText5013.e(this.a).clear();
        this.a.loadSuccess(2);
        DynProductGalleryText5013.b(this.a, JsonParserDyn.parseItem2Vo(str, paramMessage, "item2"));
        DynProductGalleryText5013.i(this.a);
      }
      if (DynProductGalleryText5013.j(this.a) == null)
      {
        DynProductGalleryText5013.e(this.a).addAll(DynProductGalleryText5013.h(this.a));
        DynProductGalleryText5013.a(this.a, new DynProduct5013Adapter(DynProductGalleryText5013.f(this.a), DynProductGalleryText5013.k(this.a), DynProductGalleryText5013.e(this.a)));
        this.a.setAdapter(DynProductGalleryText5013.j(this.a));
      }
      for (;;)
      {
        DynProductGalleryText5013.l(this.a);
        if ((DynProductGalleryText5013.e(this.a) == null) || (DynProductGalleryText5013.e(this.a).size() <= 0)) {
          break;
        }
        this.a.onFootNodata(((DynProductReturnVo)DynProductGalleryText5013.e(this.a).get(0)).getCount(), DynProductGalleryText5013.e(this.a).size());
        return;
        DynProductGalleryText5013.e(this.a).addAll(DynProductGalleryText5013.h(this.a));
        DynProductGalleryText5013.j(this.a).notifyDataSetChanged();
      }
      this.a.onFootNodata(0, 0);
      return;
    case 2: 
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(3);
        return;
      }
      this.a.loadSuccess(3);
      DynProductGalleryText5013.l(this.a);
      paramMessage = new jg(this).getType();
      DynProductGalleryText5013.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      DynProductGalleryText5013.b(this.a, JsonParserDyn.parseItem2Vo(str, paramMessage, "item2"));
      DynProductGalleryText5013.i(this.a);
      if (DynProductGalleryText5013.h(this.a) != null)
      {
        DynProductGalleryText5013.e(this.a).clear();
        DynProductGalleryText5013.e(this.a).addAll(DynProductGalleryText5013.h(this.a));
        DynProductGalleryText5013.j(this.a).notifyDataSetChanged();
        if (DynProductGalleryText5013.e(this.a).size() > 0) {
          this.a.setSelection(0);
        }
      }
      if ((DynProductGalleryText5013.e(this.a) != null) && (DynProductGalleryText5013.e(this.a).size() > 0))
      {
        this.a.onFootNodata(((DynProductReturnVo)DynProductGalleryText5013.e(this.a).get(0)).getCount(), DynProductGalleryText5013.e(this.a).size());
        return;
      }
      this.a.onFootNodata(0, 0);
      return;
    case 3: 
      if (DynProductGalleryText5013.m(this.a) < DynProductGalleryText5013.c(this.a).size() - 1) {
        DynProductGalleryText5013.b(this.a, 1);
      }
      for (;;)
      {
        this.a.c.setSelection(DynProductGalleryText5013.m(this.a));
        return;
        DynProductGalleryText5013.c(this.a, 0);
      }
    }
    paramMessage = new Intent(HQCHApplication.mainActivity, BuyProductDetail.class);
    paramMessage.putExtra("id", ((DynProductReturnVo)DynProductGalleryText5013.c(this.a).get(DynProductGalleryText5013.n(this.a))).getId());
    DynProductGalleryText5013.f(this.a).startActivity(paramMessage);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/je.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */