package cn.apppark.vertify.activity.free.self;

import android.media.MediaPlayer;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;

class SelfMp3View$1
  implements View.OnClickListener
{
  SelfMp3View$1(SelfMp3View paramSelfMp3View) {}
  
  public void onClick(View paramView)
  {
    if (SelfMp3View.a(this.a))
    {
      if (SelfMp3View.b(this.a)) {
        break label104;
      }
      SelfMp3View.a(this.a, false);
      SelfMp3View.c(this.a);
      if (!SelfMp3View.d(this.a).getData_audioFile().startsWith("http://")) {
        break label81;
      }
      this.a.playUrl(SelfMp3View.d(this.a).getData_audioFile());
    }
    for (;;)
    {
      SelfMp3View.a(this.a, true);
      return;
      label81:
      this.a.playUrl(FunctionPublic.generateFilePath(SelfMp3View.d(this.a).getData_audioFile()));
    }
    label104:
    if (SelfMp3View.e(this.a).isPlaying())
    {
      this.a.pause();
      return;
    }
    this.a.play();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfMp3View$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */