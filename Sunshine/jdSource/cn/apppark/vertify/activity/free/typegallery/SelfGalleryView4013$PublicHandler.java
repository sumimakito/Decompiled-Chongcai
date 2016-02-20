package cn.apppark.vertify.activity.free.typegallery;

import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.mcd.widget.CoverFlowGallery;
import cn.apppark.vertify.PageGroup;
import java.util.ArrayList;

public class SelfGalleryView4013$PublicHandler
  extends Handler
{
  protected SelfGalleryView4013$PublicHandler(SelfGalleryView4013 paramSelfGalleryView4013) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      if (SelfGalleryView4013.a(this.a) < SelfGalleryView4013.b(this.a).size() - 1) {
        SelfGalleryView4013.a(this.a, 1);
      }
      for (;;)
      {
        SelfGalleryView4013.c(this.a).setSelection(SelfGalleryView4013.a(this.a));
        return;
        SelfGalleryView4013.b(this.a, 0);
      }
    }
    paramMessage = (SelfGalleryItem2Vo)SelfGalleryView4013.b(this.a).get(SelfGalleryView4013.d(this.a));
    HQCHApplication.mainActivity.pageGroup.goNextPage(SelfGalleryView4013.e(this.a).getSys_pageID(), paramMessage.getnPageId(), true, paramMessage.getnPageType(), paramMessage.getnPageModuleType());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */