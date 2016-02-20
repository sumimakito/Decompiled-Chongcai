package cn.apppark.vertify.activity.free.typegallery;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.widget.Gallery;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.vertify.base.ImagePreview;
import java.util.ArrayList;

public class SelfGalleryView4011$PublicHandler
  extends Handler
{
  protected SelfGalleryView4011$PublicHandler(SelfGalleryView4011 paramSelfGalleryView4011) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      if (SelfGalleryView4011.a(this.a) < SelfGalleryView4011.b(this.a).size() - 1) {
        SelfGalleryView4011.a(this.a, 1);
      }
      for (;;)
      {
        SelfGalleryView4011.c(this.a).setSelection(SelfGalleryView4011.a(this.a));
        return;
        SelfGalleryView4011.b(this.a, 0);
      }
    }
    Intent localIntent = new Intent(HQCHApplication.mainActivity, ImagePreview.class);
    localIntent.putExtra("picname", ((SelfGalleryItem2Vo)SelfGalleryView4011.b(this.a).get(paramMessage.arg1 % SelfGalleryView4011.b(this.a).size())).getData_pic());
    HQCHApplication.mainActivity.startActivity(localIntent);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */