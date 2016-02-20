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

public class SelfGalleryView4012$PublicHandler
  extends Handler
{
  protected SelfGalleryView4012$PublicHandler(SelfGalleryView4012 paramSelfGalleryView4012) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      if (SelfGalleryView4012.a(this.a) < SelfGalleryView4012.b(this.a).size() - 1) {
        SelfGalleryView4012.a(this.a, 1);
      }
      for (;;)
      {
        SelfGalleryView4012.c(this.a).setSelection(SelfGalleryView4012.a(this.a));
        return;
        SelfGalleryView4012.b(this.a, 0);
      }
    }
    HQCHApplication.mainActivity.pageGroup.goNextPage(SelfGalleryView4012.d(this.a).getSys_pageID(), ((SelfGalleryItem2Vo)SelfGalleryView4012.b(this.a).get(paramMessage.arg1)).getnPageId(), true, SelfGalleryView4012.e(this.a).getnPageType(), SelfGalleryView4012.e(this.a).getnPageModuleType());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012$PublicHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */