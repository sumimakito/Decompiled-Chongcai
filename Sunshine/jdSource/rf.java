import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.free.SoftDetailReturnVo;
import cn.apppark.mcd.vo.free.SoftReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.soft.SoftDetail;
import cn.apppark.vertify.activity.soft.SoftDetail.MyHandler.3;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class rf
  extends Handler
{
  private rf(SoftDetail paramSoftDetail) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    Object localObject = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    if ((WebServiceRequest.NO_DATA.equals(localObject)) || (WebServiceRequest.WEB_ERROR.equals(localObject)))
    {
      SoftDetail.f(this.a).show(2131230757, true, false, "255");
      SoftDetail.f(this.a).setInterfaceRef(new rg(this));
      return;
    }
    SoftDetail.f(this.a).hidden();
    this.a.a = ((SoftDetailReturnVo)JsonParserDyn.parseJson2Vo((String)localObject, SoftDetailReturnVo.class));
    paramMessage = new rh(this).getType();
    SoftDetail.a(this.a, JsonParserDyn.parseItem2Vo((String)localObject, paramMessage, "images"));
    SoftDetail.b(this.a, JsonParserDyn.parseItem2Vo((String)localObject, paramMessage, "recommend"));
    if (SoftDetail.g(this.a) != null)
    {
      int i = 0;
      while (i < SoftDetail.g(this.a).size())
      {
        paramMessage = new RemoteImageView(this.a);
        paramMessage.setImageUrl(((SoftReturnVo)SoftDetail.g(this.a).get(i)).getPicUrl());
        localObject = new LinearLayout.LayoutParams(PublicUtil.dip2px(85.0F), PublicUtil.dip2px(125.0F));
        ((LinearLayout.LayoutParams)localObject).setMargins(0, 0, 15, 0);
        paramMessage.setLayoutParams((ViewGroup.LayoutParams)localObject);
        paramMessage.setScaleType(ImageView.ScaleType.FIT_CENTER);
        SoftDetail.h(this.a).addView(paramMessage);
        paramMessage.setOnClickListener(new SoftDetail.MyHandler.3(this, i));
        i += 1;
      }
    }
    SoftDetail.j(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */