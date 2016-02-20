import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Gallery;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.vo.dyn.STogetherItemVo;
import cn.apppark.mcd.vo.dyn.STogetherReturnVo;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.free.dyn.STogetherBase;
import cn.apppark.vertify.activity.free.dyn.STogetherDetail;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

@SuppressLint({"HandlerLeak"})
public final class lr
  extends Handler
{
  private lr(STogetherBase paramSTogetherBase) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    Object localObject = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      STogetherBase.j(this.a).onFootRefreshComplete();
      if (STogetherBase.k(this.a) != null) {
        STogetherBase.k(this.a).dismiss();
      }
      if ((WebServiceRequest.NO_DATA.equals(localObject)) || (WebServiceRequest.WEB_ERROR.equals(localObject)))
      {
        this.a.loadFail(2);
        return;
      }
      if (STogetherBase.d(this.a) == 1) {
        this.a.loadSuccess(2);
      }
      STogetherBase.b(this.a, (String)localObject);
      return;
    case 2: 
      if ((WebServiceRequest.NO_DATA.equals(localObject)) || (WebServiceRequest.WEB_ERROR.equals(localObject)))
      {
        this.a.loadFail(3);
        return;
      }
      this.a.loadSuccess(3);
      STogetherBase.b(this.a, (String)localObject);
      return;
    case 3: 
      if (STogetherBase.l(this.a) < STogetherBase.m(this.a).size() - 1) {
        STogetherBase.b(this.a, 1);
      }
      for (;;)
      {
        STogetherBase.n(this.a).setSelection(STogetherBase.l(this.a));
        this.a.changePoint(STogetherBase.l(this.a));
        return;
        STogetherBase.c(this.a, 0);
      }
    }
    paramMessage = new DynProductVo();
    paramMessage.setStyle_tabPosition(STogetherBase.a(this.a).getShop().getStyle_tabPosition());
    paramMessage.setStyle_groupInfoShow(STogetherBase.a(this.a).getShop().getStyle_groupInfoShow());
    paramMessage.setSys_moduleType(STogetherBase.a(this.a).getShop().getSys_moduleType());
    paramMessage.setGroupId(((STogetherReturnVo)STogetherBase.m(this.a).get(STogetherBase.o(this.a))).getGroupId());
    localObject = new Intent(HQCHApplication.mainActivity, STogetherDetail.class);
    ((Intent)localObject).putExtra("detail", paramMessage);
    STogetherBase.c(this.a).startActivity((Intent)localObject);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */