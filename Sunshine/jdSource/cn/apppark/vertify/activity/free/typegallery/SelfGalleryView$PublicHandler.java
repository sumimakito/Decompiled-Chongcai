package cn.apppark.vertify.activity.free.typegallery;

import android.os.Handler;
import android.os.Message;
import android.widget.Gallery;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.vertify.PageGroup;
import java.util.ArrayList;

public class SelfGalleryView$PublicHandler
  extends Handler
{
  protected SelfGalleryView$PublicHandler(SelfGalleryView paramSelfGalleryView) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      if (SelfGalleryView.a(this.a) < SelfGalleryView.b(this.a).size() - 1) {
        SelfGalleryView.c(this.a);
      }
      for (;;)
      {
        SelfGalleryView.d(this.a).setSelection(SelfGalleryView.a(this.a));
        return;
        SelfGalleryView.a(this.a, 0);
      }
    }
    HQCHApplication.mainActivity.pageGroup.goNextPage(SelfGalleryView.e(this.a).getSys_pageID(), ((SelfGalleryItem2Vo)SelfGalleryView.b(this.a).get(paramMessage.arg1)).getnPageId(), true, SelfGalleryView.f(this.a).getnPageType(), SelfGalleryView.f(this.a).getnPageModuleType());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */