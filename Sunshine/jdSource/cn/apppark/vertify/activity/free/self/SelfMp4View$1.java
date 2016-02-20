package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.activity.free.dyn.DynVideoWebView;

class SelfMp4View$1
  implements View.OnClickListener
{
  SelfMp4View$1(SelfMp4View paramSelfMp4View) {}
  
  public void onClick(View paramView)
  {
    if ((SelfMp4View.a(this.a).getData_videoFile() != null) && (!"".equals(SelfMp4View.a(this.a).getData_videoFile().trim())))
    {
      paramView = new Intent();
      if (SelfMp4View.a(this.a).getData_videoFile().toLowerCase().endsWith(".mp4"))
      {
        if (SelfMp4View.a(this.a).getData_videoFile().startsWith("http://")) {
          paramView.putExtra("videourl", SelfMp4View.a(this.a).getData_videoFile());
        }
        for (;;)
        {
          paramView.setClass(SelfMp4View.b(this.a), Mp4PlayerActivity.class);
          SelfMp4View.b(this.a).startActivity(paramView);
          return;
          paramView.putExtra("videourl", FunctionPublic.generateFilePath(SelfMp4View.a(this.a).getData_videoFile()));
        }
      }
      paramView.putExtra("videourl", SelfMp4View.a(this.a).getData_videoFile());
      paramView.setClass(SelfMp4View.b(this.a), DynVideoWebView.class);
      SelfMp4View.b(this.a).startActivity(paramView);
      return;
    }
    HQCHApplication.getInstance().initToast("播放地址为空", 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfMp4View$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */