package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.activity.free.dyn.DynVideoWebView;

class SelfVideoView$1
  implements View.OnClickListener
{
  SelfVideoView$1(SelfVideoView paramSelfVideoView) {}
  
  public void onClick(View paramView)
  {
    if ((SelfVideoView.a(this.a).getData_videoFile() != null) && (!"".equals(SelfVideoView.a(this.a).getData_videoFile().trim())))
    {
      paramView = new Intent();
      paramView.putExtra("videourl", SelfVideoView.a(this.a).getData_videoFile());
      paramView.setClass(SelfVideoView.b(this.a), DynVideoWebView.class);
      SelfVideoView.b(this.a).startActivity(paramView);
      return;
    }
    HQCHApplication.getInstance().initToast("播放地址为空", 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfVideoView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */